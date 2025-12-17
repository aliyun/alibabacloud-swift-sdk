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
            "cn-qingdao": "ess.aliyuncs.com",
            "cn-beijing": "ess.aliyuncs.com",
            "cn-hangzhou": "ess.aliyuncs.com",
            "cn-shanghai": "ess.aliyuncs.com",
            "cn-shenzhen": "ess.aliyuncs.com",
            "cn-hongkong": "ess.aliyuncs.com",
            "ap-southeast-1": "ess.aliyuncs.com",
            "us-east-1": "ess.aliyuncs.com",
            "us-west-1": "ess.aliyuncs.com",
            "cn-shanghai-finance-1": "ess.aliyuncs.com",
            "cn-shenzhen-finance-1": "ess.aliyuncs.com",
            "cn-north-2-gov-1": "ess.aliyuncs.com",
            "ap-northeast-2-pop": "ess.aliyuncs.com",
            "cn-beijing-finance-pop": "ess.aliyuncs.com",
            "cn-beijing-gov-1": "ess.aliyuncs.com",
            "cn-beijing-nu16-b01": "ess.aliyuncs.com",
            "cn-edge-1": "ess.aliyuncs.com",
            "cn-fujian": "ess.aliyuncs.com",
            "cn-haidian-cm12-c01": "ess.aliyuncs.com",
            "cn-hangzhou-bj-b01": "ess.aliyuncs.com",
            "cn-hangzhou-finance": "ess.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "ess.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "ess.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "ess.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "ess.aliyuncs.com",
            "cn-hangzhou-test-306": "ess.aliyuncs.com",
            "cn-hongkong-finance-pop": "ess.aliyuncs.com",
            "cn-huhehaote-nebula-1": "ess.aliyuncs.com",
            "cn-qingdao-nebula": "ess.aliyuncs.com",
            "cn-shanghai-et15-b01": "ess.aliyuncs.com",
            "cn-shanghai-et2-b01": "ess.aliyuncs.com",
            "cn-shanghai-inner": "ess.aliyuncs.com",
            "cn-shanghai-internal-test-1": "ess.aliyuncs.com",
            "cn-shenzhen-inner": "ess.aliyuncs.com",
            "cn-shenzhen-st4-d01": "ess.aliyuncs.com",
            "cn-shenzhen-su18-b01": "ess.aliyuncs.com",
            "cn-wuhan": "ess.aliyuncs.com",
            "cn-yushanfang": "ess.aliyuncs.com",
            "cn-zhangbei": "ess.aliyuncs.com",
            "cn-zhangbei-na61-b01": "ess.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "ess.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "ess.aliyuncs.com",
            "eu-west-1-oxs": "ess.aliyuncs.com",
            "rus-west-1-pop": "ess.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("ess", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func applyEciScalingConfigurationWithOptions(_ request: ApplyEciScalingConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyEciScalingConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            query["Format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationId)) {
            query["ScalingConfigurationId"] = request.scalingConfigurationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyEciScalingConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyEciScalingConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyEciScalingConfiguration(_ request: ApplyEciScalingConfigurationRequest) async throws -> ApplyEciScalingConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyEciScalingConfigurationWithOptions(request as! ApplyEciScalingConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyScalingGroupWithOptions(_ request: ApplyScalingGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyScalingGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            query["Format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyScalingGroup",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyScalingGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyScalingGroup(_ request: ApplyScalingGroupRequest) async throws -> ApplyScalingGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyScalingGroupWithOptions(request as! ApplyScalingGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachAlbServerGroupsWithOptions(_ request: AttachAlbServerGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachAlbServerGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.albServerGroups)) {
            query["AlbServerGroups"] = request.albServerGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceAttach)) {
            query["ForceAttach"] = request.forceAttach!;
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachAlbServerGroups",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachAlbServerGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachAlbServerGroups(_ request: AttachAlbServerGroupsRequest) async throws -> AttachAlbServerGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachAlbServerGroupsWithOptions(request as! AttachAlbServerGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDBInstancesWithOptions(_ request: AttachDBInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachDBInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachMode)) {
            query["AttachMode"] = request.attachMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstances)) {
            query["DBInstances"] = request.DBInstances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.forceAttach)) {
            query["ForceAttach"] = request.forceAttach!;
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachDBInstances",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachDBInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDBInstances(_ request: AttachDBInstancesRequest) async throws -> AttachDBInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachDBInstancesWithOptions(request as! AttachDBInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachInstancesWithOptions(_ request: AttachInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entrusted)) {
            query["Entrusted"] = request.entrusted!;
        }
        if (!TeaUtils.Client.isUnset(request.ignoreInvalidInstance)) {
            query["IgnoreInvalidInstance"] = request.ignoreInvalidInstance!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHook)) {
            query["LifecycleHook"] = request.lifecycleHook!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerWeights)) {
            query["LoadBalancerWeights"] = request.loadBalancerWeights ?? [];
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachInstances",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachInstances(_ request: AttachInstancesRequest) async throws -> AttachInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachInstancesWithOptions(request as! AttachInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachLoadBalancersWithOptions(_ request: AttachLoadBalancersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachLoadBalancersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.async)) {
            query["Async"] = request.async!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceAttach)) {
            query["ForceAttach"] = request.forceAttach!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerConfigs)) {
            query["LoadBalancerConfigs"] = request.loadBalancerConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancers)) {
            query["LoadBalancers"] = request.loadBalancers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachLoadBalancers",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachLoadBalancersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachLoadBalancers(_ request: AttachLoadBalancersRequest) async throws -> AttachLoadBalancersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachLoadBalancersWithOptions(request as! AttachLoadBalancersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachServerGroupsWithOptions(_ request: AttachServerGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachServerGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceAttach)) {
            query["ForceAttach"] = request.forceAttach!;
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverGroups)) {
            query["ServerGroups"] = request.serverGroups ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachServerGroups",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachServerGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachServerGroups(_ request: AttachServerGroupsRequest) async throws -> AttachServerGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachServerGroupsWithOptions(request as! AttachServerGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachVServerGroupsWithOptions(_ request: AttachVServerGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachVServerGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceAttach)) {
            query["ForceAttach"] = request.forceAttach!;
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.VServerGroups)) {
            query["VServerGroups"] = request.VServerGroups ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachVServerGroups",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachVServerGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachVServerGroups(_ request: AttachVServerGroupsRequest) async throws -> AttachVServerGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachVServerGroupsWithOptions(request as! AttachVServerGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelInstanceRefreshWithOptions(_ request: CancelInstanceRefreshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelInstanceRefreshResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceRefreshTaskId)) {
            query["InstanceRefreshTaskId"] = request.instanceRefreshTaskId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelInstanceRefresh",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelInstanceRefreshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelInstanceRefresh(_ request: CancelInstanceRefreshRequest) async throws -> CancelInstanceRefreshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelInstanceRefreshWithOptions(request as! CancelInstanceRefreshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroupWithOptions(_ request: ChangeResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newResourceGroupId)) {
            query["NewResourceGroupId"] = request.newResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResourceGroup",
            "version": "2022-02-22",
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
    public func completeLifecycleActionWithOptions(_ request: CompleteLifecycleActionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CompleteLifecycleActionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleActionResult)) {
            query["LifecycleActionResult"] = request.lifecycleActionResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleActionToken)) {
            query["LifecycleActionToken"] = request.lifecycleActionToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHookId)) {
            query["LifecycleHookId"] = request.lifecycleHookId ?? "";
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CompleteLifecycleAction",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CompleteLifecycleActionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func completeLifecycleAction(_ request: CompleteLifecycleActionRequest) async throws -> CompleteLifecycleActionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await completeLifecycleActionWithOptions(request as! CompleteLifecycleActionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlarmWithOptions(_ request: CreateAlarmRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAlarmResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmActions)) {
            query["AlarmActions"] = request.alarmActions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.comparisonOperator)) {
            query["ComparisonOperator"] = request.comparisonOperator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dimensions)) {
            query["Dimensions"] = request.dimensions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.effective)) {
            query["Effective"] = request.effective ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.evaluationCount)) {
            query["EvaluationCount"] = request.evaluationCount!;
        }
        if (!TeaUtils.Client.isUnset(request.expressions)) {
            query["Expressions"] = request.expressions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.expressionsLogicOperator)) {
            query["ExpressionsLogicOperator"] = request.expressionsLogicOperator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.metricName)) {
            query["MetricName"] = request.metricName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricType)) {
            query["MetricType"] = request.metricType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statistics)) {
            query["Statistics"] = request.statistics ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threshold)) {
            query["Threshold"] = request.threshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAlarm",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAlarmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlarm(_ request: CreateAlarmRequest) async throws -> CreateAlarmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAlarmWithOptions(request as! CreateAlarmRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDiagnoseReportWithOptions(_ request: CreateDiagnoseReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDiagnoseReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDiagnoseReport",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDiagnoseReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDiagnoseReport(_ request: CreateDiagnoseReportRequest) async throws -> CreateDiagnoseReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDiagnoseReportWithOptions(request as! CreateDiagnoseReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEciScalingConfigurationWithOptions(_ request: CreateEciScalingConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEciScalingConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrRegistryInfos)) {
            query["AcrRegistryInfos"] = request.acrRegistryInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.activeDeadlineSeconds)) {
            query["ActiveDeadlineSeconds"] = request.activeDeadlineSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.autoCreateEip)) {
            query["AutoCreateEip"] = request.autoCreateEip!;
        }
        if (!TeaUtils.Client.isUnset(request.autoMatchImageCache)) {
            query["AutoMatchImageCache"] = request.autoMatchImageCache!;
        }
        if (!TeaUtils.Client.isUnset(request.containerGroupName)) {
            query["ContainerGroupName"] = request.containerGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containers)) {
            query["Containers"] = request.containers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.costOptimization)) {
            query["CostOptimization"] = request.costOptimization!;
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            query["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.cpuOptionsCore)) {
            query["CpuOptionsCore"] = request.cpuOptionsCore!;
        }
        if (!TeaUtils.Client.isUnset(request.cpuOptionsThreadsPerCore)) {
            query["CpuOptionsThreadsPerCore"] = request.cpuOptionsThreadsPerCore!;
        }
        if (!TeaUtils.Client.isUnset(request.dataCacheBucket)) {
            query["DataCacheBucket"] = request.dataCacheBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataCacheBurstingEnabled)) {
            query["DataCacheBurstingEnabled"] = request.dataCacheBurstingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.dataCachePL)) {
            query["DataCachePL"] = request.dataCachePL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataCacheProvisionedIops)) {
            query["DataCacheProvisionedIops"] = request.dataCacheProvisionedIops!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dnsConfigNameServers)) {
            query["DnsConfigNameServers"] = request.dnsConfigNameServers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dnsConfigOptions)) {
            query["DnsConfigOptions"] = request.dnsConfigOptions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dnsConfigSearchs)) {
            query["DnsConfigSearchs"] = request.dnsConfigSearchs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dnsPolicy)) {
            query["DnsPolicy"] = request.dnsPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.egressBandwidth)) {
            query["EgressBandwidth"] = request.egressBandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.eipBandwidth)) {
            query["EipBandwidth"] = request.eipBandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSls)) {
            query["EnableSls"] = request.enableSls!;
        }
        if (!TeaUtils.Client.isUnset(request.ephemeralStorage)) {
            query["EphemeralStorage"] = request.ephemeralStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.gpuDriverVersion)) {
            query["GpuDriverVersion"] = request.gpuDriverVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostAliases)) {
            query["HostAliases"] = request.hostAliases ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageRegistryCredentials)) {
            query["ImageRegistryCredentials"] = request.imageRegistryCredentials ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.imageSnapshotId)) {
            query["ImageSnapshotId"] = request.imageSnapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ingressBandwidth)) {
            query["IngressBandwidth"] = request.ingressBandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.initContainers)) {
            query["InitContainers"] = request.initContainers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceFamilyLevel)) {
            query["InstanceFamilyLevel"] = request.instanceFamilyLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceTypes)) {
            query["InstanceTypes"] = request.instanceTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ipv6AddressCount)) {
            query["Ipv6AddressCount"] = request.ipv6AddressCount!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerWeight)) {
            query["LoadBalancerWeight"] = request.loadBalancerWeight!;
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            query["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.ntpServers)) {
            query["NtpServers"] = request.ntpServers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ramRoleName)) {
            query["RamRoleName"] = request.ramRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restartPolicy)) {
            query["RestartPolicy"] = request.restartPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationName)) {
            query["ScalingConfigurationName"] = request.scalingConfigurationName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityContextSysctls)) {
            query["SecurityContextSysctls"] = request.securityContextSysctls ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spotPriceLimit)) {
            query["SpotPriceLimit"] = request.spotPriceLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.spotStrategy)) {
            query["SpotStrategy"] = request.spotStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.terminationGracePeriodSeconds)) {
            query["TerminationGracePeriodSeconds"] = request.terminationGracePeriodSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.volumes)) {
            query["Volumes"] = request.volumes ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEciScalingConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEciScalingConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEciScalingConfiguration(_ request: CreateEciScalingConfigurationRequest) async throws -> CreateEciScalingConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEciScalingConfigurationWithOptions(request as! CreateEciScalingConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLifecycleHookWithOptions(_ request: CreateLifecycleHookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLifecycleHookResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defaultResult)) {
            query["DefaultResult"] = request.defaultResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.heartbeatTimeout)) {
            query["HeartbeatTimeout"] = request.heartbeatTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHookName)) {
            query["LifecycleHookName"] = request.lifecycleHookName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleTransition)) {
            query["LifecycleTransition"] = request.lifecycleTransition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationArn)) {
            query["NotificationArn"] = request.notificationArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationMetadata)) {
            query["NotificationMetadata"] = request.notificationMetadata ?? "";
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLifecycleHook",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLifecycleHookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLifecycleHook(_ request: CreateLifecycleHookRequest) async throws -> CreateLifecycleHookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLifecycleHookWithOptions(request as! CreateLifecycleHookRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNotificationConfigurationWithOptions(_ request: CreateNotificationConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNotificationConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.messageEncoding)) {
            query["MessageEncoding"] = request.messageEncoding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationArn)) {
            query["NotificationArn"] = request.notificationArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationTypes)) {
            query["NotificationTypes"] = request.notificationTypes ?? [];
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            query["TimeZone"] = request.timeZone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNotificationConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNotificationConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNotificationConfiguration(_ request: CreateNotificationConfigurationRequest) async throws -> CreateNotificationConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNotificationConfigurationWithOptions(request as! CreateNotificationConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScalingConfigurationWithOptions(_ tmpReq: CreateScalingConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScalingConfigurationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateScalingConfigurationShrinkRequest = CreateScalingConfigurationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.schedulerOptions)) {
            request.schedulerOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.schedulerOptions, "SchedulerOptions", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.affinity)) {
            query["Affinity"] = request.affinity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            query["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.creditSpecification)) {
            query["CreditSpecification"] = request.creditSpecification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customPriorities)) {
            query["CustomPriorities"] = request.customPriorities ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dataDisks)) {
            query["DataDisks"] = request.dataDisks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedHostClusterId)) {
            query["DedicatedHostClusterId"] = request.dedicatedHostClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedHostId)) {
            query["DedicatedHostId"] = request.dedicatedHostId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deletionProtection)) {
            query["DeletionProtection"] = request.deletionProtection!;
        }
        if (!TeaUtils.Client.isUnset(request.deploymentSetId)) {
            query["DeploymentSetId"] = request.deploymentSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hpcClusterId)) {
            query["HpcClusterId"] = request.hpcClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpEndpoint)) {
            query["HttpEndpoint"] = request.httpEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpTokens)) {
            query["HttpTokens"] = request.httpTokens ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageFamily)) {
            query["ImageFamily"] = request.imageFamily ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            query["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceDescription)) {
            query["InstanceDescription"] = request.instanceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instancePatternInfos)) {
            query["InstancePatternInfos"] = request.instancePatternInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceTypeOverrides)) {
            query["InstanceTypeOverrides"] = request.instanceTypeOverrides ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceTypes)) {
            query["InstanceTypes"] = request.instanceTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.internetChargeType)) {
            query["InternetChargeType"] = request.internetChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetMaxBandwidthIn)) {
            query["InternetMaxBandwidthIn"] = request.internetMaxBandwidthIn!;
        }
        if (!TeaUtils.Client.isUnset(request.internetMaxBandwidthOut)) {
            query["InternetMaxBandwidthOut"] = request.internetMaxBandwidthOut!;
        }
        if (!TeaUtils.Client.isUnset(request.ioOptimized)) {
            query["IoOptimized"] = request.ioOptimized ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipv6AddressCount)) {
            query["Ipv6AddressCount"] = request.ipv6AddressCount!;
        }
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerWeight)) {
            query["LoadBalancerWeight"] = request.loadBalancerWeight!;
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            query["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaces)) {
            query["NetworkInterfaces"] = request.networkInterfaces ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passwordInherit)) {
            query["PasswordInherit"] = request.passwordInherit!;
        }
        if (!TeaUtils.Client.isUnset(request.ramRoleName)) {
            query["RamRoleName"] = request.ramRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourcePoolOptions)) {
            query["ResourcePoolOptions"] = request.resourcePoolOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationName)) {
            query["ScalingConfigurationName"] = request.scalingConfigurationName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedulerOptionsShrink)) {
            query["SchedulerOptions"] = request.schedulerOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityEnhancementStrategy)) {
            query["SecurityEnhancementStrategy"] = request.securityEnhancementStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupIds)) {
            query["SecurityGroupIds"] = request.securityGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.securityOptions)) {
            query["SecurityOptions"] = request.securityOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.spotDuration)) {
            query["SpotDuration"] = request.spotDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.spotInterruptionBehavior)) {
            query["SpotInterruptionBehavior"] = request.spotInterruptionBehavior ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spotPriceLimits)) {
            query["SpotPriceLimits"] = request.spotPriceLimits ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.spotStrategy)) {
            query["SpotStrategy"] = request.spotStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageSetId)) {
            query["StorageSetId"] = request.storageSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageSetPartitionNumber)) {
            query["StorageSetPartitionNumber"] = request.storageSetPartitionNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.systemDiskCategories)) {
            query["SystemDiskCategories"] = request.systemDiskCategories ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenancy)) {
            query["Tenancy"] = request.tenancy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageOptions)) {
            query["ImageOptions"] = request.imageOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.privatePoolOptions)) {
            query["PrivatePoolOptions"] = request.privatePoolOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.systemDisk)) {
            query["SystemDisk"] = request.systemDisk!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScalingConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScalingConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScalingConfiguration(_ request: CreateScalingConfigurationRequest) async throws -> CreateScalingConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createScalingConfigurationWithOptions(request as! CreateScalingConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScalingGroupWithOptions(_ request: CreateScalingGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScalingGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.albServerGroups)) {
            query["AlbServerGroups"] = request.albServerGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.allocationStrategy)) {
            query["AllocationStrategy"] = request.allocationStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRebalance)) {
            query["AutoRebalance"] = request.autoRebalance!;
        }
        if (!TeaUtils.Client.isUnset(request.azBalance)) {
            query["AzBalance"] = request.azBalance!;
        }
        if (!TeaUtils.Client.isUnset(request.balanceMode)) {
            query["BalanceMode"] = request.balanceMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.capacityOptions)) {
            query["CapacityOptions"] = request.capacityOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compensateWithOnDemand)) {
            query["CompensateWithOnDemand"] = request.compensateWithOnDemand!;
        }
        if (!TeaUtils.Client.isUnset(request.containerGroupId)) {
            query["ContainerGroupId"] = request.containerGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customPolicyARN)) {
            query["CustomPolicyARN"] = request.customPolicyARN ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceIds)) {
            query["DBInstanceIds"] = request.DBInstanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstances)) {
            query["DBInstances"] = request.DBInstances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.defaultCooldown)) {
            query["DefaultCooldown"] = request.defaultCooldown!;
        }
        if (!TeaUtils.Client.isUnset(request.desiredCapacity)) {
            query["DesiredCapacity"] = request.desiredCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.groupDeletionProtection)) {
            query["GroupDeletionProtection"] = request.groupDeletionProtection!;
        }
        if (!TeaUtils.Client.isUnset(request.groupType)) {
            query["GroupType"] = request.groupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckType)) {
            query["HealthCheckType"] = request.healthCheckType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckTypes)) {
            query["HealthCheckTypes"] = request.healthCheckTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.launchTemplateId)) {
            query["LaunchTemplateId"] = request.launchTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.launchTemplateOverrides)) {
            query["LaunchTemplateOverrides"] = request.launchTemplateOverrides ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.launchTemplateVersion)) {
            query["LaunchTemplateVersion"] = request.launchTemplateVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHooks)) {
            query["LifecycleHooks"] = request.lifecycleHooks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerConfigs)) {
            query["LoadBalancerConfigs"] = request.loadBalancerConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerIds)) {
            query["LoadBalancerIds"] = request.loadBalancerIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxInstanceLifetime)) {
            query["MaxInstanceLifetime"] = request.maxInstanceLifetime!;
        }
        if (!TeaUtils.Client.isUnset(request.maxSize)) {
            query["MaxSize"] = request.maxSize!;
        }
        if (!TeaUtils.Client.isUnset(request.minSize)) {
            query["MinSize"] = request.minSize!;
        }
        if (!TeaUtils.Client.isUnset(request.multiAZPolicy)) {
            query["MultiAZPolicy"] = request.multiAZPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onDemandBaseCapacity)) {
            query["OnDemandBaseCapacity"] = request.onDemandBaseCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.onDemandPercentageAboveBaseCapacity)) {
            query["OnDemandPercentageAboveBaseCapacity"] = request.onDemandPercentageAboveBaseCapacity!;
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
        if (!TeaUtils.Client.isUnset(request.removalPolicies)) {
            query["RemovalPolicies"] = request.removalPolicies ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupName)) {
            query["ScalingGroupName"] = request.scalingGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingPolicy)) {
            query["ScalingPolicy"] = request.scalingPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverGroups)) {
            query["ServerGroups"] = request.serverGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.spotAllocationStrategy)) {
            query["SpotAllocationStrategy"] = request.spotAllocationStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spotInstancePools)) {
            query["SpotInstancePools"] = request.spotInstancePools!;
        }
        if (!TeaUtils.Client.isUnset(request.spotInstanceRemedy)) {
            query["SpotInstanceRemedy"] = request.spotInstanceRemedy!;
        }
        if (!TeaUtils.Client.isUnset(request.stopInstanceTimeout)) {
            query["StopInstanceTimeout"] = request.stopInstanceTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.syncAlarmRuleToCms)) {
            query["SyncAlarmRuleToCms"] = request.syncAlarmRuleToCms!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.VServerGroups)) {
            query["VServerGroups"] = request.VServerGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchIds)) {
            query["VSwitchIds"] = request.vSwitchIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScalingGroup",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScalingGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScalingGroup(_ request: CreateScalingGroupRequest) async throws -> CreateScalingGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createScalingGroupWithOptions(request as! CreateScalingGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScalingRuleWithOptions(_ request: CreateScalingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adjustmentType)) {
            query["AdjustmentType"] = request.adjustmentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.adjustmentValue)) {
            query["AdjustmentValue"] = request.adjustmentValue!;
        }
        if (!TeaUtils.Client.isUnset(request.alarmDimensions)) {
            query["AlarmDimensions"] = request.alarmDimensions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.alarmOptions)) {
            query["AlarmOptions"] = request.alarmOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.cooldown)) {
            query["Cooldown"] = request.cooldown!;
        }
        if (!TeaUtils.Client.isUnset(request.disableScaleIn)) {
            query["DisableScaleIn"] = request.disableScaleIn!;
        }
        if (!TeaUtils.Client.isUnset(request.estimatedInstanceWarmup)) {
            query["EstimatedInstanceWarmup"] = request.estimatedInstanceWarmup!;
        }
        if (!TeaUtils.Client.isUnset(request.hybridMetrics)) {
            query["HybridMetrics"] = request.hybridMetrics ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hybridMonitorNamespace)) {
            query["HybridMonitorNamespace"] = request.hybridMonitorNamespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initialMaxSize)) {
            query["InitialMaxSize"] = request.initialMaxSize!;
        }
        if (!TeaUtils.Client.isUnset(request.metricName)) {
            query["MetricName"] = request.metricName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricType)) {
            query["MetricType"] = request.metricType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minAdjustmentMagnitude)) {
            query["MinAdjustmentMagnitude"] = request.minAdjustmentMagnitude!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.predictiveScalingMode)) {
            query["PredictiveScalingMode"] = request.predictiveScalingMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.predictiveTaskBufferTime)) {
            query["PredictiveTaskBufferTime"] = request.predictiveTaskBufferTime!;
        }
        if (!TeaUtils.Client.isUnset(request.predictiveValueBehavior)) {
            query["PredictiveValueBehavior"] = request.predictiveValueBehavior ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.predictiveValueBuffer)) {
            query["PredictiveValueBuffer"] = request.predictiveValueBuffer!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scaleInEvaluationCount)) {
            query["ScaleInEvaluationCount"] = request.scaleInEvaluationCount!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleOutEvaluationCount)) {
            query["ScaleOutEvaluationCount"] = request.scaleOutEvaluationCount!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleName)) {
            query["ScalingRuleName"] = request.scalingRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleType)) {
            query["ScalingRuleType"] = request.scalingRuleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stepAdjustments)) {
            query["StepAdjustments"] = request.stepAdjustments ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.targetValue)) {
            query["TargetValue"] = request.targetValue!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScalingRule",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScalingRule(_ request: CreateScalingRuleRequest) async throws -> CreateScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createScalingRuleWithOptions(request as! CreateScalingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScheduledTaskWithOptions(_ request: CreateScheduledTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScheduledTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desiredCapacity)) {
            query["DesiredCapacity"] = request.desiredCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.launchExpirationTime)) {
            query["LaunchExpirationTime"] = request.launchExpirationTime!;
        }
        if (!TeaUtils.Client.isUnset(request.launchTime)) {
            query["LaunchTime"] = request.launchTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxValue)) {
            query["MaxValue"] = request.maxValue!;
        }
        if (!TeaUtils.Client.isUnset(request.minValue)) {
            query["MinValue"] = request.minValue!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.recurrenceEndTime)) {
            query["RecurrenceEndTime"] = request.recurrenceEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recurrenceType)) {
            query["RecurrenceType"] = request.recurrenceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recurrenceValue)) {
            query["RecurrenceValue"] = request.recurrenceValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduledAction)) {
            query["ScheduledAction"] = request.scheduledAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduledTaskName)) {
            query["ScheduledTaskName"] = request.scheduledTaskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskEnabled)) {
            query["TaskEnabled"] = request.taskEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScheduledTask",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScheduledTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScheduledTask(_ request: CreateScheduledTaskRequest) async throws -> CreateScheduledTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createScheduledTaskWithOptions(request as! CreateScheduledTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deactivateScalingConfigurationWithOptions(_ request: DeactivateScalingConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeactivateScalingConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationId)) {
            query["ScalingConfigurationId"] = request.scalingConfigurationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeactivateScalingConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeactivateScalingConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deactivateScalingConfiguration(_ request: DeactivateScalingConfigurationRequest) async throws -> DeactivateScalingConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deactivateScalingConfigurationWithOptions(request as! DeactivateScalingConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlarmWithOptions(_ request: DeleteAlarmRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAlarmResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmTaskId)) {
            query["AlarmTaskId"] = request.alarmTaskId ?? "";
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAlarm",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAlarmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlarm(_ request: DeleteAlarmRequest) async throws -> DeleteAlarmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAlarmWithOptions(request as! DeleteAlarmRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDiagnoseReportWithOptions(_ request: DeleteDiagnoseReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDiagnoseReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDiagnoseReport",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDiagnoseReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDiagnoseReport(_ request: DeleteDiagnoseReportRequest) async throws -> DeleteDiagnoseReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDiagnoseReportWithOptions(request as! DeleteDiagnoseReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEciScalingConfigurationWithOptions(_ request: DeleteEciScalingConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEciScalingConfigurationResponse {
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
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationId)) {
            query["ScalingConfigurationId"] = request.scalingConfigurationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEciScalingConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEciScalingConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEciScalingConfiguration(_ request: DeleteEciScalingConfigurationRequest) async throws -> DeleteEciScalingConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEciScalingConfigurationWithOptions(request as! DeleteEciScalingConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLifecycleHookWithOptions(_ request: DeleteLifecycleHookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLifecycleHookResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lifecycleHookId)) {
            query["LifecycleHookId"] = request.lifecycleHookId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHookName)) {
            query["LifecycleHookName"] = request.lifecycleHookName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLifecycleHook",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLifecycleHookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLifecycleHook(_ request: DeleteLifecycleHookRequest) async throws -> DeleteLifecycleHookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLifecycleHookWithOptions(request as! DeleteLifecycleHookRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNotificationConfigurationWithOptions(_ request: DeleteNotificationConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNotificationConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.notificationArn)) {
            query["NotificationArn"] = request.notificationArn ?? "";
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNotificationConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNotificationConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNotificationConfiguration(_ request: DeleteNotificationConfigurationRequest) async throws -> DeleteNotificationConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNotificationConfigurationWithOptions(request as! DeleteNotificationConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScalingConfigurationWithOptions(_ request: DeleteScalingConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteScalingConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationId)) {
            query["ScalingConfigurationId"] = request.scalingConfigurationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteScalingConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteScalingConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScalingConfiguration(_ request: DeleteScalingConfigurationRequest) async throws -> DeleteScalingConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteScalingConfigurationWithOptions(request as! DeleteScalingConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScalingGroupWithOptions(_ request: DeleteScalingGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteScalingGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forceDelete)) {
            query["ForceDelete"] = request.forceDelete!;
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteScalingGroup",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteScalingGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScalingGroup(_ request: DeleteScalingGroupRequest) async throws -> DeleteScalingGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteScalingGroupWithOptions(request as! DeleteScalingGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScalingRuleWithOptions(_ request: DeleteScalingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteScalingRuleResponse {
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
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleId)) {
            query["ScalingRuleId"] = request.scalingRuleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteScalingRule",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScalingRule(_ request: DeleteScalingRuleRequest) async throws -> DeleteScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteScalingRuleWithOptions(request as! DeleteScalingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScheduledTaskWithOptions(_ request: DeleteScheduledTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteScheduledTaskResponse {
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
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduledTaskId)) {
            query["ScheduledTaskId"] = request.scheduledTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteScheduledTask",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteScheduledTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScheduledTask(_ request: DeleteScheduledTaskRequest) async throws -> DeleteScheduledTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteScheduledTaskWithOptions(request as! DeleteScheduledTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAlarmsWithOptions(_ request: DescribeAlarmsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAlarmsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmTaskId)) {
            query["AlarmTaskId"] = request.alarmTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isEnable)) {
            query["IsEnable"] = request.isEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.metricName)) {
            query["MetricName"] = request.metricName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricType)) {
            query["MetricType"] = request.metricType ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAlarms",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAlarmsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAlarms(_ request: DescribeAlarmsRequest) async throws -> DescribeAlarmsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAlarmsWithOptions(request as! DescribeAlarmsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAlertConfigurationWithOptions(_ request: DescribeAlertConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAlertConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAlertConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAlertConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAlertConfiguration(_ request: DescribeAlertConfigurationRequest) async throws -> DescribeAlertConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAlertConfigurationWithOptions(request as! DescribeAlertConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDiagnoseReportsWithOptions(_ request: DescribeDiagnoseReportsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDiagnoseReportsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDiagnoseReports",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDiagnoseReportsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDiagnoseReports(_ request: DescribeDiagnoseReportsRequest) async throws -> DescribeDiagnoseReportsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDiagnoseReportsWithOptions(request as! DescribeDiagnoseReportsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEciScalingConfigurationDetailWithOptions(_ request: DescribeEciScalingConfigurationDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEciScalingConfigurationDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outputFormat)) {
            query["OutputFormat"] = request.outputFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationId)) {
            query["ScalingConfigurationId"] = request.scalingConfigurationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEciScalingConfigurationDetail",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEciScalingConfigurationDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEciScalingConfigurationDetail(_ request: DescribeEciScalingConfigurationDetailRequest) async throws -> DescribeEciScalingConfigurationDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEciScalingConfigurationDetailWithOptions(request as! DescribeEciScalingConfigurationDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEciScalingConfigurationsWithOptions(_ request: DescribeEciScalingConfigurationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEciScalingConfigurationsResponse {
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationIds)) {
            query["ScalingConfigurationIds"] = request.scalingConfigurationIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationNames)) {
            query["ScalingConfigurationNames"] = request.scalingConfigurationNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEciScalingConfigurations",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEciScalingConfigurationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEciScalingConfigurations(_ request: DescribeEciScalingConfigurationsRequest) async throws -> DescribeEciScalingConfigurationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEciScalingConfigurationsWithOptions(request as! DescribeEciScalingConfigurationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeElasticStrengthWithOptions(_ request: DescribeElasticStrengthRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeElasticStrengthResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeElasticStrength",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeElasticStrengthResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeElasticStrength(_ request: DescribeElasticStrengthRequest) async throws -> DescribeElasticStrengthResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeElasticStrengthWithOptions(request as! DescribeElasticStrengthRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceRefreshesWithOptions(_ request: DescribeInstanceRefreshesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceRefreshesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceRefreshTaskIds)) {
            query["InstanceRefreshTaskIds"] = request.instanceRefreshTaskIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
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
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceRefreshes",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceRefreshesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceRefreshes(_ request: DescribeInstanceRefreshesRequest) async throws -> DescribeInstanceRefreshesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceRefreshesWithOptions(request as! DescribeInstanceRefreshesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLifecycleActionsWithOptions(_ request: DescribeLifecycleActionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLifecycleActionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lifecycleActionStatus)) {
            query["LifecycleActionStatus"] = request.lifecycleActionStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
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
        if (!TeaUtils.Client.isUnset(request.scalingActivityId)) {
            query["ScalingActivityId"] = request.scalingActivityId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLifecycleActions",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLifecycleActionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLifecycleActions(_ request: DescribeLifecycleActionsRequest) async throws -> DescribeLifecycleActionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLifecycleActionsWithOptions(request as! DescribeLifecycleActionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLifecycleHooksWithOptions(_ request: DescribeLifecycleHooksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLifecycleHooksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lifecycleHookIds)) {
            query["LifecycleHookIds"] = request.lifecycleHookIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHookName)) {
            query["LifecycleHookName"] = request.lifecycleHookName ?? "";
        }
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLifecycleHooks",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLifecycleHooksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLifecycleHooks(_ request: DescribeLifecycleHooksRequest) async throws -> DescribeLifecycleHooksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLifecycleHooksWithOptions(request as! DescribeLifecycleHooksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLimitationWithOptions(_ request: DescribeLimitationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLimitationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLimitation",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLimitationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLimitation(_ request: DescribeLimitationRequest) async throws -> DescribeLimitationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLimitationWithOptions(request as! DescribeLimitationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNotificationConfigurationsWithOptions(_ request: DescribeNotificationConfigurationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNotificationConfigurationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNotificationConfigurations",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNotificationConfigurationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNotificationConfigurations(_ request: DescribeNotificationConfigurationsRequest) async throws -> DescribeNotificationConfigurationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNotificationConfigurationsWithOptions(request as! DescribeNotificationConfigurationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNotificationTypesWithOptions(_ request: DescribeNotificationTypesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNotificationTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNotificationTypes",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNotificationTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNotificationTypes(_ request: DescribeNotificationTypesRequest) async throws -> DescribeNotificationTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNotificationTypesWithOptions(request as! DescribeNotificationTypesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePatternTypesWithOptions(_ request: DescribePatternTypesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePatternTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePatternTypes",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePatternTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePatternTypes(_ request: DescribePatternTypesRequest) async throws -> DescribePatternTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePatternTypesWithOptions(request as! DescribePatternTypesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["AcceptLanguage"] = request.acceptLanguage ?? "";
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2022-02-22",
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
    public func describeScalingActivitiesWithOptions(_ request: DescribeScalingActivitiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeScalingActivitiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceRefreshTaskId)) {
            query["InstanceRefreshTaskId"] = request.instanceRefreshTaskId ?? "";
        }
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingActivityIds)) {
            query["ScalingActivityIds"] = request.scalingActivityIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusCode)) {
            query["StatusCode"] = request.statusCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeScalingActivities",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeScalingActivitiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingActivities(_ request: DescribeScalingActivitiesRequest) async throws -> DescribeScalingActivitiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeScalingActivitiesWithOptions(request as! DescribeScalingActivitiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingActivityDetailWithOptions(_ request: DescribeScalingActivityDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeScalingActivityDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingActivityId)) {
            query["ScalingActivityId"] = request.scalingActivityId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeScalingActivityDetail",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeScalingActivityDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingActivityDetail(_ request: DescribeScalingActivityDetailRequest) async throws -> DescribeScalingActivityDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeScalingActivityDetailWithOptions(request as! DescribeScalingActivityDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingConfigurationsWithOptions(_ request: DescribeScalingConfigurationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeScalingConfigurationsResponse {
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationIds)) {
            query["ScalingConfigurationIds"] = request.scalingConfigurationIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationNames)) {
            query["ScalingConfigurationNames"] = request.scalingConfigurationNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeScalingConfigurations",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeScalingConfigurationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingConfigurations(_ request: DescribeScalingConfigurationsRequest) async throws -> DescribeScalingConfigurationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeScalingConfigurationsWithOptions(request as! DescribeScalingConfigurationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingGroupDetailWithOptions(_ request: DescribeScalingGroupDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeScalingGroupDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outputFormat)) {
            query["OutputFormat"] = request.outputFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeScalingGroupDetail",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeScalingGroupDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingGroupDetail(_ request: DescribeScalingGroupDetailRequest) async throws -> DescribeScalingGroupDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeScalingGroupDetailWithOptions(request as! DescribeScalingGroupDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingGroupDiagnoseDetailsWithOptions(_ request: DescribeScalingGroupDiagnoseDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeScalingGroupDiagnoseDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeScalingGroupDiagnoseDetails",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeScalingGroupDiagnoseDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingGroupDiagnoseDetails(_ request: DescribeScalingGroupDiagnoseDetailsRequest) async throws -> DescribeScalingGroupDiagnoseDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeScalingGroupDiagnoseDetailsWithOptions(request as! DescribeScalingGroupDiagnoseDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingGroupsWithOptions(_ request: DescribeScalingGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeScalingGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupType)) {
            query["GroupType"] = request.groupType ?? "";
        }
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupIds)) {
            query["ScalingGroupIds"] = request.scalingGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupName)) {
            query["ScalingGroupName"] = request.scalingGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupNames)) {
            query["ScalingGroupNames"] = request.scalingGroupNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeScalingGroups",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeScalingGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingGroups(_ request: DescribeScalingGroupsRequest) async throws -> DescribeScalingGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeScalingGroupsWithOptions(request as! DescribeScalingGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingInstancesWithOptions(_ request: DescribeScalingInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeScalingInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creationType)) {
            query["CreationType"] = request.creationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creationTypes)) {
            query["CreationTypes"] = request.creationTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.healthStatus)) {
            query["HealthStatus"] = request.healthStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleState)) {
            query["LifecycleState"] = request.lifecycleState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleStates)) {
            query["LifecycleStates"] = request.lifecycleStates ?? [];
        }
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingActivityId)) {
            query["ScalingActivityId"] = request.scalingActivityId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationId)) {
            query["ScalingConfigurationId"] = request.scalingConfigurationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeScalingInstances",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeScalingInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingInstances(_ request: DescribeScalingInstancesRequest) async throws -> DescribeScalingInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeScalingInstancesWithOptions(request as! DescribeScalingInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingRulesWithOptions(_ request: DescribeScalingRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeScalingRulesResponse {
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleAris)) {
            query["ScalingRuleAris"] = request.scalingRuleAris ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleIds)) {
            query["ScalingRuleIds"] = request.scalingRuleIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleNames)) {
            query["ScalingRuleNames"] = request.scalingRuleNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleType)) {
            query["ScalingRuleType"] = request.scalingRuleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showAlarmRules)) {
            query["ShowAlarmRules"] = request.showAlarmRules!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeScalingRules",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeScalingRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScalingRules(_ request: DescribeScalingRulesRequest) async throws -> DescribeScalingRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeScalingRulesWithOptions(request as! DescribeScalingRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScheduledTasksWithOptions(_ request: DescribeScheduledTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeScheduledTasksResponse {
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
        if (!TeaUtils.Client.isUnset(request.recurrenceType)) {
            query["RecurrenceType"] = request.recurrenceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recurrenceValue)) {
            query["RecurrenceValue"] = request.recurrenceValue ?? "";
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduledActions)) {
            query["ScheduledActions"] = request.scheduledActions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scheduledTaskIds)) {
            query["ScheduledTaskIds"] = request.scheduledTaskIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scheduledTaskNames)) {
            query["ScheduledTaskNames"] = request.scheduledTaskNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taskEnabled)) {
            query["TaskEnabled"] = request.taskEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeScheduledTasks",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeScheduledTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScheduledTasks(_ request: DescribeScheduledTasksRequest) async throws -> DescribeScheduledTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeScheduledTasksWithOptions(request as! DescribeScheduledTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachAlbServerGroupsWithOptions(_ request: DetachAlbServerGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachAlbServerGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.albServerGroups)) {
            query["AlbServerGroups"] = request.albServerGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceDetach)) {
            query["ForceDetach"] = request.forceDetach!;
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachAlbServerGroups",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachAlbServerGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachAlbServerGroups(_ request: DetachAlbServerGroupsRequest) async throws -> DetachAlbServerGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachAlbServerGroupsWithOptions(request as! DetachAlbServerGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachDBInstancesWithOptions(_ request: DetachDBInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachDBInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstances)) {
            query["DBInstances"] = request.DBInstances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.forceDetach)) {
            query["ForceDetach"] = request.forceDetach!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.removeSecurityGroup)) {
            query["RemoveSecurityGroup"] = request.removeSecurityGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachDBInstances",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachDBInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachDBInstances(_ request: DetachDBInstancesRequest) async throws -> DetachDBInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachDBInstancesWithOptions(request as! DetachDBInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachInstancesWithOptions(_ request: DetachInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.decreaseDesiredCapacity)) {
            query["DecreaseDesiredCapacity"] = request.decreaseDesiredCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.detachOption)) {
            query["DetachOption"] = request.detachOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreInvalidInstance)) {
            query["IgnoreInvalidInstance"] = request.ignoreInvalidInstance!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHook)) {
            query["LifecycleHook"] = request.lifecycleHook!;
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachInstances",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachInstances(_ request: DetachInstancesRequest) async throws -> DetachInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachInstancesWithOptions(request as! DetachInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachLoadBalancersWithOptions(_ request: DetachLoadBalancersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachLoadBalancersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.async)) {
            query["Async"] = request.async!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceDetach)) {
            query["ForceDetach"] = request.forceDetach!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancers)) {
            query["LoadBalancers"] = request.loadBalancers ?? [];
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachLoadBalancers",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachLoadBalancersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachLoadBalancers(_ request: DetachLoadBalancersRequest) async throws -> DetachLoadBalancersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachLoadBalancersWithOptions(request as! DetachLoadBalancersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachServerGroupsWithOptions(_ request: DetachServerGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachServerGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceDetach)) {
            query["ForceDetach"] = request.forceDetach!;
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverGroups)) {
            query["ServerGroups"] = request.serverGroups ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachServerGroups",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachServerGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachServerGroups(_ request: DetachServerGroupsRequest) async throws -> DetachServerGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachServerGroupsWithOptions(request as! DetachServerGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachVServerGroupsWithOptions(_ request: DetachVServerGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachVServerGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceDetach)) {
            query["ForceDetach"] = request.forceDetach!;
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.VServerGroups)) {
            query["VServerGroups"] = request.VServerGroups ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachVServerGroups",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachVServerGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachVServerGroups(_ request: DetachVServerGroupsRequest) async throws -> DetachVServerGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachVServerGroupsWithOptions(request as! DetachVServerGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableAlarmWithOptions(_ request: DisableAlarmRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableAlarmResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmTaskId)) {
            query["AlarmTaskId"] = request.alarmTaskId ?? "";
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableAlarm",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableAlarmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableAlarm(_ request: DisableAlarmRequest) async throws -> DisableAlarmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableAlarmWithOptions(request as! DisableAlarmRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableScalingGroupWithOptions(_ request: DisableScalingGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableScalingGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableScalingGroup",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableScalingGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableScalingGroup(_ request: DisableScalingGroupRequest) async throws -> DisableScalingGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableScalingGroupWithOptions(request as! DisableScalingGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableAlarmWithOptions(_ request: EnableAlarmRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableAlarmResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmTaskId)) {
            query["AlarmTaskId"] = request.alarmTaskId ?? "";
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableAlarm",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableAlarmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableAlarm(_ request: EnableAlarmRequest) async throws -> EnableAlarmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableAlarmWithOptions(request as! EnableAlarmRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableScalingGroupWithOptions(_ request: EnableScalingGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableScalingGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activeScalingConfigurationId)) {
            query["ActiveScalingConfigurationId"] = request.activeScalingConfigurationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.launchTemplateId)) {
            query["LaunchTemplateId"] = request.launchTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.launchTemplateOverrides)) {
            query["LaunchTemplateOverrides"] = request.launchTemplateOverrides ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.launchTemplateVersion)) {
            query["LaunchTemplateVersion"] = request.launchTemplateVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerWeights)) {
            query["LoadBalancerWeights"] = request.loadBalancerWeights ?? [];
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableScalingGroup",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableScalingGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableScalingGroup(_ request: EnableScalingGroupRequest) async throws -> EnableScalingGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableScalingGroupWithOptions(request as! EnableScalingGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterStandbyWithOptions(_ request: EnterStandbyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterStandbyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.async)) {
            query["Async"] = request.async!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterStandby",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterStandbyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterStandby(_ request: EnterStandbyRequest) async throws -> EnterStandbyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterStandbyWithOptions(request as! EnterStandbyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeScalingRuleWithOptions(_ request: ExecuteScalingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.breachThreshold)) {
            query["BreachThreshold"] = request.breachThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricValue)) {
            query["MetricValue"] = request.metricValue!;
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
        if (!TeaUtils.Client.isUnset(request.scalingRuleAri)) {
            query["ScalingRuleAri"] = request.scalingRuleAri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteScalingRule",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeScalingRule(_ request: ExecuteScalingRuleRequest) async throws -> ExecuteScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeScalingRuleWithOptions(request as! ExecuteScalingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exitStandbyWithOptions(_ request: ExitStandbyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExitStandbyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.async)) {
            query["Async"] = request.async!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExitStandby",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExitStandbyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exitStandby(_ request: ExitStandbyRequest) async throws -> ExitStandbyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await exitStandbyWithOptions(request as! ExitStandbyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagKeysWithOptions(_ request: ListTagKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagKeys",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagKeys(_ request: ListTagKeysRequest) async throws -> ListTagKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagKeysWithOptions(request as! ListTagKeysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2022-02-22",
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
    public func listTagValuesWithOptions(_ request: ListTagValuesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagValuesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagValues",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagValuesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagValues(_ request: ListTagValuesRequest) async throws -> ListTagValuesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagValuesWithOptions(request as! ListTagValuesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAlarmWithOptions(_ request: ModifyAlarmRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAlarmResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmActions)) {
            query["AlarmActions"] = request.alarmActions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.alarmTaskId)) {
            query["AlarmTaskId"] = request.alarmTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comparisonOperator)) {
            query["ComparisonOperator"] = request.comparisonOperator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dimensions)) {
            query["Dimensions"] = request.dimensions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.effective)) {
            query["Effective"] = request.effective ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.evaluationCount)) {
            query["EvaluationCount"] = request.evaluationCount!;
        }
        if (!TeaUtils.Client.isUnset(request.expressions)) {
            query["Expressions"] = request.expressions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.expressionsLogicOperator)) {
            query["ExpressionsLogicOperator"] = request.expressionsLogicOperator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.metricName)) {
            query["MetricName"] = request.metricName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricType)) {
            query["MetricType"] = request.metricType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statistics)) {
            query["Statistics"] = request.statistics ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threshold)) {
            query["Threshold"] = request.threshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAlarm",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAlarmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAlarm(_ request: ModifyAlarmRequest) async throws -> ModifyAlarmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAlarmWithOptions(request as! ModifyAlarmRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAlertConfigurationWithOptions(_ request: ModifyAlertConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAlertConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scaleStatuses)) {
            query["ScaleStatuses"] = request.scaleStatuses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAlertConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAlertConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAlertConfiguration(_ request: ModifyAlertConfigurationRequest) async throws -> ModifyAlertConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAlertConfigurationWithOptions(request as! ModifyAlertConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEciScalingConfigurationWithOptions(_ request: ModifyEciScalingConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyEciScalingConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrRegistryInfos)) {
            query["AcrRegistryInfos"] = request.acrRegistryInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.activeDeadlineSeconds)) {
            query["ActiveDeadlineSeconds"] = request.activeDeadlineSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.autoCreateEip)) {
            query["AutoCreateEip"] = request.autoCreateEip!;
        }
        if (!TeaUtils.Client.isUnset(request.autoMatchImageCache)) {
            query["AutoMatchImageCache"] = request.autoMatchImageCache!;
        }
        if (!TeaUtils.Client.isUnset(request.containerGroupName)) {
            query["ContainerGroupName"] = request.containerGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containers)) {
            query["Containers"] = request.containers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.containersUpdateType)) {
            query["ContainersUpdateType"] = request.containersUpdateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.costOptimization)) {
            query["CostOptimization"] = request.costOptimization!;
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            query["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.cpuOptionsCore)) {
            query["CpuOptionsCore"] = request.cpuOptionsCore!;
        }
        if (!TeaUtils.Client.isUnset(request.cpuOptionsThreadsPerCore)) {
            query["CpuOptionsThreadsPerCore"] = request.cpuOptionsThreadsPerCore!;
        }
        if (!TeaUtils.Client.isUnset(request.dataCacheBucket)) {
            query["DataCacheBucket"] = request.dataCacheBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataCacheBurstingEnabled)) {
            query["DataCacheBurstingEnabled"] = request.dataCacheBurstingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.dataCachePL)) {
            query["DataCachePL"] = request.dataCachePL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataCacheProvisionedIops)) {
            query["DataCacheProvisionedIops"] = request.dataCacheProvisionedIops!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dnsConfigNameServers)) {
            query["DnsConfigNameServers"] = request.dnsConfigNameServers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dnsConfigOptions)) {
            query["DnsConfigOptions"] = request.dnsConfigOptions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dnsConfigSearchs)) {
            query["DnsConfigSearchs"] = request.dnsConfigSearchs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dnsPolicy)) {
            query["DnsPolicy"] = request.dnsPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.egressBandwidth)) {
            query["EgressBandwidth"] = request.egressBandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.eipBandwidth)) {
            query["EipBandwidth"] = request.eipBandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSls)) {
            query["EnableSls"] = request.enableSls!;
        }
        if (!TeaUtils.Client.isUnset(request.ephemeralStorage)) {
            query["EphemeralStorage"] = request.ephemeralStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.gpuDriverVersion)) {
            query["GpuDriverVersion"] = request.gpuDriverVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostAliases)) {
            query["HostAliases"] = request.hostAliases ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageRegistryCredentials)) {
            query["ImageRegistryCredentials"] = request.imageRegistryCredentials ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.imageSnapshotId)) {
            query["ImageSnapshotId"] = request.imageSnapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ingressBandwidth)) {
            query["IngressBandwidth"] = request.ingressBandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.initContainers)) {
            query["InitContainers"] = request.initContainers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceFamilyLevel)) {
            query["InstanceFamilyLevel"] = request.instanceFamilyLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceTypes)) {
            query["InstanceTypes"] = request.instanceTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ipv6AddressCount)) {
            query["Ipv6AddressCount"] = request.ipv6AddressCount!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerWeight)) {
            query["LoadBalancerWeight"] = request.loadBalancerWeight!;
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            query["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.ntpServers)) {
            query["NtpServers"] = request.ntpServers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.override_)) {
            query["Override"] = request.override_!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ramRoleName)) {
            query["RamRoleName"] = request.ramRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restartPolicy)) {
            query["RestartPolicy"] = request.restartPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationId)) {
            query["ScalingConfigurationId"] = request.scalingConfigurationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationName)) {
            query["ScalingConfigurationName"] = request.scalingConfigurationName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityContextSysCtls)) {
            query["SecurityContextSysCtls"] = request.securityContextSysCtls ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spotPriceLimit)) {
            query["SpotPriceLimit"] = request.spotPriceLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.spotStrategy)) {
            query["SpotStrategy"] = request.spotStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.terminationGracePeriodSeconds)) {
            query["TerminationGracePeriodSeconds"] = request.terminationGracePeriodSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.volumes)) {
            query["Volumes"] = request.volumes ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyEciScalingConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyEciScalingConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEciScalingConfiguration(_ request: ModifyEciScalingConfigurationRequest) async throws -> ModifyEciScalingConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyEciScalingConfigurationWithOptions(request as! ModifyEciScalingConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceAttributeWithOptions(_ request: ModifyInstanceAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entrusted)) {
            query["Entrusted"] = request.entrusted!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceAttribute",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceAttribute(_ request: ModifyInstanceAttributeRequest) async throws -> ModifyInstanceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceAttributeWithOptions(request as! ModifyInstanceAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLifecycleHookWithOptions(_ request: ModifyLifecycleHookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyLifecycleHookResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defaultResult)) {
            query["DefaultResult"] = request.defaultResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.heartbeatTimeout)) {
            query["HeartbeatTimeout"] = request.heartbeatTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHookId)) {
            query["LifecycleHookId"] = request.lifecycleHookId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHookName)) {
            query["LifecycleHookName"] = request.lifecycleHookName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHookStatus)) {
            query["LifecycleHookStatus"] = request.lifecycleHookStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleTransition)) {
            query["LifecycleTransition"] = request.lifecycleTransition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationArn)) {
            query["NotificationArn"] = request.notificationArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationMetadata)) {
            query["NotificationMetadata"] = request.notificationMetadata ?? "";
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyLifecycleHook",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyLifecycleHookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLifecycleHook(_ request: ModifyLifecycleHookRequest) async throws -> ModifyLifecycleHookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyLifecycleHookWithOptions(request as! ModifyLifecycleHookRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNotificationConfigurationWithOptions(_ request: ModifyNotificationConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNotificationConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.messageEncoding)) {
            query["MessageEncoding"] = request.messageEncoding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationArn)) {
            query["NotificationArn"] = request.notificationArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationTypes)) {
            query["NotificationTypes"] = request.notificationTypes ?? [];
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            query["TimeZone"] = request.timeZone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNotificationConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNotificationConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNotificationConfiguration(_ request: ModifyNotificationConfigurationRequest) async throws -> ModifyNotificationConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyNotificationConfigurationWithOptions(request as! ModifyNotificationConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScalingConfigurationWithOptions(_ tmpReq: ModifyScalingConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyScalingConfigurationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyScalingConfigurationShrinkRequest = ModifyScalingConfigurationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.schedulerOptions)) {
            request.schedulerOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.schedulerOptions, "SchedulerOptions", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.affinity)) {
            query["Affinity"] = request.affinity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            query["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.creditSpecification)) {
            query["CreditSpecification"] = request.creditSpecification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customPriorities)) {
            query["CustomPriorities"] = request.customPriorities ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dataDisks)) {
            query["DataDisks"] = request.dataDisks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedHostClusterId)) {
            query["DedicatedHostClusterId"] = request.dedicatedHostClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedHostId)) {
            query["DedicatedHostId"] = request.dedicatedHostId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deletionProtection)) {
            query["DeletionProtection"] = request.deletionProtection!;
        }
        if (!TeaUtils.Client.isUnset(request.deploymentSetId)) {
            query["DeploymentSetId"] = request.deploymentSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hpcClusterId)) {
            query["HpcClusterId"] = request.hpcClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpEndpoint)) {
            query["HttpEndpoint"] = request.httpEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpTokens)) {
            query["HttpTokens"] = request.httpTokens ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageFamily)) {
            query["ImageFamily"] = request.imageFamily ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            query["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceDescription)) {
            query["InstanceDescription"] = request.instanceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instancePatternInfos)) {
            query["InstancePatternInfos"] = request.instancePatternInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceTypeOverrides)) {
            query["InstanceTypeOverrides"] = request.instanceTypeOverrides ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceTypes)) {
            query["InstanceTypes"] = request.instanceTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.internetChargeType)) {
            query["InternetChargeType"] = request.internetChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetMaxBandwidthIn)) {
            query["InternetMaxBandwidthIn"] = request.internetMaxBandwidthIn!;
        }
        if (!TeaUtils.Client.isUnset(request.internetMaxBandwidthOut)) {
            query["InternetMaxBandwidthOut"] = request.internetMaxBandwidthOut!;
        }
        if (!TeaUtils.Client.isUnset(request.ioOptimized)) {
            query["IoOptimized"] = request.ioOptimized ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipv6AddressCount)) {
            query["Ipv6AddressCount"] = request.ipv6AddressCount!;
        }
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerWeight)) {
            query["LoadBalancerWeight"] = request.loadBalancerWeight!;
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            query["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaces)) {
            query["NetworkInterfaces"] = request.networkInterfaces ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.override_)) {
            query["Override"] = request.override_!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passwordInherit)) {
            query["PasswordInherit"] = request.passwordInherit!;
        }
        if (!TeaUtils.Client.isUnset(request.ramRoleName)) {
            query["RamRoleName"] = request.ramRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourcePoolOptions)) {
            query["ResourcePoolOptions"] = request.resourcePoolOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationId)) {
            query["ScalingConfigurationId"] = request.scalingConfigurationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingConfigurationName)) {
            query["ScalingConfigurationName"] = request.scalingConfigurationName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedulerOptionsShrink)) {
            query["SchedulerOptions"] = request.schedulerOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupIds)) {
            query["SecurityGroupIds"] = request.securityGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.securityOptions)) {
            query["SecurityOptions"] = request.securityOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.spotDuration)) {
            query["SpotDuration"] = request.spotDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.spotInterruptionBehavior)) {
            query["SpotInterruptionBehavior"] = request.spotInterruptionBehavior ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spotPriceLimits)) {
            query["SpotPriceLimits"] = request.spotPriceLimits ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.spotStrategy)) {
            query["SpotStrategy"] = request.spotStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageSetId)) {
            query["StorageSetId"] = request.storageSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageSetPartitionNumber)) {
            query["StorageSetPartitionNumber"] = request.storageSetPartitionNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.systemDiskCategories)) {
            query["SystemDiskCategories"] = request.systemDiskCategories ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenancy)) {
            query["Tenancy"] = request.tenancy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageOptions)) {
            query["ImageOptions"] = request.imageOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.privatePoolOptions)) {
            query["PrivatePoolOptions"] = request.privatePoolOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.systemDisk)) {
            query["SystemDisk"] = request.systemDisk!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyScalingConfiguration",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyScalingConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScalingConfiguration(_ request: ModifyScalingConfigurationRequest) async throws -> ModifyScalingConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyScalingConfigurationWithOptions(request as! ModifyScalingConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScalingGroupWithOptions(_ request: ModifyScalingGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyScalingGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activeScalingConfigurationId)) {
            query["ActiveScalingConfigurationId"] = request.activeScalingConfigurationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.allocationStrategy)) {
            query["AllocationStrategy"] = request.allocationStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRebalance)) {
            query["AutoRebalance"] = request.autoRebalance!;
        }
        if (!TeaUtils.Client.isUnset(request.azBalance)) {
            query["AzBalance"] = request.azBalance!;
        }
        if (!TeaUtils.Client.isUnset(request.balanceMode)) {
            query["BalanceMode"] = request.balanceMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.capacityOptions)) {
            query["CapacityOptions"] = request.capacityOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.compensateWithOnDemand)) {
            query["CompensateWithOnDemand"] = request.compensateWithOnDemand!;
        }
        if (!TeaUtils.Client.isUnset(request.customPolicyARN)) {
            query["CustomPolicyARN"] = request.customPolicyARN ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultCooldown)) {
            query["DefaultCooldown"] = request.defaultCooldown!;
        }
        if (!TeaUtils.Client.isUnset(request.desiredCapacity)) {
            query["DesiredCapacity"] = request.desiredCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.disableDesiredCapacity)) {
            query["DisableDesiredCapacity"] = request.disableDesiredCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.groupDeletionProtection)) {
            query["GroupDeletionProtection"] = request.groupDeletionProtection!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckType)) {
            query["HealthCheckType"] = request.healthCheckType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckTypes)) {
            query["HealthCheckTypes"] = request.healthCheckTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.launchTemplateId)) {
            query["LaunchTemplateId"] = request.launchTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.launchTemplateOverrides)) {
            query["LaunchTemplateOverrides"] = request.launchTemplateOverrides ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.launchTemplateVersion)) {
            query["LaunchTemplateVersion"] = request.launchTemplateVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxInstanceLifetime)) {
            query["MaxInstanceLifetime"] = request.maxInstanceLifetime!;
        }
        if (!TeaUtils.Client.isUnset(request.maxSize)) {
            query["MaxSize"] = request.maxSize!;
        }
        if (!TeaUtils.Client.isUnset(request.minSize)) {
            query["MinSize"] = request.minSize!;
        }
        if (!TeaUtils.Client.isUnset(request.multiAZPolicy)) {
            query["MultiAZPolicy"] = request.multiAZPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onDemandBaseCapacity)) {
            query["OnDemandBaseCapacity"] = request.onDemandBaseCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.onDemandPercentageAboveBaseCapacity)) {
            query["OnDemandPercentageAboveBaseCapacity"] = request.onDemandPercentageAboveBaseCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.removalPolicies)) {
            query["RemovalPolicies"] = request.removalPolicies ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupName)) {
            query["ScalingGroupName"] = request.scalingGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingPolicy)) {
            query["ScalingPolicy"] = request.scalingPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spotAllocationStrategy)) {
            query["SpotAllocationStrategy"] = request.spotAllocationStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spotInstancePools)) {
            query["SpotInstancePools"] = request.spotInstancePools!;
        }
        if (!TeaUtils.Client.isUnset(request.spotInstanceRemedy)) {
            query["SpotInstanceRemedy"] = request.spotInstanceRemedy!;
        }
        if (!TeaUtils.Client.isUnset(request.stopInstanceTimeout)) {
            query["StopInstanceTimeout"] = request.stopInstanceTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchIds)) {
            query["VSwitchIds"] = request.vSwitchIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyScalingGroup",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyScalingGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScalingGroup(_ request: ModifyScalingGroupRequest) async throws -> ModifyScalingGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyScalingGroupWithOptions(request as! ModifyScalingGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScalingRuleWithOptions(_ request: ModifyScalingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adjustmentType)) {
            query["AdjustmentType"] = request.adjustmentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.adjustmentValue)) {
            query["AdjustmentValue"] = request.adjustmentValue!;
        }
        if (!TeaUtils.Client.isUnset(request.alarmDimensions)) {
            query["AlarmDimensions"] = request.alarmDimensions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.alarmOptions)) {
            query["AlarmOptions"] = request.alarmOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.cooldown)) {
            query["Cooldown"] = request.cooldown!;
        }
        if (!TeaUtils.Client.isUnset(request.disableScaleIn)) {
            query["DisableScaleIn"] = request.disableScaleIn!;
        }
        if (!TeaUtils.Client.isUnset(request.estimatedInstanceWarmup)) {
            query["EstimatedInstanceWarmup"] = request.estimatedInstanceWarmup!;
        }
        if (!TeaUtils.Client.isUnset(request.hybridMetrics)) {
            query["HybridMetrics"] = request.hybridMetrics ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hybridMonitorNamespace)) {
            query["HybridMonitorNamespace"] = request.hybridMonitorNamespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initialMaxSize)) {
            query["InitialMaxSize"] = request.initialMaxSize!;
        }
        if (!TeaUtils.Client.isUnset(request.metricName)) {
            query["MetricName"] = request.metricName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricType)) {
            query["MetricType"] = request.metricType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minAdjustmentMagnitude)) {
            query["MinAdjustmentMagnitude"] = request.minAdjustmentMagnitude!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.predictiveScalingMode)) {
            query["PredictiveScalingMode"] = request.predictiveScalingMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.predictiveTaskBufferTime)) {
            query["PredictiveTaskBufferTime"] = request.predictiveTaskBufferTime!;
        }
        if (!TeaUtils.Client.isUnset(request.predictiveValueBehavior)) {
            query["PredictiveValueBehavior"] = request.predictiveValueBehavior ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.predictiveValueBuffer)) {
            query["PredictiveValueBuffer"] = request.predictiveValueBuffer!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleInEvaluationCount)) {
            query["ScaleInEvaluationCount"] = request.scaleInEvaluationCount!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleOutEvaluationCount)) {
            query["ScaleOutEvaluationCount"] = request.scaleOutEvaluationCount!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleId)) {
            query["ScalingRuleId"] = request.scalingRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleName)) {
            query["ScalingRuleName"] = request.scalingRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stepAdjustments)) {
            query["StepAdjustments"] = request.stepAdjustments ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.targetValue)) {
            query["TargetValue"] = request.targetValue!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyScalingRule",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScalingRule(_ request: ModifyScalingRuleRequest) async throws -> ModifyScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyScalingRuleWithOptions(request as! ModifyScalingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScheduledTaskWithOptions(_ request: ModifyScheduledTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyScheduledTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desiredCapacity)) {
            query["DesiredCapacity"] = request.desiredCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.launchExpirationTime)) {
            query["LaunchExpirationTime"] = request.launchExpirationTime!;
        }
        if (!TeaUtils.Client.isUnset(request.launchTime)) {
            query["LaunchTime"] = request.launchTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxValue)) {
            query["MaxValue"] = request.maxValue!;
        }
        if (!TeaUtils.Client.isUnset(request.minValue)) {
            query["MinValue"] = request.minValue!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.recurrenceEndTime)) {
            query["RecurrenceEndTime"] = request.recurrenceEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recurrenceType)) {
            query["RecurrenceType"] = request.recurrenceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recurrenceValue)) {
            query["RecurrenceValue"] = request.recurrenceValue ?? "";
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduledAction)) {
            query["ScheduledAction"] = request.scheduledAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduledTaskId)) {
            query["ScheduledTaskId"] = request.scheduledTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduledTaskName)) {
            query["ScheduledTaskName"] = request.scheduledTaskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskEnabled)) {
            query["TaskEnabled"] = request.taskEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyScheduledTask",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyScheduledTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScheduledTask(_ request: ModifyScheduledTaskRequest) async throws -> ModifyScheduledTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyScheduledTaskWithOptions(request as! ModifyScheduledTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebalanceInstancesWithOptions(_ request: RebalanceInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RebalanceInstancesResponse {
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
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebalanceInstances",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebalanceInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebalanceInstances(_ request: RebalanceInstancesRequest) async throws -> RebalanceInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rebalanceInstancesWithOptions(request as! RebalanceInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recordLifecycleActionHeartbeatWithOptions(_ request: RecordLifecycleActionHeartbeatRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecordLifecycleActionHeartbeatResponse {
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
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.heartbeatTimeout)) {
            query["heartbeatTimeout"] = request.heartbeatTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleActionToken)) {
            query["lifecycleActionToken"] = request.lifecycleActionToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHookId)) {
            query["lifecycleHookId"] = request.lifecycleHookId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecordLifecycleActionHeartbeat",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecordLifecycleActionHeartbeatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recordLifecycleActionHeartbeat(_ request: RecordLifecycleActionHeartbeatRequest) async throws -> RecordLifecycleActionHeartbeatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recordLifecycleActionHeartbeatWithOptions(request as! RecordLifecycleActionHeartbeatRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeInstancesWithOptions(_ tmpReq: RemoveInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveInstancesShrinkRequest = RemoveInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.lifecycleHookContext)) {
            request.lifecycleHookContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lifecycleHookContext, "LifecycleHookContext", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.decreaseDesiredCapacity)) {
            query["DecreaseDesiredCapacity"] = request.decreaseDesiredCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.ignoreInvalidInstance)) {
            query["IgnoreInvalidInstance"] = request.ignoreInvalidInstance!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHookContextShrink)) {
            query["LifecycleHookContext"] = request.lifecycleHookContextShrink ?? "";
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
        if (!TeaUtils.Client.isUnset(request.removePolicy)) {
            query["RemovePolicy"] = request.removePolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stopInstanceTimeout)) {
            query["StopInstanceTimeout"] = request.stopInstanceTimeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveInstances",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeInstances(_ request: RemoveInstancesRequest) async throws -> RemoveInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeInstancesWithOptions(request as! RemoveInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeInstanceRefreshWithOptions(_ request: ResumeInstanceRefreshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeInstanceRefreshResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceRefreshTaskId)) {
            query["InstanceRefreshTaskId"] = request.instanceRefreshTaskId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeInstanceRefresh",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeInstanceRefreshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeInstanceRefresh(_ request: ResumeInstanceRefreshRequest) async throws -> ResumeInstanceRefreshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resumeInstanceRefreshWithOptions(request as! ResumeInstanceRefreshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeProcessesWithOptions(_ request: ResumeProcessesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeProcessesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.processes)) {
            query["Processes"] = request.processes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeProcesses",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeProcessesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeProcesses(_ request: ResumeProcessesRequest) async throws -> ResumeProcessesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resumeProcessesWithOptions(request as! ResumeProcessesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackInstanceRefreshWithOptions(_ request: RollbackInstanceRefreshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RollbackInstanceRefreshResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceRefreshTaskId)) {
            query["InstanceRefreshTaskId"] = request.instanceRefreshTaskId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RollbackInstanceRefresh",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RollbackInstanceRefreshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackInstanceRefresh(_ request: RollbackInstanceRefreshRequest) async throws -> RollbackInstanceRefreshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rollbackInstanceRefreshWithOptions(request as! RollbackInstanceRefreshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleWithAdjustmentWithOptions(_ tmpReq: ScaleWithAdjustmentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScaleWithAdjustmentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ScaleWithAdjustmentShrinkRequest = ScaleWithAdjustmentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.lifecycleHookContext)) {
            request.lifecycleHookContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lifecycleHookContext, "LifecycleHookContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.overrides)) {
            request.overridesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.overrides, "Overrides", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityMetadata)) {
            query["ActivityMetadata"] = request.activityMetadata ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.adjustmentType)) {
            query["AdjustmentType"] = request.adjustmentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.adjustmentValue)) {
            query["AdjustmentValue"] = request.adjustmentValue!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionMode)) {
            query["ExecutionMode"] = request.executionMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycleHookContextShrink)) {
            query["LifecycleHookContext"] = request.lifecycleHookContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minAdjustmentMagnitude)) {
            query["MinAdjustmentMagnitude"] = request.minAdjustmentMagnitude!;
        }
        if (!TeaUtils.Client.isUnset(request.overridesShrink)) {
            query["Overrides"] = request.overridesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.parallelTask)) {
            query["ParallelTask"] = request.parallelTask!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncActivity)) {
            query["SyncActivity"] = request.syncActivity!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScaleWithAdjustment",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScaleWithAdjustmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleWithAdjustment(_ request: ScaleWithAdjustmentRequest) async throws -> ScaleWithAdjustmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await scaleWithAdjustmentWithOptions(request as! ScaleWithAdjustmentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setGroupDeletionProtectionWithOptions(_ request: SetGroupDeletionProtectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetGroupDeletionProtectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupDeletionProtection)) {
            query["GroupDeletionProtection"] = request.groupDeletionProtection!;
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetGroupDeletionProtection",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetGroupDeletionProtectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setGroupDeletionProtection(_ request: SetGroupDeletionProtectionRequest) async throws -> SetGroupDeletionProtectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setGroupDeletionProtectionWithOptions(request as! SetGroupDeletionProtectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setInstanceHealthWithOptions(_ request: SetInstanceHealthRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetInstanceHealthResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.healthStatus)) {
            query["HealthStatus"] = request.healthStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetInstanceHealth",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetInstanceHealthResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setInstanceHealth(_ request: SetInstanceHealthRequest) async throws -> SetInstanceHealthResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setInstanceHealthWithOptions(request as! SetInstanceHealthRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setInstancesProtectionWithOptions(_ request: SetInstancesProtectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetInstancesProtectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.protectedFromScaleIn)) {
            query["ProtectedFromScaleIn"] = request.protectedFromScaleIn!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetInstancesProtection",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetInstancesProtectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setInstancesProtection(_ request: SetInstancesProtectionRequest) async throws -> SetInstancesProtectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setInstancesProtectionWithOptions(request as! SetInstancesProtectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startInstanceRefreshWithOptions(_ request: StartInstanceRefreshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartInstanceRefreshResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkpointPauseTime)) {
            query["CheckpointPauseTime"] = request.checkpointPauseTime!;
        }
        if (!TeaUtils.Client.isUnset(request.checkpoints)) {
            query["Checkpoints"] = request.checkpoints ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desiredConfiguration)) {
            query["DesiredConfiguration"] = request.desiredConfiguration!;
        }
        if (!TeaUtils.Client.isUnset(request.maxHealthyPercentage)) {
            query["MaxHealthyPercentage"] = request.maxHealthyPercentage!;
        }
        if (!TeaUtils.Client.isUnset(request.minHealthyPercentage)) {
            query["MinHealthyPercentage"] = request.minHealthyPercentage!;
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipMatching)) {
            query["SkipMatching"] = request.skipMatching!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartInstanceRefresh",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartInstanceRefreshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startInstanceRefresh(_ request: StartInstanceRefreshRequest) async throws -> StartInstanceRefreshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startInstanceRefreshWithOptions(request as! StartInstanceRefreshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendInstanceRefreshWithOptions(_ request: SuspendInstanceRefreshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendInstanceRefreshResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceRefreshTaskId)) {
            query["InstanceRefreshTaskId"] = request.instanceRefreshTaskId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendInstanceRefresh",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendInstanceRefreshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendInstanceRefresh(_ request: SuspendInstanceRefreshRequest) async throws -> SuspendInstanceRefreshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await suspendInstanceRefreshWithOptions(request as! SuspendInstanceRefreshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendProcessesWithOptions(_ request: SuspendProcessesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendProcessesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.processes)) {
            query["Processes"] = request.processes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroupId)) {
            query["ScalingGroupId"] = request.scalingGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendProcesses",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendProcessesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendProcesses(_ request: SuspendProcessesRequest) async throws -> SuspendProcessesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await suspendProcessesWithOptions(request as! SuspendProcessesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2022-02-22",
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
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeys)) {
            query["TagKeys"] = request.tagKeys ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2022-02-22",
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
    public func verifyAuthenticationWithOptions(_ request: VerifyAuthenticationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyAuthenticationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.onlyCheck)) {
            query["OnlyCheck"] = request.onlyCheck!;
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
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyAuthentication",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyAuthenticationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyAuthentication(_ request: VerifyAuthenticationRequest) async throws -> VerifyAuthenticationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyAuthenticationWithOptions(request as! VerifyAuthenticationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyUserWithOptions(_ request: VerifyUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyUser",
            "version": "2022-02-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyUser(_ request: VerifyUserRequest) async throws -> VerifyUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyUserWithOptions(request as! VerifyUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
