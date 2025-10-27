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
        self._endpoint = try getEndpoint("hitsdb", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResourceGroup",
            "version": "2020-06-15",
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
    public func checkLdpsColumnarIndexStatusWithOptions(_ request: CheckLdpsColumnarIndexStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckLdpsColumnarIndexStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckLdpsColumnarIndexStatus",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckLdpsColumnarIndexStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkLdpsColumnarIndexStatus(_ request: CheckLdpsColumnarIndexStatusRequest) async throws -> CheckLdpsColumnarIndexStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkLdpsColumnarIndexStatusWithOptions(request as! CheckLdpsColumnarIndexStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAutoScalingConfigWithOptions(_ tmpReq: CreateAutoScalingConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAutoScalingConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAutoScalingConfigShrinkRequest = CreateAutoScalingConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.scaleRuleList)) {
            request.scaleRuleListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scaleRuleList, "ScaleRuleList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configName)) {
            query["ConfigName"] = request.configName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectiveTimeEnd)) {
            query["EffectiveTimeEnd"] = request.effectiveTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectiveTimeStart)) {
            query["EffectiveTimeStart"] = request.effectiveTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodesMax)) {
            query["NodesMax"] = request.nodesMax!;
        }
        if (!TeaUtils.Client.isUnset(request.nodesMin)) {
            query["NodesMin"] = request.nodesMin!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleRuleListShrink)) {
            query["ScaleRuleList"] = request.scaleRuleListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scaleType)) {
            query["ScaleType"] = request.scaleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specId)) {
            query["SpecId"] = request.specId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAutoScalingConfig",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAutoScalingConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAutoScalingConfig(_ request: CreateAutoScalingConfigRequest) async throws -> CreateAutoScalingConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAutoScalingConfigWithOptions(request as! CreateAutoScalingConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAutoScalingRuleWithOptions(_ request: CreateAutoScalingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAutoScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configId)) {
            query["ConfigId"] = request.configId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.observationWindow)) {
            query["ObservationWindow"] = request.observationWindow!;
        }
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            query["OperationType"] = request.operationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scaleInStep)) {
            query["ScaleInStep"] = request.scaleInStep!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleOutStep)) {
            query["ScaleOutStep"] = request.scaleOutStep!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.silenceTime)) {
            query["SilenceTime"] = request.silenceTime!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetMetric)) {
            query["TargetMetric"] = request.targetMetric ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetNodes)) {
            query["TargetNodes"] = request.targetNodes!;
        }
        if (!TeaUtils.Client.isUnset(request.thresholdLower)) {
            query["ThresholdLower"] = request.thresholdLower!;
        }
        if (!TeaUtils.Client.isUnset(request.thresholdUpper)) {
            query["ThresholdUpper"] = request.thresholdUpper!;
        }
        if (!TeaUtils.Client.isUnset(request.triggerCronExpr)) {
            query["TriggerCronExpr"] = request.triggerCronExpr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAutoScalingRule",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAutoScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAutoScalingRule(_ request: CreateAutoScalingRuleRequest) async throws -> CreateAutoScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAutoScalingRuleWithOptions(request as! CreateAutoScalingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLdpsComputeGroupWithOptions(_ request: CreateLdpsComputeGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLdpsComputeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.properties)) {
            query["Properties"] = request.properties ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLdpsComputeGroup",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLdpsComputeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLdpsComputeGroup(_ request: CreateLdpsComputeGroupRequest) async throws -> CreateLdpsComputeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLdpsComputeGroupWithOptions(request as! CreateLdpsComputeGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLindormInstanceWithOptions(_ request: CreateLindormInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLindormInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arbiterVSwitchId)) {
            query["ArbiterVSwitchId"] = request.arbiterVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arbiterZoneId)) {
            query["ArbiterZoneId"] = request.arbiterZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.archVersion)) {
            query["ArchVersion"] = request.archVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRenewDuration)) {
            query["AutoRenewDuration"] = request.autoRenewDuration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRenewal)) {
            query["AutoRenewal"] = request.autoRenewal!;
        }
        if (!TeaUtils.Client.isUnset(request.coldStorage)) {
            query["ColdStorage"] = request.coldStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.coreSingleStorage)) {
            query["CoreSingleStorage"] = request.coreSingleStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.coreSpec)) {
            query["CoreSpec"] = request.coreSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskCategory)) {
            query["DiskCategory"] = request.diskCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filestoreNum)) {
            query["FilestoreNum"] = request.filestoreNum!;
        }
        if (!TeaUtils.Client.isUnset(request.filestoreSpec)) {
            query["FilestoreSpec"] = request.filestoreSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceAlias)) {
            query["InstanceAlias"] = request.instanceAlias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceStorage)) {
            query["InstanceStorage"] = request.instanceStorage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lindormNum)) {
            query["LindormNum"] = request.lindormNum!;
        }
        if (!TeaUtils.Client.isUnset(request.lindormSpec)) {
            query["LindormSpec"] = request.lindormSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logDiskCategory)) {
            query["LogDiskCategory"] = request.logDiskCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logNum)) {
            query["LogNum"] = request.logNum!;
        }
        if (!TeaUtils.Client.isUnset(request.logSingleStorage)) {
            query["LogSingleStorage"] = request.logSingleStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.logSpec)) {
            query["LogSpec"] = request.logSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ltsNum)) {
            query["LtsNum"] = request.ltsNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ltsSpec)) {
            query["LtsSpec"] = request.ltsSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.multiZoneCombination)) {
            query["MultiZoneCombination"] = request.multiZoneCombination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryVSwitchId)) {
            query["PrimaryVSwitchId"] = request.primaryVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryZoneId)) {
            query["PrimaryZoneId"] = request.primaryZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.solrNum)) {
            query["SolrNum"] = request.solrNum!;
        }
        if (!TeaUtils.Client.isUnset(request.solrSpec)) {
            query["SolrSpec"] = request.solrSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standbyVSwitchId)) {
            query["StandbyVSwitchId"] = request.standbyVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standbyZoneId)) {
            query["StandbyZoneId"] = request.standbyZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamNum)) {
            query["StreamNum"] = request.streamNum!;
        }
        if (!TeaUtils.Client.isUnset(request.streamSpec)) {
            query["StreamSpec"] = request.streamSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tsdbNum)) {
            query["TsdbNum"] = request.tsdbNum!;
        }
        if (!TeaUtils.Client.isUnset(request.tsdbSpec)) {
            query["TsdbSpec"] = request.tsdbSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.VPCId)) {
            query["VPCId"] = request.VPCId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLindormInstance",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLindormInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLindormInstance(_ request: CreateLindormInstanceRequest) async throws -> CreateLindormInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLindormInstanceWithOptions(request as! CreateLindormInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLindormV2InstanceWithOptions(_ request: CreateLindormV2InstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLindormV2InstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arbiterVSwitchId)) {
            query["ArbiterVSwitchId"] = request.arbiterVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arbiterZoneId)) {
            query["ArbiterZoneId"] = request.arbiterZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.archVersion)) {
            query["ArchVersion"] = request.archVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRenewDuration)) {
            query["AutoRenewDuration"] = request.autoRenewDuration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRenewal)) {
            query["AutoRenewal"] = request.autoRenewal!;
        }
        if (!TeaUtils.Client.isUnset(request.capacityStorageSize)) {
            query["CapacityStorageSize"] = request.capacityStorageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.cloudStorageSize)) {
            query["CloudStorageSize"] = request.cloudStorageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.cloudStorageType)) {
            query["CloudStorageType"] = request.cloudStorageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterMode)) {
            query["ClusterMode"] = request.clusterMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterPattern)) {
            query["ClusterPattern"] = request.clusterPattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.enableCapacityStorage)) {
            query["EnableCapacityStorage"] = request.enableCapacityStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.engineList)) {
            query["EngineList"] = request.engineList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceAlias)) {
            query["InstanceAlias"] = request.instanceAlias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryVSwitchId)) {
            query["PrimaryVSwitchId"] = request.primaryVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryZoneId)) {
            query["PrimaryZoneId"] = request.primaryZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standbyVSwitchId)) {
            query["StandbyVSwitchId"] = request.standbyVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standbyZoneId)) {
            query["StandbyZoneId"] = request.standbyZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.VPCId)) {
            query["VPCId"] = request.VPCId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLindormV2Instance",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLindormV2InstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLindormV2Instance(_ request: CreateLindormV2InstanceRequest) async throws -> CreateLindormV2InstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLindormV2InstanceWithOptions(request as! CreateLindormV2InstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAutoScalingConfigWithOptions(_ request: DeleteAutoScalingConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAutoScalingConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configId)) {
            query["ConfigId"] = request.configId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAutoScalingConfig",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAutoScalingConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAutoScalingConfig(_ request: DeleteAutoScalingConfigRequest) async throws -> DeleteAutoScalingConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAutoScalingConfigWithOptions(request as! DeleteAutoScalingConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAutoScalingRuleWithOptions(_ request: DeleteAutoScalingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAutoScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configId)) {
            query["ConfigId"] = request.configId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAutoScalingRule",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAutoScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAutoScalingRule(_ request: DeleteAutoScalingRuleRequest) async throws -> DeleteAutoScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAutoScalingRuleWithOptions(request as! DeleteAutoScalingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomResourceWithOptions(_ request: DeleteCustomResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCustomResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCustomResource",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCustomResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomResource(_ request: DeleteCustomResourceRequest) async throws -> DeleteCustomResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCustomResourceWithOptions(request as! DeleteCustomResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLdpsComputeGroupWithOptions(_ request: DeleteLdpsComputeGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLdpsComputeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLdpsComputeGroup",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLdpsComputeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLdpsComputeGroup(_ request: DeleteLdpsComputeGroupRequest) async throws -> DeleteLdpsComputeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLdpsComputeGroupWithOptions(request as! DeleteLdpsComputeGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployLdpsSemiManagedComponentWithOptions(_ request: DeployLdpsSemiManagedComponentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployLdpsSemiManagedComponentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentName)) {
            query["ComponentName"] = request.componentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeployLdpsSemiManagedComponent",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeployLdpsSemiManagedComponentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployLdpsSemiManagedComponent(_ request: DeployLdpsSemiManagedComponentRequest) async throws -> DeployLdpsSemiManagedComponentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deployLdpsSemiManagedComponentWithOptions(request as! DeployLdpsSemiManagedComponentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2020-06-15",
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
    public func getAutoScalingConfigWithOptions(_ request: GetAutoScalingConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAutoScalingConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configId)) {
            query["ConfigId"] = request.configId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAutoScalingConfig",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAutoScalingConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAutoScalingConfig(_ request: GetAutoScalingConfigRequest) async throws -> GetAutoScalingConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAutoScalingConfigWithOptions(request as! GetAutoScalingConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAutoScalingRuleWithOptions(_ request: GetAutoScalingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAutoScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configId)) {
            query["ConfigId"] = request.configId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAutoScalingRule",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAutoScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAutoScalingRule(_ request: GetAutoScalingRuleRequest) async throws -> GetAutoScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAutoScalingRuleWithOptions(request as! GetAutoScalingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClientSourceIpWithOptions(_ request: GetClientSourceIpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClientSourceIpResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClientSourceIp",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClientSourceIpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClientSourceIp(_ request: GetClientSourceIpRequest) async throws -> GetClientSourceIpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getClientSourceIpWithOptions(request as! GetClientSourceIpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEngineDefaultAuthWithOptions(_ request: GetEngineDefaultAuthRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEngineDefaultAuthResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEngineDefaultAuth",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEngineDefaultAuthResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEngineDefaultAuth(_ request: GetEngineDefaultAuthRequest) async throws -> GetEngineDefaultAuthResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEngineDefaultAuthWithOptions(request as! GetEngineDefaultAuthRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceIpWhiteListWithOptions(_ request: GetInstanceIpWhiteListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceIpWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceIpWhiteList",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceIpWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceIpWhiteList(_ request: GetInstanceIpWhiteListRequest) async throws -> GetInstanceIpWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceIpWhiteListWithOptions(request as! GetInstanceIpWhiteListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceSecurityGroupsWithOptions(_ request: GetInstanceSecurityGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceSecurityGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceSecurityGroups",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceSecurityGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceSecurityGroups(_ request: GetInstanceSecurityGroupsRequest) async throws -> GetInstanceSecurityGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceSecurityGroupsWithOptions(request as! GetInstanceSecurityGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLdpsComputeGroupWithOptions(_ request: GetLdpsComputeGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLdpsComputeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLdpsComputeGroup",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLdpsComputeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLdpsComputeGroup(_ request: GetLdpsComputeGroupRequest) async throws -> GetLdpsComputeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLdpsComputeGroupWithOptions(request as! GetLdpsComputeGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLdpsNamespacedQuotaWithOptions(_ request: GetLdpsNamespacedQuotaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLdpsNamespacedQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLdpsNamespacedQuota",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLdpsNamespacedQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLdpsNamespacedQuota(_ request: GetLdpsNamespacedQuotaRequest) async throws -> GetLdpsNamespacedQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLdpsNamespacedQuotaWithOptions(request as! GetLdpsNamespacedQuotaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLdpsResourceCostWithOptions(_ request: GetLdpsResourceCostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLdpsResourceCostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLdpsResourceCost",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLdpsResourceCostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLdpsResourceCost(_ request: GetLdpsResourceCostRequest) async throws -> GetLdpsResourceCostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLdpsResourceCostWithOptions(request as! GetLdpsResourceCostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormEngineConfigWithOptions(_ request: GetLindormEngineConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLindormEngineConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.engineType)) {
            query["EngineType"] = request.engineType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLindormEngineConfig",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLindormEngineConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormEngineConfig(_ request: GetLindormEngineConfigRequest) async throws -> GetLindormEngineConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLindormEngineConfigWithOptions(request as! GetLindormEngineConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormFsUsedDetailWithOptions(_ request: GetLindormFsUsedDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLindormFsUsedDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLindormFsUsedDetail",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLindormFsUsedDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormFsUsedDetail(_ request: GetLindormFsUsedDetailRequest) async throws -> GetLindormFsUsedDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLindormFsUsedDetailWithOptions(request as! GetLindormFsUsedDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormInstanceWithOptions(_ request: GetLindormInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLindormInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLindormInstance",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLindormInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormInstance(_ request: GetLindormInstanceRequest) async throws -> GetLindormInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLindormInstanceWithOptions(request as! GetLindormInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormInstanceEngineListWithOptions(_ request: GetLindormInstanceEngineListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLindormInstanceEngineListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLindormInstanceEngineList",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLindormInstanceEngineListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormInstanceEngineList(_ request: GetLindormInstanceEngineListRequest) async throws -> GetLindormInstanceEngineListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLindormInstanceEngineListWithOptions(request as! GetLindormInstanceEngineListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormInstanceListWithOptions(_ request: GetLindormInstanceListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLindormInstanceListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryStr)) {
            query["QueryStr"] = request.queryStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["ServiceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportEngine)) {
            query["SupportEngine"] = request.supportEngine!;
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLindormInstanceList",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLindormInstanceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormInstanceList(_ request: GetLindormInstanceListRequest) async throws -> GetLindormInstanceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLindormInstanceListWithOptions(request as! GetLindormInstanceListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2InstanceWithOptions(_ request: GetLindormV2InstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLindormV2InstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLindormV2Instance",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLindormV2InstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2Instance(_ request: GetLindormV2InstanceRequest) async throws -> GetLindormV2InstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLindormV2InstanceWithOptions(request as! GetLindormV2InstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2InstanceDetailsWithOptions(_ request: GetLindormV2InstanceDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLindormV2InstanceDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLindormV2InstanceDetails",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLindormV2InstanceDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2InstanceDetails(_ request: GetLindormV2InstanceDetailsRequest) async throws -> GetLindormV2InstanceDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLindormV2InstanceDetailsWithOptions(request as! GetLindormV2InstanceDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2InstanceEngineListWithOptions(_ request: GetLindormV2InstanceEngineListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLindormV2InstanceEngineListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLindormV2InstanceEngineList",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLindormV2InstanceEngineListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2InstanceEngineList(_ request: GetLindormV2InstanceEngineListRequest) async throws -> GetLindormV2InstanceEngineListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLindormV2InstanceEngineListWithOptions(request as! GetLindormV2InstanceEngineListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2InstanceForTerraformWithOptions(_ request: GetLindormV2InstanceForTerraformRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLindormV2InstanceForTerraformResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLindormV2InstanceForTerraform",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLindormV2InstanceForTerraformResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2InstanceForTerraform(_ request: GetLindormV2InstanceForTerraformRequest) async throws -> GetLindormV2InstanceForTerraformResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLindormV2InstanceForTerraformWithOptions(request as! GetLindormV2InstanceForTerraformRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2InstanceSecurityGroupsWithOptions(_ request: GetLindormV2InstanceSecurityGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLindormV2InstanceSecurityGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLindormV2InstanceSecurityGroups",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLindormV2InstanceSecurityGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2InstanceSecurityGroups(_ request: GetLindormV2InstanceSecurityGroupsRequest) async throws -> GetLindormV2InstanceSecurityGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLindormV2InstanceSecurityGroupsWithOptions(request as! GetLindormV2InstanceSecurityGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2StorageUsageWithOptions(_ request: GetLindormV2StorageUsageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLindormV2StorageUsageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLindormV2StorageUsage",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLindormV2StorageUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2StorageUsage(_ request: GetLindormV2StorageUsageRequest) async throws -> GetLindormV2StorageUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLindormV2StorageUsageWithOptions(request as! GetLindormV2StorageUsageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2StreamEngineInfoWithOptions(_ request: GetLindormV2StreamEngineInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLindormV2StreamEngineInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLindormV2StreamEngineInfo",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLindormV2StreamEngineInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLindormV2StreamEngineInfo(_ request: GetLindormV2StreamEngineInfoRequest) async throws -> GetLindormV2StreamEngineInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLindormV2StreamEngineInfoWithOptions(request as! GetLindormV2StreamEngineInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoScalingConfigsWithOptions(_ request: ListAutoScalingConfigsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAutoScalingConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAutoScalingConfigs",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAutoScalingConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoScalingConfigs(_ request: ListAutoScalingConfigsRequest) async throws -> ListAutoScalingConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAutoScalingConfigsWithOptions(request as! ListAutoScalingConfigsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoScalingRecordsWithOptions(_ request: ListAutoScalingRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAutoScalingRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAutoScalingRecords",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAutoScalingRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoScalingRecords(_ request: ListAutoScalingRecordsRequest) async throws -> ListAutoScalingRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAutoScalingRecordsWithOptions(request as! ListAutoScalingRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoScalingRulesWithOptions(_ request: ListAutoScalingRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAutoScalingRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configId)) {
            query["ConfigId"] = request.configId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAutoScalingRules",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAutoScalingRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoScalingRules(_ request: ListAutoScalingRulesRequest) async throws -> ListAutoScalingRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAutoScalingRulesWithOptions(request as! ListAutoScalingRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLdpsComputeGroupsWithOptions(_ request: ListLdpsComputeGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLdpsComputeGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLdpsComputeGroups",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLdpsComputeGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLdpsComputeGroups(_ request: ListLdpsComputeGroupsRequest) async throws -> ListLdpsComputeGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLdpsComputeGroupsWithOptions(request as! ListLdpsComputeGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func migrateSingleZoneToMultiZoneWithOptions(_ request: MigrateSingleZoneToMultiZoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MigrateSingleZoneToMultiZoneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arbitraryVSwitchId)) {
            query["ArbitraryVSwitchId"] = request.arbitraryVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arbitraryZoneId)) {
            query["ArbitraryZoneId"] = request.arbitraryZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standbyVSwitchId)) {
            query["StandbyVSwitchId"] = request.standbyVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standbyZoneId)) {
            query["StandbyZoneId"] = request.standbyZoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MigrateSingleZoneToMultiZone",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MigrateSingleZoneToMultiZoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func migrateSingleZoneToMultiZone(_ request: MigrateSingleZoneToMultiZoneRequest) async throws -> MigrateSingleZoneToMultiZoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await migrateSingleZoneToMultiZoneWithOptions(request as! MigrateSingleZoneToMultiZoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAutoScalingConfigWithOptions(_ request: ModifyAutoScalingConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAutoScalingConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configId)) {
            query["ConfigId"] = request.configId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configName)) {
            query["ConfigName"] = request.configName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectiveTimeEnd)) {
            query["EffectiveTimeEnd"] = request.effectiveTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectiveTimeStart)) {
            query["EffectiveTimeStart"] = request.effectiveTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodesMax)) {
            query["NodesMax"] = request.nodesMax!;
        }
        if (!TeaUtils.Client.isUnset(request.nodesMin)) {
            query["NodesMin"] = request.nodesMin!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleType)) {
            query["ScaleType"] = request.scaleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specId)) {
            query["SpecId"] = request.specId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAutoScalingConfig",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAutoScalingConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAutoScalingConfig(_ request: ModifyAutoScalingConfigRequest) async throws -> ModifyAutoScalingConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAutoScalingConfigWithOptions(request as! ModifyAutoScalingConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAutoScalingRuleWithOptions(_ request: ModifyAutoScalingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAutoScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configId)) {
            query["ConfigId"] = request.configId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.observationWindow)) {
            query["ObservationWindow"] = request.observationWindow!;
        }
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            query["OperationType"] = request.operationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scaleInStep)) {
            query["ScaleInStep"] = request.scaleInStep!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleOutStep)) {
            query["ScaleOutStep"] = request.scaleOutStep!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.silenceTime)) {
            query["SilenceTime"] = request.silenceTime!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetMetric)) {
            query["TargetMetric"] = request.targetMetric ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetNodes)) {
            query["TargetNodes"] = request.targetNodes!;
        }
        if (!TeaUtils.Client.isUnset(request.thresholdLower)) {
            query["ThresholdLower"] = request.thresholdLower!;
        }
        if (!TeaUtils.Client.isUnset(request.thresholdUpper)) {
            query["ThresholdUpper"] = request.thresholdUpper!;
        }
        if (!TeaUtils.Client.isUnset(request.triggerCronExpr)) {
            query["TriggerCronExpr"] = request.triggerCronExpr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAutoScalingRule",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAutoScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAutoScalingRule(_ request: ModifyAutoScalingRuleRequest) async throws -> ModifyAutoScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAutoScalingRuleWithOptions(request as! ModifyAutoScalingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstancePayTypeWithOptions(_ request: ModifyInstancePayTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstancePayTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstancePayType",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstancePayTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstancePayType(_ request: ModifyInstancePayTypeRequest) async throws -> ModifyInstancePayTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstancePayTypeWithOptions(request as! ModifyInstancePayTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLindormV2InstanceWithOptions(_ request: ModifyLindormV2InstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyLindormV2InstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cloudStorageSize)) {
            query["CloudStorageSize"] = request.cloudStorageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.cloudStorageType)) {
            query["CloudStorageType"] = request.cloudStorageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engineType)) {
            query["EngineType"] = request.engineType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupList)) {
            query["NodeGroupList"] = request.nodeGroupList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upgradeType)) {
            query["UpgradeType"] = request.upgradeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyLindormV2Instance",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyLindormV2InstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLindormV2Instance(_ request: ModifyLindormV2InstanceRequest) async throws -> ModifyLindormV2InstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyLindormV2InstanceWithOptions(request as! ModifyLindormV2InstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLindormV2InstanceSecurityGroupsWithOptions(_ request: ModifyLindormV2InstanceSecurityGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyLindormV2InstanceSecurityGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityGroups)) {
            query["SecurityGroups"] = request.securityGroups ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyLindormV2InstanceSecurityGroups",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyLindormV2InstanceSecurityGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLindormV2InstanceSecurityGroups(_ request: ModifyLindormV2InstanceSecurityGroupsRequest) async throws -> ModifyLindormV2InstanceSecurityGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyLindormV2InstanceSecurityGroupsWithOptions(request as! ModifyLindormV2InstanceSecurityGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLindormV2WhiteIpListWithOptions(_ request: ModifyLindormV2WhiteIpListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyLindormV2WhiteIpListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteGroup)) {
            query["DeleteGroup"] = request.deleteGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whiteIpList)) {
            query["WhiteIpList"] = request.whiteIpList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyLindormV2WhiteIpList",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyLindormV2WhiteIpListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLindormV2WhiteIpList(_ request: ModifyLindormV2WhiteIpListRequest) async throws -> ModifyLindormV2WhiteIpListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyLindormV2WhiteIpListWithOptions(request as! ModifyLindormV2WhiteIpListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openComputeEngineWithOptions(_ request: OpenComputeEngineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OpenComputeEngineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cpuLimit)) {
            query["CpuLimit"] = request.cpuLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memoryLimit)) {
            query["MemoryLimit"] = request.memoryLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenComputeEngine",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenComputeEngineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openComputeEngine(_ request: OpenComputeEngineRequest) async throws -> OpenComputeEngineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await openComputeEngineWithOptions(request as! OpenComputeEngineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openComputePreCheckWithOptions(_ request: OpenComputePreCheckRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OpenComputePreCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cpuLimit)) {
            query["CpuLimit"] = request.cpuLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memoryLimit)) {
            query["MemoryLimit"] = request.memoryLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenComputePreCheck",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenComputePreCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openComputePreCheck(_ request: OpenComputePreCheckRequest) async throws -> OpenComputePreCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await openComputePreCheckWithOptions(request as! OpenComputePreCheckRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseLindormInstanceWithOptions(_ request: ReleaseLindormInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseLindormInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.immediately)) {
            query["Immediately"] = request.immediately!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseLindormInstance",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseLindormInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseLindormInstance(_ request: ReleaseLindormInstanceRequest) async throws -> ReleaseLindormInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseLindormInstanceWithOptions(request as! ReleaseLindormInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseLindormV2InstanceWithOptions(_ request: ReleaseLindormV2InstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseLindormV2InstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.immediately)) {
            query["Immediately"] = request.immediately!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseLindormV2Instance",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseLindormV2InstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseLindormV2Instance(_ request: ReleaseLindormV2InstanceRequest) async throws -> ReleaseLindormV2InstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseLindormV2InstanceWithOptions(request as! ReleaseLindormV2InstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewLindormInstanceWithOptions(_ request: RenewLindormInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewLindormInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewLindormInstance",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewLindormInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewLindormInstance(_ request: RenewLindormInstanceRequest) async throws -> RenewLindormInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewLindormInstanceWithOptions(request as! RenewLindormInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartLdpsComputeGroupWithOptions(_ request: RestartLdpsComputeGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartLdpsComputeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartLdpsComputeGroup",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartLdpsComputeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartLdpsComputeGroup(_ request: RestartLdpsComputeGroupRequest) async throws -> RestartLdpsComputeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await restartLdpsComputeGroupWithOptions(request as! RestartLdpsComputeGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDefaultOlapComputeGroupWithOptions(_ request: SetDefaultOlapComputeGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDefaultOlapComputeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isDefault)) {
            query["IsDefault"] = request.isDefault!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDefaultOlapComputeGroup",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDefaultOlapComputeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDefaultOlapComputeGroup(_ request: SetDefaultOlapComputeGroupRequest) async throws -> SetDefaultOlapComputeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDefaultOlapComputeGroupWithOptions(request as! SetDefaultOlapComputeGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchLSQLV3MySQLServiceWithOptions(_ request: SwitchLSQLV3MySQLServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchLSQLV3MySQLServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionType)) {
            query["ActionType"] = request.actionType!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchLSQLV3MySQLService",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchLSQLV3MySQLServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchLSQLV3MySQLService(_ request: SwitchLSQLV3MySQLServiceRequest) async throws -> SwitchLSQLV3MySQLServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await switchLSQLV3MySQLServiceWithOptions(request as! SwitchLSQLV3MySQLServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResources(_ request: TagResourcesRequest) async throws -> TagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await tagResourcesWithOptions(request as! TagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResources(_ request: UntagResourcesRequest) async throws -> UntagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await untagResourcesWithOptions(request as! UntagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceIpWhiteListWithOptions(_ request: UpdateInstanceIpWhiteListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceIpWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.delete)) {
            query["Delete"] = request.delete!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityIpList)) {
            query["SecurityIpList"] = request.securityIpList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstanceIpWhiteList",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceIpWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceIpWhiteList(_ request: UpdateInstanceIpWhiteListRequest) async throws -> UpdateInstanceIpWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateInstanceIpWhiteListWithOptions(request as! UpdateInstanceIpWhiteListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceSecurityGroupsWithOptions(_ request: UpdateInstanceSecurityGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceSecurityGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityGroups)) {
            query["SecurityGroups"] = request.securityGroups ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstanceSecurityGroups",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceSecurityGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceSecurityGroups(_ request: UpdateInstanceSecurityGroupsRequest) async throws -> UpdateInstanceSecurityGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateInstanceSecurityGroupsWithOptions(request as! UpdateInstanceSecurityGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLdpsComputeGroupWithOptions(_ request: UpdateLdpsComputeGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLdpsComputeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.properties)) {
            query["Properties"] = request.properties ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLdpsComputeGroup",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLdpsComputeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLdpsComputeGroup(_ request: UpdateLdpsComputeGroupRequest) async throws -> UpdateLdpsComputeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateLdpsComputeGroupWithOptions(request as! UpdateLdpsComputeGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLindormInstanceAttributeWithOptions(_ request: UpdateLindormInstanceAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLindormInstanceAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deletionProtection)) {
            query["DeletionProtection"] = request.deletionProtection!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceAlias)) {
            query["InstanceAlias"] = request.instanceAlias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLindormInstanceAttribute",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLindormInstanceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLindormInstanceAttribute(_ request: UpdateLindormInstanceAttributeRequest) async throws -> UpdateLindormInstanceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateLindormInstanceAttributeWithOptions(request as! UpdateLindormInstanceAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLindormV2InstanceWithOptions(_ request: UpdateLindormV2InstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLindormV2InstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.capacityStorageSize)) {
            query["CapacityStorageSize"] = request.capacityStorageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.cloudStorageSize)) {
            query["CloudStorageSize"] = request.cloudStorageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.cloudStorageType)) {
            query["CloudStorageType"] = request.cloudStorageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableCapacityStorage)) {
            query["EnableCapacityStorage"] = request.enableCapacityStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.engineList)) {
            query["EngineList"] = request.engineList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLindormV2Instance",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLindormV2InstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLindormV2Instance(_ request: UpdateLindormV2InstanceRequest) async throws -> UpdateLindormV2InstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateLindormV2InstanceWithOptions(request as! UpdateLindormV2InstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLindormV2InstanceParameterWithOptions(_ request: UpdateLindormV2InstanceParameterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLindormV2InstanceParameterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.parameterKey)) {
            query["ParameterKey"] = request.parameterKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameterValue)) {
            query["ParameterValue"] = request.parameterValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateType)) {
            query["UpdateType"] = request.updateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLindormV2InstanceParameter",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLindormV2InstanceParameterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLindormV2InstanceParameter(_ request: UpdateLindormV2InstanceParameterRequest) async throws -> UpdateLindormV2InstanceParameterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateLindormV2InstanceParameterWithOptions(request as! UpdateLindormV2InstanceParameterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeLindormInstanceWithOptions(_ request: UpgradeLindormInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeLindormInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterStorage)) {
            query["ClusterStorage"] = request.clusterStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.coldStorage)) {
            query["ColdStorage"] = request.coldStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.coreSingleStorage)) {
            query["CoreSingleStorage"] = request.coreSingleStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.filestoreNum)) {
            query["FilestoreNum"] = request.filestoreNum!;
        }
        if (!TeaUtils.Client.isUnset(request.filestoreSpec)) {
            query["FilestoreSpec"] = request.filestoreSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lindormNum)) {
            query["LindormNum"] = request.lindormNum!;
        }
        if (!TeaUtils.Client.isUnset(request.lindormSpec)) {
            query["LindormSpec"] = request.lindormSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logNum)) {
            query["LogNum"] = request.logNum!;
        }
        if (!TeaUtils.Client.isUnset(request.logSingleStorage)) {
            query["LogSingleStorage"] = request.logSingleStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.logSpec)) {
            query["LogSpec"] = request.logSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ltsCoreNum)) {
            query["LtsCoreNum"] = request.ltsCoreNum!;
        }
        if (!TeaUtils.Client.isUnset(request.ltsCoreSpec)) {
            query["LtsCoreSpec"] = request.ltsCoreSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.solrNum)) {
            query["SolrNum"] = request.solrNum!;
        }
        if (!TeaUtils.Client.isUnset(request.solrSpec)) {
            query["SolrSpec"] = request.solrSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamNum)) {
            query["StreamNum"] = request.streamNum!;
        }
        if (!TeaUtils.Client.isUnset(request.streamSpec)) {
            query["StreamSpec"] = request.streamSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tsdbNum)) {
            query["TsdbNum"] = request.tsdbNum!;
        }
        if (!TeaUtils.Client.isUnset(request.tsdbSpec)) {
            query["TsdbSpec"] = request.tsdbSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upgradeType)) {
            query["UpgradeType"] = request.upgradeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeLindormInstance",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeLindormInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeLindormInstance(_ request: UpgradeLindormInstanceRequest) async throws -> UpgradeLindormInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeLindormInstanceWithOptions(request as! UpgradeLindormInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeLindormV2StreamEngineWithOptions(_ request: UpgradeLindormV2StreamEngineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeLindormV2StreamEngineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customConfig)) {
            query["CustomConfig"] = request.customConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.quantity)) {
            query["Quantity"] = request.quantity!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            query["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spec)) {
            query["Spec"] = request.spec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specId)) {
            query["SpecId"] = request.specId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upgradeType)) {
            query["UpgradeType"] = request.upgradeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeLindormV2StreamEngine",
            "version": "2020-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeLindormV2StreamEngineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeLindormV2StreamEngine(_ request: UpgradeLindormV2StreamEngineRequest) async throws -> UpgradeLindormV2StreamEngineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeLindormV2StreamEngineWithOptions(request as! UpgradeLindormV2StreamEngineRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
