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
        self._endpoint = try getEndpoint("starrocks", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addBackupPolicyWithOptions(_ request: AddBackupPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expireDays)) {
            body["ExpireDays"] = request.expireDays!;
        }
        if (!TeaUtils.Client.isUnset(request.hour)) {
            body["Hour"] = request.hour!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minute)) {
            body["Minute"] = request.minute!;
        }
        if (!TeaUtils.Client.isUnset(request.recurrenceType)) {
            body["RecurrenceType"] = request.recurrenceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recurrenceValues)) {
            body["RecurrenceValues"] = request.recurrenceValues ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.timeoutSeconds)) {
            body["TimeoutSeconds"] = request.timeoutSeconds!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddBackupPolicy",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/backupRestore/policy/add",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddBackupPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addBackupPolicy(_ request: AddBackupPolicyRequest) async throws -> AddBackupPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addBackupPolicyWithOptions(request as! AddBackupPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addGatewayWithOptions(_ request: AddGatewayRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.feNodeNumber)) {
            query["FeNodeNumber"] = request.feNodeNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayName)) {
            query["GatewayName"] = request.gatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddGateway",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/gateway/add",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addGateway(_ request: AddGatewayRequest) async throws -> AddGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addGatewayWithOptions(request as! AddGatewayRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroupWithOptions(_ request: ChangeResourceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newResourceGroupId)) {
            query["NewResourceGroupId"] = request.newResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResourceGroup",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceGroup/change",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroup(_ request: ChangeResourceGroupRequest) async throws -> ChangeResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await changeResourceGroupWithOptions(request as! ChangeResourceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkInventoryWithOptions(_ request: CheckInventoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckInventoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterInfo)) {
            query["ClusterInfo"] = request.clusterInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckInventory",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/check/inventory",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckInventoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkInventory(_ request: CheckInventoryRequest) async throws -> CheckInventoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await checkInventoryWithOptions(request as! CheckInventoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAgentResourceWithOptions(_ request: CreateAgentResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAgentResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.cu)) {
            query["Cu"] = request.cu!;
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specType)) {
            query["SpecType"] = request.specType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAgentResource",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/lifecycle/createAgentNodeGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAgentResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAgentResource(_ request: CreateAgentResourceRequest) async throws -> CreateAgentResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAgentResourceWithOptions(request as! CreateAgentResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceV1WithOptions(_ request: CreateInstanceV1Request, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceV1Response {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adminPassword)) {
            body["AdminPassword"] = request.adminPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentNodeGroup)) {
            body["AgentNodeGroup"] = request.agentNodeGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            body["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            body["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.backendNodeGroups)) {
            body["BackendNodeGroups"] = request.backendNodeGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dlfCatalogName)) {
            body["DlfCatalogName"] = request.dlfCatalogName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dlfCatalogType)) {
            body["DlfCatalogType"] = request.dlfCatalogType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.enableMultiAz)) {
            body["EnableMultiAz"] = request.enableMultiAz!;
        }
        if (!TeaUtils.Client.isUnset(request.encrypted)) {
            body["Encrypted"] = request.encrypted!;
        }
        if (!TeaUtils.Client.isUnset(request.frontendNodeGroups)) {
            body["FrontendNodeGroups"] = request.frontendNodeGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            body["GatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kmsKeyId)) {
            body["KmsKeyId"] = request.kmsKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.linkedRamUserName)) {
            body["LinkedRamUserName"] = request.linkedRamUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.observerNodeGroups)) {
            body["ObserverNodeGroups"] = request.observerNodeGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ossAccessingRoleName)) {
            body["OssAccessingRoleName"] = request.ossAccessingRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            body["PackageType"] = request.packageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            body["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            body["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalType)) {
            body["PrincipalType"] = request.principalType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            body["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ramUserId)) {
            body["RamUserId"] = request.ramUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runMode)) {
            body["RunMode"] = request.runMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vSwitches)) {
            body["VSwitches"] = request.vSwitches ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["Version"] = request.version ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstanceV1",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/cluster/createV1",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceV1Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceV1(_ request: CreateInstanceV1Request) async throws -> CreateInstanceV1Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createInstanceV1WithOptions(request as! CreateInstanceV1Request, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScalingRuleWithOptions(_ request: CreateScalingRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rule)) {
            query["Rule"] = request.rule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerType)) {
            query["TriggerType"] = request.triggerType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScalingRule",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/scalingRule/createScalingRule",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScalingRule(_ request: CreateScalingRuleRequest) async throws -> CreateScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createScalingRuleWithOptions(request as! CreateScalingRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceLinkedRoleWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceLinkedRoleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceLinkedRole",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/user/create_default_role",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceLinkedRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceLinkedRole() async throws -> CreateServiceLinkedRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceLinkedRoleWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackupWithOptions(_ request: DeleteBackupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBackupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupTaskId)) {
            query["BackupTaskId"] = request.backupTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBackup",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/backup/manage/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBackupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackup(_ request: DeleteBackupRequest) async throws -> DeleteBackupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteBackupWithOptions(request as! DeleteBackupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackupPolicyWithOptions(_ request: DeleteBackupPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["PolicyId"] = request.policyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBackupPolicy",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/backupRestore/policy/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBackupPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackupPolicy(_ request: DeleteBackupPolicyRequest) async throws -> DeleteBackupPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteBackupPolicyWithOptions(request as! DeleteBackupPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayWithOptions(_ request: DeleteGatewayRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGateway",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/gateway/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGateway(_ request: DeleteGatewayRequest) async throws -> DeleteGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteGatewayWithOptions(request as! DeleteGatewayRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInnerIpWhitelistGroupWithOptions(_ request: DeleteInnerIpWhitelistGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInnerIpWhitelistGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.innerIpWhitelistGroupId)) {
            body["InnerIpWhitelistGroupId"] = request.innerIpWhitelistGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInnerIpWhitelistGroup",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/securityGroup/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInnerIpWhitelistGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInnerIpWhitelistGroup(_ request: DeleteInnerIpWhitelistGroupRequest) async throws -> DeleteInnerIpWhitelistGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteInnerIpWhitelistGroupWithOptions(request as! DeleteInnerIpWhitelistGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScalingRuleWithOptions(_ request: DeleteScalingRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleId)) {
            query["ScalingRuleId"] = request.scalingRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerType)) {
            query["TriggerType"] = request.triggerType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteScalingRule",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/scalingRule/deleteScalingRule",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScalingRule(_ request: DeleteScalingRuleRequest) async throws -> DeleteScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteScalingRuleWithOptions(request as! DeleteScalingRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableZonesWithOptions(_ request: DescribeAvailableZonesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAvailableZonesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAvailableZones",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/zone/describeZones",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAvailableZonesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableZones(_ request: DescribeAvailableZonesRequest) async throws -> DescribeAvailableZonesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeAvailableZonesWithOptions(request as! DescribeAvailableZonesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPoliciesWithOptions(_ request: DescribeBackupPoliciesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupPoliciesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupPolicies",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/backupRestore/policy/describe",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupPoliciesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPolicies(_ request: DescribeBackupPoliciesRequest) async throws -> DescribeBackupPoliciesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeBackupPoliciesWithOptions(request as! DescribeBackupPoliciesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupsWithOptions(_ request: DescribeBackupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupTaskId)) {
            query["BackupTaskId"] = request.backupTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.statuses)) {
            query["Statuses"] = request.statuses ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timePeriodEndTime)) {
            query["TimePeriodEndTime"] = request.timePeriodEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.timePeriodStartTime)) {
            query["TimePeriodStartTime"] = request.timePeriodStartTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackups",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/backup/manage/describe",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackups(_ request: DescribeBackupsRequest) async throws -> DescribeBackupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeBackupsWithOptions(request as! DescribeBackupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeConfigHistoryWithOptions(_ request: DescribeConfigHistoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeConfigHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.effectStatuses)) {
            query["EffectStatuses"] = request.effectStatuses ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needTotal)) {
            query["NeedTotal"] = request.needTotal!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeConfigHistory",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/config/describeConfigHistory",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeConfigHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeConfigHistory(_ request: DescribeConfigHistoryRequest) async throws -> DescribeConfigHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeConfigHistoryWithOptions(request as! DescribeConfigHistoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEventNamesWithOptions(_ request: DescribeEventNamesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEventNamesResponse {
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
            "action": "DescribeEventNames",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/event/describeEventNames",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEventNamesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEventNames(_ request: DescribeEventNamesRequest) async throws -> DescribeEventNamesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeEventNamesWithOptions(request as! DescribeEventNamesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInnerIpWhitelistGroupsWithOptions(_ request: DescribeInnerIpWhitelistGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInnerIpWhitelistGroupsResponse {
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
            "action": "DescribeInnerIpWhitelistGroups",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/securityGroup/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInnerIpWhitelistGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInnerIpWhitelistGroups(_ request: DescribeInnerIpWhitelistGroupsRequest) async throws -> DescribeInnerIpWhitelistGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeInnerIpWhitelistGroupsWithOptions(request as! DescribeInnerIpWhitelistGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceConfigsWithOptions(_ request: DescribeInstanceConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowModify)) {
            query["AllowModify"] = request.allowModify!;
        }
        if (!TeaUtils.Client.isUnset(request.configKey)) {
            query["ConfigKey"] = request.configKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configType)) {
            query["ConfigType"] = request.configType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needTotal)) {
            query["NeedTotal"] = request.needTotal!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceConfigs",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/config/describeInstanceConfigs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceConfigs(_ request: DescribeInstanceConfigsRequest) async throws -> DescribeInstanceConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeInstanceConfigsWithOptions(request as! DescribeInstanceConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceDiagnosisResultWithOptions(_ request: DescribeInstanceDiagnosisResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceDiagnosisResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dimension)) {
            query["Dimension"] = request.dimension ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.reportDate)) {
            query["ReportDate"] = request.reportDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statuses)) {
            query["Statuses"] = request.statuses ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceDiagnosisResult",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/diagnosis/describe",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceDiagnosisResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceDiagnosisResult(_ request: DescribeInstanceDiagnosisResultRequest) async throws -> DescribeInstanceDiagnosisResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeInstanceDiagnosisResultWithOptions(request as! DescribeInstanceDiagnosisResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceMetaTokenWithOptions(_ request: DescribeInstanceMetaTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceMetaTokenResponse {
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
            "action": "DescribeInstanceMetaToken",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/migration/getMetaToken",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceMetaTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceMetaToken(_ request: DescribeInstanceMetaTokenRequest) async throws -> DescribeInstanceMetaTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeInstanceMetaTokenWithOptions(request as! DescribeInstanceMetaTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstancesWithOptions(_ tmpReq: DescribeInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeInstancesShrinkRequest = DescribeInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceStatus)) {
            query["InstanceStatus"] = request.instanceStatus ?? "";
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
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstances",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/describeInstances",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstances(_ request: DescribeInstancesRequest) async throws -> DescribeInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeInstancesWithOptions(request as! DescribeInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNodeGroupsWithOptions(_ request: DescribeNodeGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNodeGroupsResponse {
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
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentType)) {
            body["componentType"] = request.componentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["instanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupIds)) {
            body["nodeGroupIds"] = request.nodeGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupName)) {
            body["nodeGroupName"] = request.nodeGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNodeGroups",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/nodegroup/describeNodeGroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNodeGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNodeGroups(_ request: DescribeNodeGroupsRequest) async throws -> DescribeNodeGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeNodeGroupsWithOptions(request as! DescribeNodeGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/region/list",
            "method": "POST",
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
    public func describeResourceConstraintsWithOptions(_ request: DescribeResourceConstraintsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceConstraintsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.architecture)) {
            query["Architecture"] = request.architecture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            query["PackageType"] = request.packageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runMode)) {
            query["RunMode"] = request.runMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceConstraints",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/describeResourceConstraints",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceConstraintsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceConstraints(_ request: DescribeResourceConstraintsRequest) async throws -> DescribeResourceConstraintsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeResourceConstraintsWithOptions(request as! DescribeResourceConstraintsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSystemTimezoneWithOptions(_ request: DescribeSystemTimezoneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSystemTimezoneResponse {
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
            "action": "DescribeSystemTimezone",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/timezone/query",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSystemTimezoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSystemTimezone(_ request: DescribeSystemTimezoneRequest) async throws -> DescribeSystemTimezoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeSystemTimezoneWithOptions(request as! DescribeSystemTimezoneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTimeTriggerScalingRulesWithOptions(_ request: DescribeTimeTriggerScalingRulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTimeTriggerScalingRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTimeTriggerScalingRules",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/scalingRule/describeTimeTriggerScalingRules",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTimeTriggerScalingRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTimeTriggerScalingRules(_ request: DescribeTimeTriggerScalingRulesRequest) async throws -> DescribeTimeTriggerScalingRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeTimeTriggerScalingRulesWithOptions(request as! DescribeTimeTriggerScalingRulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableSSLConnectionWithOptions(_ request: DisableSSLConnectionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableSSLConnectionResponse {
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
            "action": "DisableSSLConnection",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/disableSSLConnection",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableSSLConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableSSLConnection(_ request: DisableSSLConnectionRequest) async throws -> DisableSSLConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableSSLConnectionWithOptions(request as! DisableSSLConnectionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableInternalSlbWithOptions(_ request: EnableInternalSlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableInternalSlbResponse {
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
            "action": "EnableInternalSlb",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/gateway/enableInternalSlb",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableInternalSlbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableInternalSlb(_ request: EnableInternalSlbRequest) async throws -> EnableInternalSlbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableInternalSlbWithOptions(request as! EnableInternalSlbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableMultiAzWithOptions(_ request: EnableMultiAzRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableMultiAzResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["instanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.observers)) {
            body["observers"] = request.observers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            body["promotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableMultiAz",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/lifecycle/enableMultiAz",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableMultiAzResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableMultiAz(_ request: EnableMultiAzRequest) async throws -> EnableMultiAzResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableMultiAzWithOptions(request as! EnableMultiAzRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSSLConnectionWithOptions(_ request: EnableSSLConnectionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableSSLConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customSSLCertificate)) {
            body["CustomSSLCertificate"] = request.customSSLCertificate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableCustom)) {
            body["EnableCustom"] = request.enableCustom!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewal)) {
            body["Renewal"] = request.renewal!;
        }
        if (!TeaUtils.Client.isUnset(request.sslKeyPassword)) {
            body["SslKeyPassword"] = request.sslKeyPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sslKeystorePassword)) {
            body["SslKeystorePassword"] = request.sslKeystorePassword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableSSLConnection",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/enableSSLConnection",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableSSLConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSSLConnection(_ request: EnableSSLConnectionRequest) async throws -> EnableSSLConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableSSLConnectionWithOptions(request as! EnableSSLConnectionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceFeatureGateWithOptions(_ request: GetInstanceFeatureGateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceFeatureGateResponse {
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
            "action": "GetInstanceFeatureGate",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/features/featureGate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceFeatureGateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceFeatureGate(_ request: GetInstanceFeatureGateRequest) async throws -> GetInstanceFeatureGateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceFeatureGateWithOptions(request as! GetInstanceFeatureGateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeGroupFeatureGateWithOptions(_ request: GetNodeGroupFeatureGateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeGroupFeatureGateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeGroupFeatureGate",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/features/nodeGroupFeatureGate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeGroupFeatureGateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeGroupFeatureGate(_ request: GetNodeGroupFeatureGateRequest) async throws -> GetNodeGroupFeatureGateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getNodeGroupFeatureGateWithOptions(request as! GetNodeGroupFeatureGateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isolateLeaderWithOptions(_ request: IsolateLeaderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> IsolateLeaderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolateLeader)) {
            query["IsolateLeader"] = request.isolateLeader!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IsolateLeader",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/gateway/isolateLeader",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IsolateLeaderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isolateLeader(_ request: IsolateLeaderRequest) async throws -> IsolateLeaderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await isolateLeaderWithOptions(request as! IsolateLeaderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayWithOptions(_ request: ListGatewayRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGatewayResponse {
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
            "action": "ListGateway",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/gateway/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGateway(_ request: ListGatewayRequest) async throws -> ListGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGatewayWithOptions(request as! ListGatewayRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationActivityWithOptions(_ request: ListOperationActivityRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOperationActivityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationId)) {
            query["OperationId"] = request.operationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOperationActivity",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/operation/listOperationActivity",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOperationActivityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationActivity(_ request: ListOperationActivityRequest) async throws -> ListOperationActivityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOperationActivityWithOptions(request as! ListOperationActivityRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationHistoryWithOptions(_ request: ListOperationHistoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOperationHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationId)) {
            query["OperationId"] = request.operationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationStatus)) {
            query["OperationStatus"] = request.operationStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            query["OperationType"] = request.operationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOperationHistory",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/operation/listOperationHistory",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOperationHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationHistory(_ request: ListOperationHistoryRequest) async throws -> ListOperationHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOperationHistoryWithOptions(request as! ListOperationHistoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSSLDetailsWithOptions(_ request: ListSSLDetailsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSSLDetailsResponse {
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
            "action": "ListSSLDetails",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/listSSLDetails",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSSLDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSSLDetails(_ request: ListSSLDetailsRequest) async throws -> ListSSLDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSSLDetailsWithOptions(request as! ListSSLDetailsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyChargeTypeWithOptions(_ request: ModifyChargeTypeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyChargeTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.billingInstanceIds)) {
            query["BillingInstanceIds"] = request.billingInstanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyChargeType",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/cluster/modifyChargeType",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyChargeTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyChargeType(_ request: ModifyChargeTypeRequest) async throws -> ModifyChargeTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyChargeTypeWithOptions(request as! ModifyChargeTypeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCuWithOptions(_ request: ModifyCuRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCuResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fastMode)) {
            query["FastMode"] = request.fastMode!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCu",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyCu",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCuResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCu(_ request: ModifyCuRequest) async throws -> ModifyCuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyCuWithOptions(request as! ModifyCuRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCuPreCheckWithOptions(_ request: ModifyCuPreCheckRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCuPreCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCuPreCheck",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyCuPreCheck",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCuPreCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCuPreCheck(_ request: ModifyCuPreCheckRequest) async throws -> ModifyCuPreCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyCuPreCheckWithOptions(request as! ModifyCuPreCheckRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskNumberWithOptions(_ request: ModifyDiskNumberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDiskNumberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fastMode)) {
            query["FastMode"] = request.fastMode!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDiskNumber",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyDiskNumber",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDiskNumberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskNumber(_ request: ModifyDiskNumberRequest) async throws -> ModifyDiskNumberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyDiskNumberWithOptions(request as! ModifyDiskNumberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskPerformanceLevelWithOptions(_ request: ModifyDiskPerformanceLevelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDiskPerformanceLevelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDiskPerformanceLevel",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyDiskPerformanceLevel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDiskPerformanceLevelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskPerformanceLevel(_ request: ModifyDiskPerformanceLevelRequest) async throws -> ModifyDiskPerformanceLevelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyDiskPerformanceLevelWithOptions(request as! ModifyDiskPerformanceLevelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskSizeWithOptions(_ request: ModifyDiskSizeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDiskSizeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fastMode)) {
            query["FastMode"] = request.fastMode!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDiskSize",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyDiskSize",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDiskSizeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskSize(_ request: ModifyDiskSizeRequest) async throws -> ModifyDiskSizeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyDiskSizeWithOptions(request as! ModifyDiskSizeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskTypeWithOptions(_ request: ModifyDiskTypeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDiskTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDiskType)) {
            query["TargetDiskType"] = request.targetDiskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPerformanceLevel)) {
            query["TargetPerformanceLevel"] = request.targetPerformanceLevel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDiskType",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyDiskType",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDiskTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskType(_ request: ModifyDiskTypeRequest) async throws -> ModifyDiskTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyDiskTypeWithOptions(request as! ModifyDiskTypeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostAliasWithOptions(_ request: ModifyHostAliasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHostAliasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAliases)) {
            body["hostAliases"] = request.hostAliases ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHostAlias",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/network/modifyHostAlias",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHostAliasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostAlias(_ request: ModifyHostAliasRequest) async throws -> ModifyHostAliasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyHostAliasWithOptions(request as! ModifyHostAliasRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceConfigWithOptions(_ request: ModifyInstanceConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addConfigList)) {
            query["AddConfigList"] = request.addConfigList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configList)) {
            query["ConfigList"] = request.configList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deleteConfigList)) {
            query["DeleteConfigList"] = request.deleteConfigList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            query["Reason"] = request.reason ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configsToAdd)) {
            body["configsToAdd"] = request.configsToAdd ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.configsToDelete)) {
            body["configsToDelete"] = request.configsToDelete ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.configsToUpdate)) {
            body["configsToUpdate"] = request.configsToUpdate ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.fastMode)) {
            body["fastMode"] = request.fastMode!;
        }
        if (!TeaUtils.Client.isUnset(request.restart)) {
            body["restart"] = request.restart!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceConfig",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/config/modifyInstanceConfig",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceConfig(_ request: ModifyInstanceConfigRequest) async throws -> ModifyInstanceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyInstanceConfigWithOptions(request as! ModifyInstanceConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceConfigPreCheckWithOptions(_ request: ModifyInstanceConfigPreCheckRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceConfigPreCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configsToAdd)) {
            body["configsToAdd"] = request.configsToAdd ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.configsToDelete)) {
            body["configsToDelete"] = request.configsToDelete ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.configsToUpdate)) {
            body["configsToUpdate"] = request.configsToUpdate ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceConfigPreCheck",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/config/modifyInstanceConfigPreCheck",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceConfigPreCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceConfigPreCheck(_ request: ModifyInstanceConfigPreCheckRequest) async throws -> ModifyInstanceConfigPreCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyInstanceConfigPreCheckWithOptions(request as! ModifyInstanceConfigPreCheckRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMaintainableTimeWithOptions(_ request: ModifyMaintainableTimeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyMaintainableTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maintainableTimePeriod)) {
            query["MaintainableTimePeriod"] = request.maintainableTimePeriod ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyMaintainableTime",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/modifyMaintainableTime",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyMaintainableTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMaintainableTime(_ request: ModifyMaintainableTimeRequest) async throws -> ModifyMaintainableTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyMaintainableTimeWithOptions(request as! ModifyMaintainableTimeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodeNumberWithOptions(_ request: ModifyNodeNumberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNodeNumberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parallelism)) {
            query["Parallelism"] = request.parallelism!;
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        if (!TeaUtils.Client.isUnset(request.terminationGracePeriodSeconds)) {
            query["TerminationGracePeriodSeconds"] = request.terminationGracePeriodSeconds!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNodeNumber",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyNodeNumber",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNodeNumberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodeNumber(_ request: ModifyNodeNumberRequest) async throws -> ModifyNodeNumberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyNodeNumberWithOptions(request as! ModifyNodeNumberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodeNumberPreCheckWithOptions(_ request: ModifyNodeNumberPreCheckRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNodeNumberPreCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNodeNumberPreCheck",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyNodeNumberPreCheck",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNodeNumberPreCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodeNumberPreCheck(_ request: ModifyNodeNumberPreCheckRequest) async throws -> ModifyNodeNumberPreCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyNodeNumberPreCheckWithOptions(request as! ModifyNodeNumberPreCheckRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScalingRuleWithOptions(_ request: ModifyScalingRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newTriggerType)) {
            query["NewTriggerType"] = request.newTriggerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oldTriggerType)) {
            query["OldTriggerType"] = request.oldTriggerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rule)) {
            query["Rule"] = request.rule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleId)) {
            query["ScalingRuleId"] = request.scalingRuleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyScalingRule",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/scalingRule/modifyScalingRule",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScalingRule(_ request: ModifyScalingRuleRequest) async throws -> ModifyScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyScalingRuleWithOptions(request as! ModifyScalingRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySpecTypeWithOptions(_ request: ModifySpecTypeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySpecTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fastMode)) {
            query["FastMode"] = request.fastMode!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetSpecType)) {
            query["TargetSpecType"] = request.targetSpecType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySpecType",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifySpecType",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySpecTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySpecType(_ request: ModifySpecTypeRequest) async throws -> ModifySpecTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifySpecTypeWithOptions(request as! ModifySpecTypeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySpecTypePreCheckWithOptions(_ request: ModifySpecTypePreCheckRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySpecTypePreCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetSpecType)) {
            query["TargetSpecType"] = request.targetSpecType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySpecTypePreCheck",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifySpecTypePreCheck",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySpecTypePreCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySpecTypePreCheck(_ request: ModifySpecTypePreCheckRequest) async throws -> ModifySpecTypePreCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifySpecTypePreCheckWithOptions(request as! ModifySpecTypePreCheckRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserPasswordWithOptions(_ request: ModifyUserPasswordRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyUserPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyUserPassword",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/password/modify",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyUserPasswordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserPassword(_ request: ModifyUserPasswordRequest) async throws -> ModifyUserPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyUserPasswordWithOptions(request as! ModifyUserPasswordRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEnableMultiAzPriceWithOptions(_ request: QueryEnableMultiAzPriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEnableMultiAzPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["instanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.observers)) {
            body["observers"] = request.observers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            body["promotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEnableMultiAzPrice",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/priceInquiry/enableMultiAz",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEnableMultiAzPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEnableMultiAzPrice(_ request: QueryEnableMultiAzPriceRequest) async throws -> QueryEnableMultiAzPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryEnableMultiAzPriceWithOptions(request as! QueryEnableMultiAzPriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMinorVersionWithOptions(_ request: QueryMinorVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMinorVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["Version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMinorVersion",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/queryAppDefineVersion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMinorVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMinorVersion(_ request: QueryMinorVersionRequest) async throws -> QueryMinorVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryMinorVersionWithOptions(request as! QueryMinorVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyChargeTypePriceWithOptions(_ request: QueryModifyChargeTypePriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryModifyChargeTypePriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.billingInstanceIds)) {
            query["BillingInstanceIds"] = request.billingInstanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryModifyChargeTypePrice",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/buy/query_modify_charge_type_price",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryModifyChargeTypePriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyChargeTypePrice(_ request: QueryModifyChargeTypePriceRequest) async throws -> QueryModifyChargeTypePriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryModifyChargeTypePriceWithOptions(request as! QueryModifyChargeTypePriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyCuPriceWithOptions(_ request: QueryModifyCuPriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryModifyCuPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryModifyCuPrice",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/priceInquiry/modifyCu",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryModifyCuPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyCuPrice(_ request: QueryModifyCuPriceRequest) async throws -> QueryModifyCuPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryModifyCuPriceWithOptions(request as! QueryModifyCuPriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyDiskNumberPriceWithOptions(_ request: QueryModifyDiskNumberPriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryModifyDiskNumberPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryModifyDiskNumberPrice",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/priceInquiry/modifyDiskNumber",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryModifyDiskNumberPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyDiskNumberPrice(_ request: QueryModifyDiskNumberPriceRequest) async throws -> QueryModifyDiskNumberPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryModifyDiskNumberPriceWithOptions(request as! QueryModifyDiskNumberPriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyDiskPerformanceLevelPriceWithOptions(_ request: QueryModifyDiskPerformanceLevelPriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryModifyDiskPerformanceLevelPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryModifyDiskPerformanceLevelPrice",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/priceInquiry/modifyDiskPerformanceLevel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryModifyDiskPerformanceLevelPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyDiskPerformanceLevelPrice(_ request: QueryModifyDiskPerformanceLevelPriceRequest) async throws -> QueryModifyDiskPerformanceLevelPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryModifyDiskPerformanceLevelPriceWithOptions(request as! QueryModifyDiskPerformanceLevelPriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyDiskSizePriceWithOptions(_ request: QueryModifyDiskSizePriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryModifyDiskSizePriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryModifyDiskSizePrice",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/priceInquiry/modifyDiskSize",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryModifyDiskSizePriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyDiskSizePrice(_ request: QueryModifyDiskSizePriceRequest) async throws -> QueryModifyDiskSizePriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryModifyDiskSizePriceWithOptions(request as! QueryModifyDiskSizePriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyDiskTypePriceWithOptions(_ request: QueryModifyDiskTypePriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryModifyDiskTypePriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDiskType)) {
            query["TargetDiskType"] = request.targetDiskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPerformanceLevel)) {
            query["TargetPerformanceLevel"] = request.targetPerformanceLevel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryModifyDiskTypePrice",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/priceInquiry/modifyDiskType",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryModifyDiskTypePriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyDiskTypePrice(_ request: QueryModifyDiskTypePriceRequest) async throws -> QueryModifyDiskTypePriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryModifyDiskTypePriceWithOptions(request as! QueryModifyDiskTypePriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyNodeNumberPriceWithOptions(_ request: QueryModifyNodeNumberPriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryModifyNodeNumberPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryModifyNodeNumberPrice",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/priceInquiry/modifyNodeNumber",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryModifyNodeNumberPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifyNodeNumberPrice(_ request: QueryModifyNodeNumberPriceRequest) async throws -> QueryModifyNodeNumberPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryModifyNodeNumberPriceWithOptions(request as! QueryModifyNodeNumberPriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifySpecTypePriceWithOptions(_ request: QueryModifySpecTypePriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryModifySpecTypePriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetSpecType)) {
            query["TargetSpecType"] = request.targetSpecType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryModifySpecTypePrice",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/priceInquiry/modifySpecType",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryModifySpecTypePriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryModifySpecTypePrice(_ request: QueryModifySpecTypePriceRequest) async throws -> QueryModifySpecTypePriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryModifySpecTypePriceWithOptions(request as! QueryModifySpecTypePriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPriceV1WithOptions(_ request: QueryPriceV1Request, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPriceV1Response {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentNodeGroup)) {
            body["AgentNodeGroup"] = request.agentNodeGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.backendNodeGroups)) {
            body["BackendNodeGroups"] = request.backendNodeGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.frontendNodeGroups)) {
            body["FrontendNodeGroups"] = request.frontendNodeGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.observerNodeGroups)) {
            body["ObserverNodeGroups"] = request.observerNodeGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            body["PackageType"] = request.packageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            body["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            body["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            body["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runMode)) {
            body["RunMode"] = request.runMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPriceV1",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/price/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPriceV1Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPriceV1(_ request: QueryPriceV1Request) async throws -> QueryPriceV1Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryPriceV1WithOptions(request as! QueryPriceV1Request, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRefundPriceWithOptions(_ request: QueryRefundPriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRefundPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billingInstanceIds)) {
            query["billingInstanceIds"] = request.billingInstanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["instanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRefundPrice",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/buy/queryRefundPrice",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRefundPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRefundPrice(_ request: QueryRefundPriceRequest) async throws -> QueryRefundPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryRefundPriceWithOptions(request as! QueryRefundPriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRenewPriceWithOptions(_ request: QueryRenewPriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRenewPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billingInstanceIds)) {
            query["BillingInstanceIds"] = request.billingInstanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRenewPrice",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/price/renew",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRenewPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRenewPrice(_ request: QueryRenewPriceRequest) async throws -> QueryRenewPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryRenewPriceWithOptions(request as! QueryRenewPriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnpaidOrderWithOptions(_ request: QueryUnpaidOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUnpaidOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billingInstanceId)) {
            query["BillingInstanceId"] = request.billingInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUnpaidOrder",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/order/queryUnpaidOrder",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUnpaidOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnpaidOrder(_ request: QueryUnpaidOrderRequest) async throws -> QueryUnpaidOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryUnpaidOrderWithOptions(request as! QueryUnpaidOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUpgradableVersionsWithOptions(_ request: QueryUpgradableVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUpgradableVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minor)) {
            query["Minor"] = request.minor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUpgradableVersions",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/queryUpgradableVersions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUpgradableVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUpgradableVersions(_ request: QueryUpgradableVersionsRequest) async throws -> QueryUpgradableVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryUpgradableVersionsWithOptions(request as! QueryUpgradableVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootECSWithOptions(_ request: RebootECSRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RebootECSResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            query["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rebootTime)) {
            query["RebootTime"] = request.rebootTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebootECS",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/event/rebootEcs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebootECSResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootECS(_ request: RebootECSRequest) async throws -> RebootECSResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await rebootECSWithOptions(request as! RebootECSRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstanceWithOptions(_ request: ReleaseInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseInstanceResponse {
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
            "action": "ReleaseInstance",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/cluster/release",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstance(_ request: ReleaseInstanceRequest) async throws -> ReleaseInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await releaseInstanceWithOptions(request as! ReleaseInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewInstanceWithOptions(_ request: RenewInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billingInstanceIds)) {
            query["BillingInstanceIds"] = request.billingInstanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewInstance",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/order/renew_instance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewInstance(_ request: RenewInstanceRequest) async throws -> RenewInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await renewInstanceWithOptions(request as! RenewInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartInstanceWithOptions(_ request: RestartInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fastMode)) {
            query["FastMode"] = request.fastMode!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartInstance",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/restartCluster",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartInstance(_ request: RestartInstanceRequest) async throws -> RestartInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await restartInstanceWithOptions(request as! RestartInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartNodeGroupWithOptions(_ request: RestartNodeGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartNodeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fastMode)) {
            query["FastMode"] = request.fastMode!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartNodeGroup",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/nodegroup/restart",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartNodeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartNodeGroup(_ request: RestartNodeGroupRequest) async throws -> RestartNodeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await restartNodeGroupWithOptions(request as! RestartNodeGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartNodesWithOptions(_ request: RestartNodesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.restartNodeGroups)) {
            body["RestartNodeGroups"] = request.restartNodeGroups ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartNodes",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/restart/restart",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartNodes(_ request: RestartNodesRequest) async throws -> RestartNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await restartNodesWithOptions(request as! RestartNodesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restoreInstanceWithOptions(_ request: RestoreInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestoreInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adminPassword)) {
            body["AdminPassword"] = request.adminPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            body["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.backupTaskId)) {
            body["BackupTaskId"] = request.backupTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            body["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            body["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vSwitches)) {
            body["VSwitches"] = request.vSwitches ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestoreInstance",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/restore/restoreInstance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestoreInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restoreInstance(_ request: RestoreInstanceRequest) async throws -> RestoreInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await restoreInstanceWithOptions(request as! RestoreInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeInstanceWithOptions(_ request: ResumeInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeInstanceResponse {
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
            "action": "ResumeInstance",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/lifecycle/resumeInstance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeInstance(_ request: ResumeInstanceRequest) async throws -> ResumeInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resumeInstanceWithOptions(request as! ResumeInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackConfigModificationWithOptions(_ request: RollbackConfigModificationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RollbackConfigModificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configHistoryId)) {
            query["ConfigHistoryId"] = request.configHistoryId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restart)) {
            query["Restart"] = request.restart!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RollbackConfigModification",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/config/rollbackConfigModification",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RollbackConfigModificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackConfigModification(_ request: RollbackConfigModificationRequest) async throws -> RollbackConfigModificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await rollbackConfigModificationWithOptions(request as! RollbackConfigModificationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchActiveStandbyZonesWithOptions(_ request: SwitchActiveStandbyZonesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchActiveStandbyZonesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetZoneId)) {
            query["TargetZoneId"] = request.targetZoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchActiveStandbyZones",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/recovery/switchZones",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchActiveStandbyZonesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchActiveStandbyZones(_ request: SwitchActiveStandbyZonesRequest) async throws -> SwitchActiveStandbyZonesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await switchActiveStandbyZonesWithOptions(request as! SwitchActiveStandbyZonesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/tags",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResources(_ request: TagResourcesRequest) async throws -> TagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await tagResourcesWithOptions(request as! TagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func toggleAutoMinorVersionUpgradeWithOptions(_ request: ToggleAutoMinorVersionUpgradeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ToggleAutoMinorVersionUpgradeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoUpgrade)) {
            query["AutoUpgrade"] = request.autoUpgrade!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ToggleAutoMinorVersionUpgrade",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/toggleAutoMinorVersionUpgrade",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ToggleAutoMinorVersionUpgradeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func toggleAutoMinorVersionUpgrade(_ request: ToggleAutoMinorVersionUpgradeRequest) async throws -> ToggleAutoMinorVersionUpgradeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await toggleAutoMinorVersionUpgradeWithOptions(request as! ToggleAutoMinorVersionUpgradeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func togglePublicSlbWithOptions(_ request: TogglePublicSlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TogglePublicSlbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enablePublicSlb)) {
            query["EnablePublicSlb"] = request.enablePublicSlb!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TogglePublicSlb",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/gateway/togglePublicSlb",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TogglePublicSlbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func togglePublicSlb(_ request: TogglePublicSlbRequest) async throws -> TogglePublicSlbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await togglePublicSlbWithOptions(request as! TogglePublicSlbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unTagResourcesWithOptions(_ tmpReq: UnTagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UnTagResourcesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UnTagResourcesShrinkRequest = UnTagResourcesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resourceId)) {
            request.resourceIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceId, "ResourceId", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tagKey)) {
            request.tagKeyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tagKey, "TagKey", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdShrink)) {
            query["ResourceId"] = request.resourceIdShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyShrink)) {
            query["TagKey"] = request.tagKeyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnTagResources",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/tags",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unTagResources(_ request: UnTagResourcesRequest) async throws -> UnTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await unTagResourcesWithOptions(request as! UnTagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBackupWithOptions(_ request: UpdateBackupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateBackupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupTaskId)) {
            body["backupTaskId"] = request.backupTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateBackup",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/backup/manage/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateBackupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBackup(_ request: UpdateBackupRequest) async throws -> UpdateBackupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateBackupWithOptions(request as! UpdateBackupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBackupPolicyWithOptions(_ request: UpdateBackupPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expireDays)) {
            body["ExpireDays"] = request.expireDays!;
        }
        if (!TeaUtils.Client.isUnset(request.hour)) {
            body["Hour"] = request.hour!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minute)) {
            body["Minute"] = request.minute!;
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recurrenceValues)) {
            body["RecurrenceValues"] = request.recurrenceValues ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.timeoutSeconds)) {
            body["TimeoutSeconds"] = request.timeoutSeconds!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateBackupPolicy",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/backupRestore/policy/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateBackupPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBackupPolicy(_ request: UpdateBackupPolicyRequest) async throws -> UpdateBackupPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateBackupPolicyWithOptions(request as! UpdateBackupPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayWithOptions(_ request: UpdateGatewayRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.feNodeNumber)) {
            query["FeNodeNumber"] = request.feNodeNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayName)) {
            query["GatewayName"] = request.gatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGateway",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/gateway/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGateway(_ request: UpdateGatewayRequest) async throws -> UpdateGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateGatewayWithOptions(request as! UpdateGatewayRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInnerIpWhitelistGroupWithOptions(_ request: UpdateInnerIpWhitelistGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInnerIpWhitelistGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cidrIpList)) {
            body["CidrIpList"] = request.cidrIpList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.innerIpWhitelistGroupId)) {
            body["InnerIpWhitelistGroupId"] = request.innerIpWhitelistGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInnerIpWhitelistGroup",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/securityGroup/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInnerIpWhitelistGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInnerIpWhitelistGroup(_ request: UpdateInnerIpWhitelistGroupRequest) async throws -> UpdateInnerIpWhitelistGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateInnerIpWhitelistGroupWithOptions(request as! UpdateInnerIpWhitelistGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceNameWithOptions(_ request: UpdateInstanceNameRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterName)) {
            query["ClusterName"] = request.clusterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstanceName",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/cluster/update_name",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceName(_ request: UpdateInstanceNameRequest) async throws -> UpdateInstanceNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateInstanceNameWithOptions(request as! UpdateInstanceNameRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNodeGroupDescriptionWithOptions(_ request: UpdateNodeGroupDescriptionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNodeGroupDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.xAcsRamAuthContext)) {
            query["X-Acs-Ram-Auth-Context"] = request.xAcsRamAuthContext ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNodeGroupDescription",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/nodegroup/updateDescription",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNodeGroupDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNodeGroupDescription(_ request: UpdateNodeGroupDescriptionRequest) async throws -> UpdateNodeGroupDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateNodeGroupDescriptionWithOptions(request as! UpdateNodeGroupDescriptionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePublicNetworkStatusWithOptions(_ request: UpdatePublicNetworkStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePublicNetworkStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentType)) {
            query["ComponentType"] = request.componentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicNetworkEnabled)) {
            query["PublicNetworkEnabled"] = request.publicNetworkEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePublicNetworkStatus",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/network/updatePublicNetworkStatus",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePublicNetworkStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePublicNetworkStatus(_ request: UpdatePublicNetworkStatusRequest) async throws -> UpdatePublicNetworkStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePublicNetworkStatusWithOptions(request as! UpdatePublicNetworkStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeVersionWithOptions(_ request: UpgradeVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fastMode)) {
            query["FastMode"] = request.fastMode!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minor)) {
            query["Minor"] = request.minor!;
        }
        if (!TeaUtils.Client.isUnset(request.targetVersion)) {
            query["TargetVersion"] = request.targetVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeVersion",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/upgradeVersion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeVersion(_ request: UpgradeVersionRequest) async throws -> UpgradeVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await upgradeVersionWithOptions(request as! UpgradeVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
