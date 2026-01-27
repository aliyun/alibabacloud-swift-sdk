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
            "ap-northeast-2-pop": "cs.aliyuncs.com",
            "cn-beijing-finance-pop": "cs.aliyuncs.com",
            "cn-beijing-gov-1": "cs.aliyuncs.com",
            "cn-beijing-nu16-b01": "cs.aliyuncs.com",
            "cn-edge-1": "cs.aliyuncs.com",
            "cn-fujian": "cs.aliyuncs.com",
            "cn-haidian-cm12-c01": "cs.aliyuncs.com",
            "cn-hangzhou-bj-b01": "cs.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "cs.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "cs.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "cs.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "cs.aliyuncs.com",
            "cn-hangzhou-test-306": "cs.aliyuncs.com",
            "cn-hongkong-finance-pop": "cs.aliyuncs.com",
            "cn-qingdao-nebula": "cs.aliyuncs.com",
            "cn-shanghai-et15-b01": "cs.aliyuncs.com",
            "cn-shanghai-et2-b01": "cs.aliyuncs.com",
            "cn-shanghai-inner": "cs.aliyuncs.com",
            "cn-shanghai-internal-test-1": "cs.aliyuncs.com",
            "cn-shenzhen-inner": "cs.aliyuncs.com",
            "cn-shenzhen-st4-d01": "cs.aliyuncs.com",
            "cn-shenzhen-su18-b01": "cs.aliyuncs.com",
            "cn-wuhan": "cs.aliyuncs.com",
            "cn-yushanfang": "cs.aliyuncs.com",
            "cn-zhangbei": "cs.aliyuncs.com",
            "cn-zhangbei-na61-b01": "cs.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "cs.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "cs.aliyuncs.com",
            "eu-west-1-oxs": "cs.aliyuncs.com",
            "rus-west-1-pop": "cs.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("cs", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func attachInstancesWithOptions(_ ClusterId: String, _ request: AttachInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cpuPolicy)) {
            body["cpu_policy"] = request.cpuPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formatDisk)) {
            body["format_disk"] = request.formatDisk!;
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["image_id"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instances)) {
            body["instances"] = request.instances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.isEdgeWorker)) {
            body["is_edge_worker"] = request.isEdgeWorker!;
        }
        if (!TeaUtils.Client.isUnset(request.keepInstanceName)) {
            body["keep_instance_name"] = request.keepInstanceName!;
        }
        if (!TeaUtils.Client.isUnset(request.keyPair)) {
            body["key_pair"] = request.keyPair ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodepoolId)) {
            body["nodepool_id"] = request.nodepoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rdsInstances)) {
            body["rds_instances"] = request.rdsInstances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.runtime)) {
            body["runtime"] = request.runtime!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            body["user_data"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachInstances",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/attach",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachInstances(_ ClusterId: String, _ request: AttachInstancesRequest) async throws -> AttachInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await attachInstancesWithOptions(ClusterId as! String, request as! AttachInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachInstancesToNodePoolWithOptions(_ ClusterId: String, _ NodepoolId: String, _ request: AttachInstancesToNodePoolRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachInstancesToNodePoolResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.formatDisk)) {
            body["format_disk"] = request.formatDisk!;
        }
        if (!TeaUtils.Client.isUnset(request.instances)) {
            body["instances"] = request.instances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.keepInstanceName)) {
            body["keep_instance_name"] = request.keepInstanceName!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["password"] = request.password ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachInstancesToNodePool",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(NodepoolId)) + "/attach",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachInstancesToNodePoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachInstancesToNodePool(_ ClusterId: String, _ NodepoolId: String, _ request: AttachInstancesToNodePoolRequest) async throws -> AttachInstancesToNodePoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await attachInstancesToNodePoolWithOptions(ClusterId as! String, NodepoolId as! String, request as! AttachInstancesToNodePoolRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelClusterUpgradeWithOptions(_ ClusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelClusterUpgradeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelClusterUpgrade",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/api/v2/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/upgrade/cancel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelClusterUpgradeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelClusterUpgrade(_ ClusterId: String) async throws -> CancelClusterUpgradeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelClusterUpgradeWithOptions(ClusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelComponentUpgradeWithOptions(_ clusterId: String, _ componentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelComponentUpgradeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelComponentUpgrade",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/components/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(componentId)) + "/cancel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelComponentUpgradeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelComponentUpgrade(_ clusterId: String, _ componentId: String) async throws -> CancelComponentUpgradeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelComponentUpgradeWithOptions(clusterId as! String, componentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOperationPlanWithOptions(_ planId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelOperationPlanResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelOperationPlan",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/operation/plans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(planId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelOperationPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOperationPlan(_ planId: String) async throws -> CancelOperationPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelOperationPlanWithOptions(planId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelTaskWithOptions(_ taskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelTask",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)) + "/cancel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelTask(_ taskId: String) async throws -> CancelTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelTaskWithOptions(taskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkControlPlaneLogEnableWithOptions(_ ClusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckControlPlaneLogEnableResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckControlPlaneLogEnable",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/controlplanelog",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckControlPlaneLogEnableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkControlPlaneLogEnable(_ ClusterId: String) async throws -> CheckControlPlaneLogEnableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await checkControlPlaneLogEnableWithOptions(ClusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkServiceRoleWithOptions(_ request: CheckServiceRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckServiceRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roles)) {
            body["roles"] = request.roles ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckServiceRole",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/ram/check-service-role",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckServiceRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkServiceRole(_ request: CheckServiceRoleRequest) async throws -> CheckServiceRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await checkServiceRoleWithOptions(request as! CheckServiceRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cleanClusterUserPermissionsWithOptions(_ ClusterId: String, _ Uid: String, _ request: CleanClusterUserPermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CleanClusterUserPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["Force"] = request.force!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CleanClusterUserPermissions",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/cluster/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/user/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(Uid)) + "/permissions",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CleanClusterUserPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cleanClusterUserPermissions(_ ClusterId: String, _ Uid: String, _ request: CleanClusterUserPermissionsRequest) async throws -> CleanClusterUserPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cleanClusterUserPermissionsWithOptions(ClusterId as! String, Uid as! String, request as! CleanClusterUserPermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cleanUserPermissionsWithOptions(_ Uid: String, _ tmpReq: CleanUserPermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CleanUserPermissionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CleanUserPermissionsShrinkRequest = CleanUserPermissionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.clusterIds)) {
            request.clusterIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.clusterIds, "ClusterIds", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterIdsShrink)) {
            query["ClusterIds"] = request.clusterIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["Force"] = request.force!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CleanUserPermissions",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(Uid)) + "/permissions",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CleanUserPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cleanUserPermissions(_ Uid: String, _ request: CleanUserPermissionsRequest) async throws -> CleanUserPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cleanUserPermissionsWithOptions(Uid as! String, request as! CleanUserPermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAutoRepairPolicyWithOptions(_ clusterId: String, _ request: CreateAutoRepairPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAutoRepairPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceSubType)) {
            body["resource_sub_type"] = request.resourceSubType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["resource_type"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rules)) {
            body["rules"] = request.rules ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAutoRepairPolicy",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/auto_repair_policies",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAutoRepairPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAutoRepairPolicy(_ clusterId: String, _ request: CreateAutoRepairPolicyRequest) async throws -> CreateAutoRepairPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAutoRepairPolicyWithOptions(clusterId as! String, request as! CreateAutoRepairPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAutoscalingConfigWithOptions(_ ClusterId: String, _ request: CreateAutoscalingConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAutoscalingConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coolDownDuration)) {
            body["cool_down_duration"] = request.coolDownDuration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.daemonsetEvictionForNodes)) {
            body["daemonset_eviction_for_nodes"] = request.daemonsetEvictionForNodes!;
        }
        if (!TeaUtils.Client.isUnset(request.expander)) {
            body["expander"] = request.expander ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gpuUtilizationThreshold)) {
            body["gpu_utilization_threshold"] = request.gpuUtilizationThreshold ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxGracefulTerminationSec)) {
            body["max_graceful_termination_sec"] = request.maxGracefulTerminationSec!;
        }
        if (!TeaUtils.Client.isUnset(request.minReplicaCount)) {
            body["min_replica_count"] = request.minReplicaCount!;
        }
        if (!TeaUtils.Client.isUnset(request.priorities)) {
            body["priorities"] = request.priorities ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.recycleNodeDeletionEnabled)) {
            body["recycle_node_deletion_enabled"] = request.recycleNodeDeletionEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleDownEnabled)) {
            body["scale_down_enabled"] = request.scaleDownEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleUpFromZero)) {
            body["scale_up_from_zero"] = request.scaleUpFromZero!;
        }
        if (!TeaUtils.Client.isUnset(request.scalerType)) {
            body["scaler_type"] = request.scalerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanInterval)) {
            body["scan_interval"] = request.scanInterval ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipNodesWithLocalStorage)) {
            body["skip_nodes_with_local_storage"] = request.skipNodesWithLocalStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.skipNodesWithSystemPods)) {
            body["skip_nodes_with_system_pods"] = request.skipNodesWithSystemPods!;
        }
        if (!TeaUtils.Client.isUnset(request.unneededDuration)) {
            body["unneeded_duration"] = request.unneededDuration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.utilizationThreshold)) {
            body["utilization_threshold"] = request.utilizationThreshold ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAutoscalingConfig",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/cluster/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/autoscale/config/",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAutoscalingConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAutoscalingConfig(_ ClusterId: String, _ request: CreateAutoscalingConfigRequest) async throws -> CreateAutoscalingConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAutoscalingConfigWithOptions(ClusterId as! String, request as! CreateAutoscalingConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClusterWithOptions(_ request: CreateClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessControlList)) {
            body["access_control_list"] = request.accessControlList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.addons)) {
            body["addons"] = request.addons ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.apiAudiences)) {
            body["api_audiences"] = request.apiAudiences ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.auditLogConfig)) {
            body["audit_log_config"] = request.auditLogConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.autoMode)) {
            body["auto_mode"] = request.autoMode!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            body["auto_renew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenewPeriod)) {
            body["auto_renew_period"] = request.autoRenewPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            body["charge_type"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cisEnabled)) {
            body["cis_enabled"] = request.cisEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.cloudMonitorFlags)) {
            body["cloud_monitor_flags"] = request.cloudMonitorFlags!;
        }
        if (!TeaUtils.Client.isUnset(request.clusterDomain)) {
            body["cluster_domain"] = request.clusterDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterSpec)) {
            body["cluster_spec"] = request.clusterSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            body["cluster_type"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerCidr)) {
            body["container_cidr"] = request.containerCidr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.controlPlaneConfig)) {
            body["control_plane_config"] = request.controlPlaneConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.controlPlaneEndpointsConfig)) {
            body["control_plane_endpoints_config"] = request.controlPlaneEndpointsConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.controlplaneLogComponents)) {
            body["controlplane_log_components"] = request.controlplaneLogComponents ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.controlplaneLogProject)) {
            body["controlplane_log_project"] = request.controlplaneLogProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.controlplaneLogTtl)) {
            body["controlplane_log_ttl"] = request.controlplaneLogTtl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpuPolicy)) {
            body["cpu_policy"] = request.cpuPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customSan)) {
            body["custom_san"] = request.customSan ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deletionProtection)) {
            body["deletion_protection"] = request.deletionProtection!;
        }
        if (!TeaUtils.Client.isUnset(request.disableRollback)) {
            body["disable_rollback"] = request.disableRollback!;
        }
        if (!TeaUtils.Client.isUnset(request.enableRrsa)) {
            body["enable_rrsa"] = request.enableRrsa!;
        }
        if (!TeaUtils.Client.isUnset(request.encryptionProviderKey)) {
            body["encryption_provider_key"] = request.encryptionProviderKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointPublicAccess)) {
            body["endpoint_public_access"] = request.endpointPublicAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.extraSans)) {
            body["extra_sans"] = request.extraSans ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.formatDisk)) {
            body["format_disk"] = request.formatDisk!;
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["image_id"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageType)) {
            body["image_type"] = request.imageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instances)) {
            body["instances"] = request.instances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ipStack)) {
            body["ip_stack"] = request.ipStack ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isEnterpriseSecurityGroup)) {
            body["is_enterprise_security_group"] = request.isEnterpriseSecurityGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.keepInstanceName)) {
            body["keep_instance_name"] = request.keepInstanceName!;
        }
        if (!TeaUtils.Client.isUnset(request.keyPair)) {
            body["key_pair"] = request.keyPair ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kubernetesVersion)) {
            body["kubernetes_version"] = request.kubernetesVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            body["load_balancer_id"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerSpec)) {
            body["load_balancer_spec"] = request.loadBalancerSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loggingType)) {
            body["logging_type"] = request.loggingType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginPassword)) {
            body["login_password"] = request.loginPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maintenanceWindow)) {
            body["maintenance_window"] = request.maintenanceWindow!;
        }
        if (!TeaUtils.Client.isUnset(request.masterAutoRenew)) {
            body["master_auto_renew"] = request.masterAutoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.masterAutoRenewPeriod)) {
            body["master_auto_renew_period"] = request.masterAutoRenewPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.masterCount)) {
            body["master_count"] = request.masterCount!;
        }
        if (!TeaUtils.Client.isUnset(request.masterInstanceChargeType)) {
            body["master_instance_charge_type"] = request.masterInstanceChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterInstanceTypes)) {
            body["master_instance_types"] = request.masterInstanceTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.masterPeriod)) {
            body["master_period"] = request.masterPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.masterPeriodUnit)) {
            body["master_period_unit"] = request.masterPeriodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterSystemDiskCategory)) {
            body["master_system_disk_category"] = request.masterSystemDiskCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterSystemDiskPerformanceLevel)) {
            body["master_system_disk_performance_level"] = request.masterSystemDiskPerformanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterSystemDiskSize)) {
            body["master_system_disk_size"] = request.masterSystemDiskSize!;
        }
        if (!TeaUtils.Client.isUnset(request.masterSystemDiskSnapshotPolicyId)) {
            body["master_system_disk_snapshot_policy_id"] = request.masterSystemDiskSnapshotPolicyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterVswitchIds)) {
            body["master_vswitch_ids"] = request.masterVswitchIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.natGateway)) {
            body["nat_gateway"] = request.natGateway!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeCidrMask)) {
            body["node_cidr_mask"] = request.nodeCidrMask ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeNameMode)) {
            body["node_name_mode"] = request.nodeNameMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodePortRange)) {
            body["node_port_range"] = request.nodePortRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodepools)) {
            body["nodepools"] = request.nodepools ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.numOfNodes)) {
            body["num_of_nodes"] = request.numOfNodes!;
        }
        if (!TeaUtils.Client.isUnset(request.operationPolicy)) {
            body["operation_policy"] = request.operationPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            body["os_type"] = request.osType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            body["period_unit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.podVswitchIds)) {
            body["pod_vswitch_ids"] = request.podVswitchIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.profile)) {
            body["profile"] = request.profile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyMode)) {
            body["proxy_mode"] = request.proxyMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rdsInstances)) {
            body["rds_instances"] = request.rdsInstances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["region_id"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resource_group_id"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rrsaConfig)) {
            body["rrsa_config"] = request.rrsaConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.runtime)) {
            body["runtime"] = request.runtime!;
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            body["security_group_id"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityHardeningOs)) {
            body["security_hardening_os"] = request.securityHardeningOs!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceAccountIssuer)) {
            body["service_account_issuer"] = request.serviceAccountIssuer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCidr)) {
            body["service_cidr"] = request.serviceCidr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceDiscoveryTypes)) {
            body["service_discovery_types"] = request.serviceDiscoveryTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.snatEntry)) {
            body["snat_entry"] = request.snatEntry!;
        }
        if (!TeaUtils.Client.isUnset(request.socEnabled)) {
            body["soc_enabled"] = request.socEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.sshFlags)) {
            body["ssh_flags"] = request.sshFlags!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taints)) {
            body["taints"] = request.taints ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.timeoutMins)) {
            body["timeout_mins"] = request.timeoutMins!;
        }
        if (!TeaUtils.Client.isUnset(request.timezone)) {
            body["timezone"] = request.timezone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCa)) {
            body["user_ca"] = request.userCa ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            body["user_data"] = request.userData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcid)) {
            body["vpcid"] = request.vpcid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vswitchIds)) {
            body["vswitch_ids"] = request.vswitchIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workerAutoRenew)) {
            body["worker_auto_renew"] = request.workerAutoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.workerAutoRenewPeriod)) {
            body["worker_auto_renew_period"] = request.workerAutoRenewPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.workerDataDisks)) {
            body["worker_data_disks"] = request.workerDataDisks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workerInstanceChargeType)) {
            body["worker_instance_charge_type"] = request.workerInstanceChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerInstanceTypes)) {
            body["worker_instance_types"] = request.workerInstanceTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workerPeriod)) {
            body["worker_period"] = request.workerPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.workerPeriodUnit)) {
            body["worker_period_unit"] = request.workerPeriodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerSystemDiskCategory)) {
            body["worker_system_disk_category"] = request.workerSystemDiskCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerSystemDiskPerformanceLevel)) {
            body["worker_system_disk_performance_level"] = request.workerSystemDiskPerformanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerSystemDiskSize)) {
            body["worker_system_disk_size"] = request.workerSystemDiskSize!;
        }
        if (!TeaUtils.Client.isUnset(request.workerSystemDiskSnapshotPolicyId)) {
            body["worker_system_disk_snapshot_policy_id"] = request.workerSystemDiskSnapshotPolicyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerVswitchIds)) {
            body["worker_vswitch_ids"] = request.workerVswitchIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["zone_id"] = request.zoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneIds)) {
            body["zone_ids"] = request.zoneIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCluster",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCluster(_ request: CreateClusterRequest) async throws -> CreateClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createClusterWithOptions(request as! CreateClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClusterDiagnosisWithOptions(_ clusterId: String, _ request: CreateClusterDiagnosisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateClusterDiagnosisResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.target)) {
            body["target"] = request.target ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateClusterDiagnosis",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/diagnosis",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateClusterDiagnosisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClusterDiagnosis(_ clusterId: String, _ request: CreateClusterDiagnosisRequest) async throws -> CreateClusterDiagnosisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createClusterDiagnosisWithOptions(clusterId as! String, request as! CreateClusterDiagnosisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClusterInspectConfigWithOptions(_ clusterId: String, _ request: CreateClusterInspectConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateClusterInspectConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disabledCheckItems)) {
            body["disabledCheckItems"] = request.disabledCheckItems ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            body["enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.recurrence)) {
            body["recurrence"] = request.recurrence ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateClusterInspectConfig",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/inspectConfig",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateClusterInspectConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClusterInspectConfig(_ clusterId: String, _ request: CreateClusterInspectConfigRequest) async throws -> CreateClusterInspectConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createClusterInspectConfigWithOptions(clusterId as! String, request as! CreateClusterInspectConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClusterNodePoolWithOptions(_ ClusterId: String, _ request: CreateClusterNodePoolRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateClusterNodePoolResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoMode)) {
            body["auto_mode"] = request.autoMode!;
        }
        if (!TeaUtils.Client.isUnset(request.autoScaling)) {
            body["auto_scaling"] = request.autoScaling!;
        }
        if (!TeaUtils.Client.isUnset(request.count)) {
            body["count"] = request.count!;
        }
        if (!TeaUtils.Client.isUnset(request.efloNodeGroup)) {
            body["eflo_node_group"] = request.efloNodeGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.hostNetwork)) {
            body["host_network"] = request.hostNetwork!;
        }
        if (!TeaUtils.Client.isUnset(request.interconnectConfig)) {
            body["interconnect_config"] = request.interconnectConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.interconnectMode)) {
            body["interconnect_mode"] = request.interconnectMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intranet)) {
            body["intranet"] = request.intranet!;
        }
        if (!TeaUtils.Client.isUnset(request.kubernetesConfig)) {
            body["kubernetes_config"] = request.kubernetesConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.management)) {
            body["management"] = request.management!;
        }
        if (!TeaUtils.Client.isUnset(request.maxNodes)) {
            body["max_nodes"] = request.maxNodes!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeComponents)) {
            body["node_components"] = request.nodeComponents ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.nodeConfig)) {
            body["node_config"] = request.nodeConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.nodepoolInfo)) {
            body["nodepool_info"] = request.nodepoolInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroup)) {
            body["scaling_group"] = request.scalingGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.teeConfig)) {
            body["tee_config"] = request.teeConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateClusterNodePool",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodepools",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateClusterNodePoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClusterNodePool(_ ClusterId: String, _ request: CreateClusterNodePoolRequest) async throws -> CreateClusterNodePoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createClusterNodePoolWithOptions(ClusterId as! String, request as! CreateClusterNodePoolRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKubernetesTriggerWithOptions(_ request: CreateKubernetesTriggerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateKubernetesTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.action)) {
            body["action"] = request.action ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["project_id"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateKubernetesTrigger",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/triggers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateKubernetesTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKubernetesTrigger(_ request: CreateKubernetesTriggerRequest) async throws -> CreateKubernetesTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createKubernetesTriggerWithOptions(request as! CreateKubernetesTriggerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTemplateWithOptions(_ request: CreateTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.template)) {
            body["template"] = request.template ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            body["template_type"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTemplate",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/templates",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTemplate(_ request: CreateTemplateRequest) async throws -> CreateTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTemplateWithOptions(request as! CreateTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTriggerWithOptions(_ clusterId: String, _ request: CreateTriggerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.action)) {
            body["action"] = request.action ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["project_id"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTrigger",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/triggers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrigger(_ clusterId: String, _ request: CreateTriggerRequest) async throws -> CreateTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTriggerWithOptions(clusterId as! String, request as! CreateTriggerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlertContactWithOptions(_ tmpReq: DeleteAlertContactRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAlertContactResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteAlertContactShrinkRequest = DeleteAlertContactShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contactIds)) {
            request.contactIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contactIds, "contact_ids", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contactIdsShrink)) {
            query["contact_ids"] = request.contactIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAlertContact",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/alert/contacts",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAlertContactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlertContact(_ request: DeleteAlertContactRequest) async throws -> DeleteAlertContactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAlertContactWithOptions(request as! DeleteAlertContactRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlertContactGroupWithOptions(_ tmpReq: DeleteAlertContactGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAlertContactGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteAlertContactGroupShrinkRequest = DeleteAlertContactGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contactGroupIds)) {
            request.contactGroupIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contactGroupIds, "contact_group_ids", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contactGroupIdsShrink)) {
            query["contact_group_ids"] = request.contactGroupIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAlertContactGroup",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/alert/contact_groups",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAlertContactGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlertContactGroup(_ request: DeleteAlertContactGroupRequest) async throws -> DeleteAlertContactGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAlertContactGroupWithOptions(request as! DeleteAlertContactGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAutoRepairPolicyWithOptions(_ clusterId: String, _ policyId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAutoRepairPolicyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAutoRepairPolicy",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/auto_repair_policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAutoRepairPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAutoRepairPolicy(_ clusterId: String, _ policyId: String) async throws -> DeleteAutoRepairPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAutoRepairPolicyWithOptions(clusterId as! String, policyId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClusterWithOptions(_ ClusterId: String, _ tmpReq: DeleteClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteClusterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteClusterShrinkRequest = DeleteClusterShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.deleteOptions)) {
            request.deleteOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deleteOptions, "delete_options", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.retainResources)) {
            request.retainResourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.retainResources, "retain_resources", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteOptionsShrink)) {
            query["delete_options"] = request.deleteOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keepSlb)) {
            query["keep_slb"] = request.keepSlb!;
        }
        if (!TeaUtils.Client.isUnset(request.retainAllResources)) {
            query["retain_all_resources"] = request.retainAllResources!;
        }
        if (!TeaUtils.Client.isUnset(request.retainResourcesShrink)) {
            query["retain_resources"] = request.retainResourcesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCluster",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCluster(_ ClusterId: String, _ request: DeleteClusterRequest) async throws -> DeleteClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteClusterWithOptions(ClusterId as! String, request as! DeleteClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClusterInspectConfigWithOptions(_ clusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteClusterInspectConfigResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteClusterInspectConfig",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/inspectConfig",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteClusterInspectConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClusterInspectConfig(_ clusterId: String) async throws -> DeleteClusterInspectConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteClusterInspectConfigWithOptions(clusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClusterNodepoolWithOptions(_ ClusterId: String, _ NodepoolId: String, _ request: DeleteClusterNodepoolRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteClusterNodepoolResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["force"] = request.force!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteClusterNodepool",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(NodepoolId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteClusterNodepoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClusterNodepool(_ ClusterId: String, _ NodepoolId: String, _ request: DeleteClusterNodepoolRequest) async throws -> DeleteClusterNodepoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteClusterNodepoolWithOptions(ClusterId as! String, NodepoolId as! String, request as! DeleteClusterNodepoolRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClusterNodesWithOptions(_ ClusterId: String, _ request: DeleteClusterNodesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteClusterNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drainNode)) {
            body["drain_node"] = request.drainNode!;
        }
        if (!TeaUtils.Client.isUnset(request.nodes)) {
            body["nodes"] = request.nodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.releaseNode)) {
            body["release_node"] = request.releaseNode!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteClusterNodes",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteClusterNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClusterNodes(_ ClusterId: String, _ request: DeleteClusterNodesRequest) async throws -> DeleteClusterNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteClusterNodesWithOptions(ClusterId as! String, request as! DeleteClusterNodesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteKubernetesTriggerWithOptions(_ Id: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteKubernetesTriggerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteKubernetesTrigger",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/triggers/revoke/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(Id)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteKubernetesTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteKubernetesTrigger(_ Id: String) async throws -> DeleteKubernetesTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteKubernetesTriggerWithOptions(Id as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyInstanceWithOptions(_ clusterId: String, _ policyName: String, _ request: DeletePolicyInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePolicyInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["instance_name"] = request.instanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePolicyInstance",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePolicyInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyInstance(_ clusterId: String, _ policyName: String, _ request: DeletePolicyInstanceRequest) async throws -> DeletePolicyInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePolicyInstanceWithOptions(clusterId as! String, policyName as! String, request as! DeletePolicyInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTemplateWithOptions(_ TemplateId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTemplateResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTemplate",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/templates/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TemplateId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTemplate(_ TemplateId: String) async throws -> DeleteTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTemplateWithOptions(TemplateId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTriggerWithOptions(_ clusterId: String, _ Id: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTriggerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTrigger",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/triggers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(Id)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrigger(_ clusterId: String, _ Id: String) async throws -> DeleteTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTriggerWithOptions(clusterId as! String, Id as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployPolicyInstanceWithOptions(_ clusterId: String, _ policyName: String, _ request: DeployPolicyInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployPolicyInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.action)) {
            body["action"] = request.action ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaces)) {
            body["namespaces"] = request.namespaces ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            body["parameters"] = request.parameters ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeployPolicyInstance",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyName)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeployPolicyInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployPolicyInstance(_ clusterId: String, _ policyName: String, _ request: DeployPolicyInstanceRequest) async throws -> DeployPolicyInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deployPolicyInstanceWithOptions(clusterId as! String, policyName as! String, request as! DeployPolicyInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAddonWithOptions(_ addonName: String, _ request: DescribeAddonRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAddonResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterSpec)) {
            query["cluster_spec"] = request.clusterSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["cluster_type"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterVersion)) {
            query["cluster_version"] = request.clusterVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profile)) {
            query["profile"] = request.profile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["region_id"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAddon",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/addons/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(addonName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAddonResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAddon(_ addonName: String, _ request: DescribeAddonRequest) async throws -> DescribeAddonResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeAddonWithOptions(addonName as! String, request as! DescribeAddonRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAddonsWithOptions(_ request: DescribeAddonsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAddonsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterProfile)) {
            query["cluster_profile"] = request.clusterProfile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterSpec)) {
            query["cluster_spec"] = request.clusterSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["cluster_type"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterVersion)) {
            query["cluster_version"] = request.clusterVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAddons",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/components/metadata",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAddonsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAddons(_ request: DescribeAddonsRequest) async throws -> DescribeAddonsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeAddonsWithOptions(request as! DescribeAddonsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAutoRepairPolicyWithOptions(_ clusterId: String, _ policyId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAutoRepairPolicyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAutoRepairPolicy",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/auto_repair_policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAutoRepairPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAutoRepairPolicy(_ clusterId: String, _ policyId: String) async throws -> DescribeAutoRepairPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeAutoRepairPolicyWithOptions(clusterId as! String, policyId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAddonInstanceWithOptions(_ ClusterID: String, _ AddonName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterAddonInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterAddonInstance",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterID)) + "/components/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AddonName)) + "/instance",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterAddonInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAddonInstance(_ ClusterID: String, _ AddonName: String) async throws -> DescribeClusterAddonInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterAddonInstanceWithOptions(ClusterID as! String, AddonName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAddonMetadataWithOptions(_ clusterId: String, _ componentId: String, _ request: DescribeClusterAddonMetadataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterAddonMetadataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterAddonMetadata",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/components/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(componentId)) + "/metadata",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterAddonMetadataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAddonMetadata(_ clusterId: String, _ componentId: String, _ request: DescribeClusterAddonMetadataRequest) async throws -> DescribeClusterAddonMetadataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterAddonMetadataWithOptions(clusterId as! String, componentId as! String, request as! DescribeClusterAddonMetadataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAddonUpgradeStatusWithOptions(_ ClusterId: String, _ ComponentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterAddonUpgradeStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterAddonUpgradeStatus",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/components/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ComponentId)) + "/upgradestatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterAddonUpgradeStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAddonUpgradeStatus(_ ClusterId: String, _ ComponentId: String) async throws -> DescribeClusterAddonUpgradeStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterAddonUpgradeStatusWithOptions(ClusterId as! String, ComponentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAddonsUpgradeStatusWithOptions(_ ClusterId: String, _ tmpReq: DescribeClusterAddonsUpgradeStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterAddonsUpgradeStatusResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeClusterAddonsUpgradeStatusShrinkRequest = DescribeClusterAddonsUpgradeStatusShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.componentIds)) {
            request.componentIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.componentIds, "componentIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentIdsShrink)) {
            query["componentIds"] = request.componentIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterAddonsUpgradeStatus",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/components/upgradestatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterAddonsUpgradeStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAddonsUpgradeStatus(_ ClusterId: String, _ request: DescribeClusterAddonsUpgradeStatusRequest) async throws -> DescribeClusterAddonsUpgradeStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterAddonsUpgradeStatusWithOptions(ClusterId as! String, request as! DescribeClusterAddonsUpgradeStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAddonsVersionWithOptions(_ ClusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterAddonsVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterAddonsVersion",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/components/version",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterAddonsVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAddonsVersion(_ ClusterId: String) async throws -> DescribeClusterAddonsVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterAddonsVersionWithOptions(ClusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAttachScriptsWithOptions(_ ClusterId: String, _ request: DescribeClusterAttachScriptsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterAttachScriptsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arch)) {
            body["arch"] = request.arch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expired)) {
            body["expired"] = request.expired!;
        }
        if (!TeaUtils.Client.isUnset(request.formatDisk)) {
            body["format_disk"] = request.formatDisk!;
        }
        if (!TeaUtils.Client.isUnset(request.keepInstanceName)) {
            body["keep_instance_name"] = request.keepInstanceName!;
        }
        if (!TeaUtils.Client.isUnset(request.nodepoolId)) {
            body["nodepool_id"] = request.nodepoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oneTimeToken)) {
            body["one_time_token"] = request.oneTimeToken!;
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["options"] = request.options ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rdsInstances)) {
            body["rds_instances"] = request.rdsInstances ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterAttachScripts",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/attachscript",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterAttachScriptsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAttachScripts(_ ClusterId: String, _ request: DescribeClusterAttachScriptsRequest) async throws -> DescribeClusterAttachScriptsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterAttachScriptsWithOptions(ClusterId as! String, request as! DescribeClusterAttachScriptsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterDetailWithOptions(_ ClusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterDetailResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterDetail",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterDetail(_ ClusterId: String) async throws -> DescribeClusterDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterDetailWithOptions(ClusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterEventsWithOptions(_ ClusterId: String, _ request: DescribeClusterEventsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["page_number"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["task_id"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterEvents",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/events",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterEvents(_ ClusterId: String, _ request: DescribeClusterEventsRequest) async throws -> DescribeClusterEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterEventsWithOptions(ClusterId as! String, request as! DescribeClusterEventsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterLogsWithOptions(_ ClusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterLogsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterLogs",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/logs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterLogs(_ ClusterId: String) async throws -> DescribeClusterLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterLogsWithOptions(ClusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterNodePoolDetailWithOptions(_ ClusterId: String, _ NodepoolId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterNodePoolDetailResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterNodePoolDetail",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(NodepoolId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterNodePoolDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterNodePoolDetail(_ ClusterId: String, _ NodepoolId: String) async throws -> DescribeClusterNodePoolDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterNodePoolDetailWithOptions(ClusterId as! String, NodepoolId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterNodePoolsWithOptions(_ ClusterId: String, _ request: DescribeClusterNodePoolsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterNodePoolsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodepoolName)) {
            query["NodepoolName"] = request.nodepoolName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterNodePools",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodepools",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterNodePoolsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterNodePools(_ ClusterId: String, _ request: DescribeClusterNodePoolsRequest) async throws -> DescribeClusterNodePoolsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterNodePoolsWithOptions(ClusterId as! String, request as! DescribeClusterNodePoolsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterNodesWithOptions(_ ClusterId: String, _ request: DescribeClusterNodesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["instanceIds"] = request.instanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodepoolId)) {
            query["nodepool_id"] = request.nodepoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["state"] = request.state ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterNodes",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterNodes(_ ClusterId: String, _ request: DescribeClusterNodesRequest) async throws -> DescribeClusterNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterNodesWithOptions(ClusterId as! String, request as! DescribeClusterNodesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterResourcesWithOptions(_ ClusterId: String, _ request: DescribeClusterResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.withAddonResources)) {
            query["with_addon_resources"] = request.withAddonResources!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterResources",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/resources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterResources(_ ClusterId: String, _ request: DescribeClusterResourcesRequest) async throws -> DescribeClusterResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterResourcesWithOptions(ClusterId as! String, request as! DescribeClusterResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterTasksWithOptions(_ clusterId: String, _ request: DescribeClusterTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["page_number"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterTasks",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/tasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterTasks(_ clusterId: String, _ request: DescribeClusterTasksRequest) async throws -> DescribeClusterTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterTasksWithOptions(clusterId as! String, request as! DescribeClusterTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterUserKubeconfigWithOptions(_ ClusterId: String, _ request: DescribeClusterUserKubeconfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterUserKubeconfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            query["PrivateIpAddress"] = request.privateIpAddress!;
        }
        if (!TeaUtils.Client.isUnset(request.temporaryDurationMinutes)) {
            query["TemporaryDurationMinutes"] = request.temporaryDurationMinutes!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterUserKubeconfig",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/k8s/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/user_config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterUserKubeconfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterUserKubeconfig(_ ClusterId: String, _ request: DescribeClusterUserKubeconfigRequest) async throws -> DescribeClusterUserKubeconfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterUserKubeconfigWithOptions(ClusterId as! String, request as! DescribeClusterUserKubeconfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterV2UserKubeconfigWithOptions(_ ClusterId: String, _ request: DescribeClusterV2UserKubeconfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterV2UserKubeconfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            query["PrivateIpAddress"] = request.privateIpAddress!;
        }
        if (!TeaUtils.Client.isUnset(request.temporaryDurationMinutes)) {
            query["TemporaryDurationMinutes"] = request.temporaryDurationMinutes!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterV2UserKubeconfig",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/api/v2/k8s/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/user_config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterV2UserKubeconfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterV2UserKubeconfig(_ ClusterId: String, _ request: DescribeClusterV2UserKubeconfigRequest) async throws -> DescribeClusterV2UserKubeconfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterV2UserKubeconfigWithOptions(ClusterId as! String, request as! DescribeClusterV2UserKubeconfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterVulsWithOptions(_ clusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterVulsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterVuls",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/vuls",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterVulsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterVuls(_ clusterId: String) async throws -> DescribeClusterVulsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClusterVulsWithOptions(clusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClustersWithOptions(_ request: DescribeClustersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClustersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["clusterType"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resource_group_id"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusters",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusters(_ request: DescribeClustersRequest) async throws -> DescribeClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClustersWithOptions(request as! DescribeClustersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClustersForRegionWithOptions(_ regionId: String, _ request: DescribeClustersForRegionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClustersForRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterSpec)) {
            query["cluster_spec"] = request.clusterSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["cluster_type"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["page_number"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.profile)) {
            query["profile"] = request.profile ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClustersForRegion",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/regions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(regionId)) + "/clusters",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClustersForRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClustersForRegion(_ regionId: String, _ request: DescribeClustersForRegionRequest) async throws -> DescribeClustersForRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClustersForRegionWithOptions(regionId as! String, request as! DescribeClustersForRegionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClustersV1WithOptions(_ request: DescribeClustersV1Request, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClustersV1Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterSpec)) {
            query["cluster_spec"] = request.clusterSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["cluster_type"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["page_number"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.profile)) {
            query["profile"] = request.profile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["region_id"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClustersV1",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/api/v1/clusters",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClustersV1Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClustersV1(_ request: DescribeClustersV1Request) async throws -> DescribeClustersV1Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeClustersV1WithOptions(request as! DescribeClustersV1Request, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEventsWithOptions(_ request: DescribeEventsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["page_number"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEvents",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/events",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEvents(_ request: DescribeEventsRequest) async throws -> DescribeEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeEventsWithOptions(request as! DescribeEventsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEventsForRegionWithOptions(_ regionId: String, _ request: DescribeEventsForRegionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEventsForRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["page_number"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEventsForRegion",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/regions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(regionId)) + "/events",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEventsForRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEventsForRegion(_ regionId: String, _ request: DescribeEventsForRegionRequest) async throws -> DescribeEventsForRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeEventsForRegionWithOptions(regionId as! String, request as! DescribeEventsForRegionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExternalAgentWithOptions(_ ClusterId: String, _ request: DescribeExternalAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeExternalAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentMode)) {
            query["AgentMode"] = request.agentMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            query["PrivateIpAddress"] = request.privateIpAddress ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeExternalAgent",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/k8s/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/external/agent/deployment",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeExternalAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExternalAgent(_ ClusterId: String, _ request: DescribeExternalAgentRequest) async throws -> DescribeExternalAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeExternalAgentWithOptions(ClusterId as! String, request as! DescribeExternalAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeKubernetesVersionMetadataWithOptions(_ request: DescribeKubernetesVersionMetadataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeKubernetesVersionMetadataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["ClusterType"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kubernetesVersion)) {
            query["KubernetesVersion"] = request.kubernetesVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profile)) {
            query["Profile"] = request.profile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryUpgradableVersion)) {
            query["QueryUpgradableVersion"] = request.queryUpgradableVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtime)) {
            query["runtime"] = request.runtime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeKubernetesVersionMetadata",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/api/v1/metadata/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeKubernetesVersionMetadataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeKubernetesVersionMetadata(_ request: DescribeKubernetesVersionMetadataRequest) async throws -> DescribeKubernetesVersionMetadataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeKubernetesVersionMetadataWithOptions(request as! DescribeKubernetesVersionMetadataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNodePoolVulsWithOptions(_ clusterId: String, _ nodepoolId: String, _ request: DescribeNodePoolVulsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNodePoolVulsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.necessity)) {
            query["necessity"] = request.necessity ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNodePoolVuls",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nodepoolId)) + "/vuls",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNodePoolVulsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNodePoolVuls(_ clusterId: String, _ nodepoolId: String, _ request: DescribeNodePoolVulsRequest) async throws -> DescribeNodePoolVulsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeNodePoolVulsWithOptions(clusterId as! String, nodepoolId as! String, request as! DescribeNodePoolVulsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePoliciesWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePoliciesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePolicies",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/policies",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePoliciesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicies() async throws -> DescribePoliciesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describePoliciesWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicyDetailsWithOptions(_ policyName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePolicyDetailsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePolicyDetails",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePolicyDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicyDetails(_ policyName: String) async throws -> DescribePolicyDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describePolicyDetailsWithOptions(policyName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicyGovernanceInClusterWithOptions(_ clusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePolicyGovernanceInClusterResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePolicyGovernanceInCluster",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/policygovernance",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePolicyGovernanceInClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicyGovernanceInCluster(_ clusterId: String) async throws -> DescribePolicyGovernanceInClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describePolicyGovernanceInClusterWithOptions(clusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicyInstancesWithOptions(_ clusterId: String, _ request: DescribePolicyInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePolicyInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["instance_name"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            query["policy_name"] = request.policyName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePolicyInstances",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/policies",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePolicyInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicyInstances(_ clusterId: String, _ request: DescribePolicyInstancesRequest) async throws -> DescribePolicyInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describePolicyInstancesWithOptions(clusterId as! String, request as! DescribePolicyInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicyInstancesStatusWithOptions(_ clusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePolicyInstancesStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePolicyInstancesStatus",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/policies/status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePolicyInstancesStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicyInstancesStatus(_ clusterId: String) async throws -> DescribePolicyInstancesStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describePolicyInstancesStatusWithOptions(clusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["acceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["clusterType"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profile)) {
            query["profile"] = request.profile ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/regions",
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
    public func describeRegions(_ request: DescribeRegionsRequest) async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeRegionsWithOptions(request as! DescribeRegionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourcesDeleteProtectionWithOptions(_ ClusterId: String, _ ResourceType: String, _ request: DescribeResourcesDeleteProtectionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourcesDeleteProtectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resources)) {
            query["resources"] = request.resources ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourcesDeleteProtection",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceType)) + "/protection",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourcesDeleteProtectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourcesDeleteProtection(_ ClusterId: String, _ ResourceType: String, _ request: DescribeResourcesDeleteProtectionRequest) async throws -> DescribeResourcesDeleteProtectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeResourcesDeleteProtectionWithOptions(ClusterId as! String, ResourceType as! String, request as! DescribeResourcesDeleteProtectionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSubaccountK8sClusterUserConfigWithOptions(_ ClusterId: String, _ Uid: String, _ request: DescribeSubaccountK8sClusterUserConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSubaccountK8sClusterUserConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            query["PrivateIpAddress"] = request.privateIpAddress!;
        }
        if (!TeaUtils.Client.isUnset(request.temporaryDurationMinutes)) {
            query["TemporaryDurationMinutes"] = request.temporaryDurationMinutes!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSubaccountK8sClusterUserConfig",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/k8s/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(Uid)) + "/user_config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSubaccountK8sClusterUserConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSubaccountK8sClusterUserConfig(_ ClusterId: String, _ Uid: String, _ request: DescribeSubaccountK8sClusterUserConfigRequest) async throws -> DescribeSubaccountK8sClusterUserConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeSubaccountK8sClusterUserConfigWithOptions(ClusterId as! String, Uid as! String, request as! DescribeSubaccountK8sClusterUserConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTaskInfoWithOptions(_ taskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTaskInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTaskInfo",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTaskInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTaskInfo(_ taskId: String) async throws -> DescribeTaskInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeTaskInfoWithOptions(taskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTemplateAttributeWithOptions(_ TemplateId: String, _ request: DescribeTemplateAttributeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTemplateAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["template_type"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTemplateAttribute",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/templates/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TemplateId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTemplateAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTemplateAttribute(_ TemplateId: String, _ request: DescribeTemplateAttributeRequest) async throws -> DescribeTemplateAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeTemplateAttributeWithOptions(TemplateId as! String, request as! DescribeTemplateAttributeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTemplatesWithOptions(_ request: DescribeTemplatesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["page_num"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["template_type"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTemplates",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/templates",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTemplates(_ request: DescribeTemplatesRequest) async throws -> DescribeTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeTemplatesWithOptions(request as! DescribeTemplatesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTriggerWithOptions(_ clusterId: String, _ request: DescribeTriggerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.action)) {
            query["action"] = request.action ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTrigger",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/triggers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTrigger(_ clusterId: String, _ request: DescribeTriggerRequest) async throws -> DescribeTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeTriggerWithOptions(clusterId as! String, request as! DescribeTriggerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserClusterNamespacesWithOptions(_ ClusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserClusterNamespacesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserClusterNamespaces",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/api/v2/k8s/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/namespaces",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserClusterNamespacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserClusterNamespaces(_ ClusterId: String) async throws -> DescribeUserClusterNamespacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeUserClusterNamespacesWithOptions(ClusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserPermissionWithOptions(_ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserPermissionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserPermission",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/permissions/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserPermission(_ uid: String) async throws -> DescribeUserPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeUserPermissionWithOptions(uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserQuotaWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserQuotaResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserQuota",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/quota",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserQuota() async throws -> DescribeUserQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeUserQuotaWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fixNodePoolVulsWithOptions(_ clusterId: String, _ nodepoolId: String, _ request: FixNodePoolVulsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> FixNodePoolVulsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRestart)) {
            body["auto_restart"] = request.autoRestart!;
        }
        if (!TeaUtils.Client.isUnset(request.nodes)) {
            body["nodes"] = request.nodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.rolloutPolicy)) {
            body["rollout_policy"] = request.rolloutPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.vuls)) {
            body["vuls"] = request.vuls ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FixNodePoolVuls",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nodepoolId)) + "/vuls/fix",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FixNodePoolVulsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fixNodePoolVuls(_ clusterId: String, _ nodepoolId: String, _ request: FixNodePoolVulsRequest) async throws -> FixNodePoolVulsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await fixNodePoolVulsWithOptions(clusterId as! String, nodepoolId as! String, request as! FixNodePoolVulsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterAddonInstanceWithOptions(_ clusterId: String, _ instanceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClusterAddonInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClusterAddonInstance",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/addon_instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClusterAddonInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterAddonInstance(_ clusterId: String, _ instanceName: String) async throws -> GetClusterAddonInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getClusterAddonInstanceWithOptions(clusterId as! String, instanceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterAuditProjectWithOptions(_ clusterid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClusterAuditProjectResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClusterAuditProject",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterid)) + "/audit",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClusterAuditProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterAuditProject(_ clusterid: String) async throws -> GetClusterAuditProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getClusterAuditProjectWithOptions(clusterid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterCheckWithOptions(_ clusterId: String, _ checkId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClusterCheckResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClusterCheck",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/checks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(checkId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClusterCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterCheck(_ clusterId: String, _ checkId: String) async throws -> GetClusterCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getClusterCheckWithOptions(clusterId as! String, checkId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterDiagnosisCheckItemsWithOptions(_ clusterId: String, _ diagnosisId: String, _ request: GetClusterDiagnosisCheckItemsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClusterDiagnosisCheckItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClusterDiagnosisCheckItems",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/diagnosis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(diagnosisId)) + "/check_items",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClusterDiagnosisCheckItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterDiagnosisCheckItems(_ clusterId: String, _ diagnosisId: String, _ request: GetClusterDiagnosisCheckItemsRequest) async throws -> GetClusterDiagnosisCheckItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getClusterDiagnosisCheckItemsWithOptions(clusterId as! String, diagnosisId as! String, request as! GetClusterDiagnosisCheckItemsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterDiagnosisResultWithOptions(_ clusterId: String, _ diagnosisId: String, _ request: GetClusterDiagnosisResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClusterDiagnosisResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClusterDiagnosisResult",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/diagnosis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(diagnosisId)) + "/result",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClusterDiagnosisResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterDiagnosisResult(_ clusterId: String, _ diagnosisId: String, _ request: GetClusterDiagnosisResultRequest) async throws -> GetClusterDiagnosisResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getClusterDiagnosisResultWithOptions(clusterId as! String, diagnosisId as! String, request as! GetClusterDiagnosisResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterInspectConfigWithOptions(_ clusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClusterInspectConfigResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClusterInspectConfig",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/inspectConfig",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClusterInspectConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterInspectConfig(_ clusterId: String) async throws -> GetClusterInspectConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getClusterInspectConfigWithOptions(clusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterInspectReportDetailWithOptions(_ clusterId: String, _ reportId: String, _ request: GetClusterInspectReportDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClusterInspectReportDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableFilter)) {
            query["enableFilter"] = request.enableFilter!;
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            query["level"] = request.level ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            query["targetType"] = request.targetType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClusterInspectReportDetail",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/inspectReports/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(reportId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClusterInspectReportDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterInspectReportDetail(_ clusterId: String, _ reportId: String, _ request: GetClusterInspectReportDetailRequest) async throws -> GetClusterInspectReportDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getClusterInspectReportDetailWithOptions(clusterId as! String, reportId as! String, request as! GetClusterInspectReportDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKubernetesTriggerWithOptions(_ ClusterId: String, _ request: GetKubernetesTriggerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetKubernetesTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.action)) {
            query["action"] = request.action ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetKubernetesTrigger",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/triggers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetKubernetesTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKubernetesTrigger(_ ClusterId: String, _ request: GetKubernetesTriggerRequest) async throws -> GetKubernetesTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getKubernetesTriggerWithOptions(ClusterId as! String, request as! GetKubernetesTriggerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUpgradeStatusWithOptions(_ ClusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUpgradeStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUpgradeStatus",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/api/v2/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/upgrade/status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUpgradeStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUpgradeStatus(_ ClusterId: String) async throws -> GetUpgradeStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUpgradeStatusWithOptions(ClusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantPermissionsWithOptions(_ uid: String, _ request: GrantPermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": TeaUtils.Client.toArray(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantPermissions",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/permissions/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantPermissions(_ uid: String, _ request: GrantPermissionsRequest) async throws -> GrantPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await grantPermissionsWithOptions(uid as! String, request as! GrantPermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installClusterAddonsWithOptions(_ ClusterId: String, _ request: InstallClusterAddonsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InstallClusterAddonsResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": TeaUtils.Client.toArray(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InstallClusterAddons",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/components/install",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InstallClusterAddonsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installClusterAddons(_ ClusterId: String, _ request: InstallClusterAddonsRequest) async throws -> InstallClusterAddonsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await installClusterAddonsWithOptions(ClusterId as! String, request as! InstallClusterAddonsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installNodePoolComponentsWithOptions(_ clusterId: String, _ nodePoolId: String, _ request: InstallNodePoolComponentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InstallNodePoolComponentsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.components)) {
            body["components"] = request.components ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.nodeNames)) {
            body["nodeNames"] = request.nodeNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.rollingPolicy)) {
            body["rollingPolicy"] = request.rollingPolicy!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InstallNodePoolComponents",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nodePoolId)) + "/components",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InstallNodePoolComponentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installNodePoolComponents(_ clusterId: String, _ nodePoolId: String, _ request: InstallNodePoolComponentsRequest) async throws -> InstallNodePoolComponentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await installNodePoolComponentsWithOptions(clusterId as! String, nodePoolId as! String, request as! InstallNodePoolComponentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAddonsWithOptions(_ request: ListAddonsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAddonsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterSpec)) {
            query["cluster_spec"] = request.clusterSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["cluster_type"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterVersion)) {
            query["cluster_version"] = request.clusterVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profile)) {
            query["profile"] = request.profile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["region_id"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAddons",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/addons",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAddonsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAddons(_ request: ListAddonsRequest) async throws -> ListAddonsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAddonsWithOptions(request as! ListAddonsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoRepairPoliciesWithOptions(_ clusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAutoRepairPoliciesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAutoRepairPolicies",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/auto_repair_policies",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAutoRepairPoliciesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoRepairPolicies(_ clusterId: String) async throws -> ListAutoRepairPoliciesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAutoRepairPoliciesWithOptions(clusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterAddonInstanceResourcesWithOptions(_ clusterId: String, _ instanceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClusterAddonInstanceResourcesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClusterAddonInstanceResources",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/addon_instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceName)) + "/resources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClusterAddonInstanceResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterAddonInstanceResources(_ clusterId: String, _ instanceName: String) async throws -> ListClusterAddonInstanceResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listClusterAddonInstanceResourcesWithOptions(clusterId as! String, instanceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterAddonInstancesWithOptions(_ clusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClusterAddonInstancesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClusterAddonInstances",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/addon_instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClusterAddonInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterAddonInstances(_ clusterId: String) async throws -> ListClusterAddonInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listClusterAddonInstancesWithOptions(clusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterChecksWithOptions(_ clusterId: String, _ request: ListClusterChecksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClusterChecksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["target"] = request.target ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClusterChecks",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/checks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClusterChecksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterChecks(_ clusterId: String, _ request: ListClusterChecksRequest) async throws -> ListClusterChecksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listClusterChecksWithOptions(clusterId as! String, request as! ListClusterChecksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterInspectReportsWithOptions(_ clusterId: String, _ request: ListClusterInspectReportsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClusterInspectReportsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClusterInspectReports",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/inspectReports",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClusterInspectReportsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterInspectReports(_ clusterId: String, _ request: ListClusterInspectReportsRequest) async throws -> ListClusterInspectReportsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listClusterInspectReportsWithOptions(clusterId as! String, request as! ListClusterInspectReportsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterKubeconfigStatesWithOptions(_ ClusterId: String, _ request: ListClusterKubeconfigStatesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClusterKubeconfigStatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cloudServiceKubeConfig)) {
            query["cloudServiceKubeConfig"] = request.cloudServiceKubeConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClusterKubeconfigStates",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/kubeconfig/states",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClusterKubeconfigStatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterKubeconfigStates(_ ClusterId: String, _ request: ListClusterKubeconfigStatesRequest) async throws -> ListClusterKubeconfigStatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listClusterKubeconfigStatesWithOptions(ClusterId as! String, request as! ListClusterKubeconfigStatesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationPlansWithOptions(_ request: ListOperationPlansRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOperationPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOperationPlans",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/operation/plans",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOperationPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationPlans(_ request: ListOperationPlansRequest) async throws -> ListOperationPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOperationPlansWithOptions(request as! ListOperationPlansRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationPlansForRegionWithOptions(_ regionId: String, _ request: ListOperationPlansForRegionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOperationPlansForRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["state"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOperationPlansForRegion",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/regions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(regionId)) + "/operation/plans",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOperationPlansForRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationPlansForRegion(_ regionId: String, _ request: ListOperationPlansForRegionRequest) async throws -> ListOperationPlansForRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOperationPlansForRegionWithOptions(regionId as! String, request as! ListOperationPlansForRegionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ tmpReq: ListTagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTagResourcesShrinkRequest = ListTagResourcesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resourceIds)) {
            request.resourceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceIds, "resource_ids", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["next_token"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["region_id"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsShrink)) {
            query["resource_ids"] = request.resourceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resource_type"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/tags",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserKubeConfigStatesWithOptions(_ Uid: String, _ request: ListUserKubeConfigStatesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserKubeConfigStatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["page_number"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserKubeConfigStates",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(Uid)) + "/kubeconfig/states",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserKubeConfigStatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserKubeConfigStates(_ Uid: String, _ request: ListUserKubeConfigStatesRequest) async throws -> ListUserKubeConfigStatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserKubeConfigStatesWithOptions(Uid as! String, request as! ListUserKubeConfigStatesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func migrateClusterWithOptions(_ clusterId: String, _ request: MigrateClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> MigrateClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ossBucketEndpoint)) {
            body["oss_bucket_endpoint"] = request.ossBucketEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            body["oss_bucket_name"] = request.ossBucketName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MigrateCluster",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/migrate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MigrateClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func migrateCluster(_ clusterId: String, _ request: MigrateClusterRequest) async throws -> MigrateClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await migrateClusterWithOptions(clusterId as! String, request as! MigrateClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAutoRepairPolicyWithOptions(_ clusterId: String, _ policyId: String, _ request: ModifyAutoRepairPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAutoRepairPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rules)) {
            body["rules"] = request.rules ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAutoRepairPolicy",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/auto_repair_policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAutoRepairPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAutoRepairPolicy(_ clusterId: String, _ policyId: String, _ request: ModifyAutoRepairPolicyRequest) async throws -> ModifyAutoRepairPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyAutoRepairPolicyWithOptions(clusterId as! String, policyId as! String, request as! ModifyAutoRepairPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClusterWithOptions(_ ClusterId: String, _ request: ModifyClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessControlList)) {
            body["access_control_list"] = request.accessControlList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.apiServerCustomCertSans)) {
            body["api_server_custom_cert_sans"] = request.apiServerCustomCertSans!;
        }
        if (!TeaUtils.Client.isUnset(request.apiServerEip)) {
            body["api_server_eip"] = request.apiServerEip!;
        }
        if (!TeaUtils.Client.isUnset(request.apiServerEipId)) {
            body["api_server_eip_id"] = request.apiServerEipId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterName)) {
            body["cluster_name"] = request.clusterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.controlPlaneConfig)) {
            body["control_plane_config"] = request.controlPlaneConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.controlPlaneEndpointsConfig)) {
            body["control_plane_endpoints_config"] = request.controlPlaneEndpointsConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.deletionProtection)) {
            body["deletion_protection"] = request.deletionProtection!;
        }
        if (!TeaUtils.Client.isUnset(request.enableRrsa)) {
            body["enable_rrsa"] = request.enableRrsa!;
        }
        if (!TeaUtils.Client.isUnset(request.ingressDomainRebinding)) {
            body["ingress_domain_rebinding"] = request.ingressDomainRebinding!;
        }
        if (!TeaUtils.Client.isUnset(request.ingressLoadbalancerId)) {
            body["ingress_loadbalancer_id"] = request.ingressLoadbalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceDeletionProtection)) {
            body["instance_deletion_protection"] = request.instanceDeletionProtection!;
        }
        if (!TeaUtils.Client.isUnset(request.maintenanceWindow)) {
            body["maintenance_window"] = request.maintenanceWindow!;
        }
        if (!TeaUtils.Client.isUnset(request.operationPolicy)) {
            body["operation_policy"] = request.operationPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resource_group_id"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            body["security_group_id"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemEventsLogging)) {
            body["system_events_logging"] = request.systemEventsLogging!;
        }
        if (!TeaUtils.Client.isUnset(request.timezone)) {
            body["timezone"] = request.timezone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vswitchIds)) {
            body["vswitch_ids"] = request.vswitchIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCluster",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/api/v2/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCluster(_ ClusterId: String, _ request: ModifyClusterRequest) async throws -> ModifyClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyClusterWithOptions(ClusterId as! String, request as! ModifyClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClusterAddonWithOptions(_ clusterId: String, _ componentId: String, _ request: ModifyClusterAddonRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyClusterAddonResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyClusterAddon",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/components/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(componentId)) + "/config",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyClusterAddonResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClusterAddon(_ clusterId: String, _ componentId: String, _ request: ModifyClusterAddonRequest) async throws -> ModifyClusterAddonResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyClusterAddonWithOptions(clusterId as! String, componentId as! String, request as! ModifyClusterAddonRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClusterNodePoolWithOptions(_ ClusterId: String, _ NodepoolId: String, _ request: ModifyClusterNodePoolRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyClusterNodePoolResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoScaling)) {
            body["auto_scaling"] = request.autoScaling!;
        }
        if (!TeaUtils.Client.isUnset(request.concurrency)) {
            body["concurrency"] = request.concurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.kubernetesConfig)) {
            body["kubernetes_config"] = request.kubernetesConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.management)) {
            body["management"] = request.management!;
        }
        if (!TeaUtils.Client.isUnset(request.nodepoolInfo)) {
            body["nodepool_info"] = request.nodepoolInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingGroup)) {
            body["scaling_group"] = request.scalingGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.teeConfig)) {
            body["tee_config"] = request.teeConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.updateNodes)) {
            body["update_nodes"] = request.updateNodes!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyClusterNodePool",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(NodepoolId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyClusterNodePoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClusterNodePool(_ ClusterId: String, _ NodepoolId: String, _ request: ModifyClusterNodePoolRequest) async throws -> ModifyClusterNodePoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyClusterNodePoolWithOptions(ClusterId as! String, NodepoolId as! String, request as! ModifyClusterNodePoolRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClusterTagsWithOptions(_ ClusterId: String, _ request: ModifyClusterTagsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyClusterTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": TeaUtils.Client.toArray(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyClusterTags",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/tags",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyClusterTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClusterTags(_ ClusterId: String, _ request: ModifyClusterTagsRequest) async throws -> ModifyClusterTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyClusterTagsWithOptions(ClusterId as! String, request as! ModifyClusterTagsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodePoolNodeConfigWithOptions(_ ClusterId: String, _ NodepoolId: String, _ request: ModifyNodePoolNodeConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNodePoolNodeConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.containerdConfig)) {
            body["containerd_config"] = request.containerdConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.kubeletConfig)) {
            body["kubelet_config"] = request.kubeletConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.osConfig)) {
            body["os_config"] = request.osConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.rollingPolicy)) {
            body["rolling_policy"] = request.rollingPolicy!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNodePoolNodeConfig",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(NodepoolId)) + "/node_config",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNodePoolNodeConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodePoolNodeConfig(_ ClusterId: String, _ NodepoolId: String, _ request: ModifyNodePoolNodeConfigRequest) async throws -> ModifyNodePoolNodeConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyNodePoolNodeConfigWithOptions(ClusterId as! String, NodepoolId as! String, request as! ModifyNodePoolNodeConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPolicyInstanceWithOptions(_ clusterId: String, _ policyName: String, _ request: ModifyPolicyInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyPolicyInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.action)) {
            body["action"] = request.action ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["instance_name"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaces)) {
            body["namespaces"] = request.namespaces ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            body["parameters"] = request.parameters ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyPolicyInstance",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyPolicyInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPolicyInstance(_ clusterId: String, _ policyName: String, _ request: ModifyPolicyInstanceRequest) async throws -> ModifyPolicyInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyPolicyInstanceWithOptions(clusterId as! String, policyName as! String, request as! ModifyPolicyInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openAckServiceWithOptions(_ request: OpenAckServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OpenAckServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenAckService",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/service/open",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenAckServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openAckService(_ request: OpenAckServiceRequest) async throws -> OpenAckServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await openAckServiceWithOptions(request as! OpenAckServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pauseClusterUpgradeWithOptions(_ ClusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PauseClusterUpgradeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PauseClusterUpgrade",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/api/v2/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/upgrade/pause",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PauseClusterUpgradeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pauseClusterUpgrade(_ ClusterId: String) async throws -> PauseClusterUpgradeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await pauseClusterUpgradeWithOptions(ClusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pauseComponentUpgradeWithOptions(_ clusterid: String, _ componentid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PauseComponentUpgradeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PauseComponentUpgrade",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterid)) + "/components/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(componentid)) + "/pause",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PauseComponentUpgradeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pauseComponentUpgrade(_ clusterid: String, _ componentid: String) async throws -> PauseComponentUpgradeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await pauseComponentUpgradeWithOptions(clusterid as! String, componentid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pauseTaskWithOptions(_ taskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PauseTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PauseTask",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)) + "/pause",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PauseTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pauseTask(_ taskId: String) async throws -> PauseTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await pauseTaskWithOptions(taskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeClusterNodesWithOptions(_ ClusterId: String, _ request: RemoveClusterNodesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveClusterNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drainNode)) {
            body["drain_node"] = request.drainNode!;
        }
        if (!TeaUtils.Client.isUnset(request.nodes)) {
            body["nodes"] = request.nodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.releaseNode)) {
            body["release_node"] = request.releaseNode!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveClusterNodes",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/api/v2/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodes/remove",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveClusterNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeClusterNodes(_ ClusterId: String, _ request: RemoveClusterNodesRequest) async throws -> RemoveClusterNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeClusterNodesWithOptions(ClusterId as! String, request as! RemoveClusterNodesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeNodePoolNodesWithOptions(_ ClusterId: String, _ NodepoolId: String, _ tmpReq: RemoveNodePoolNodesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveNodePoolNodesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveNodePoolNodesShrinkRequest = RemoveNodePoolNodesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "instance_ids", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.nodes)) {
            request.nodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nodes, "nodes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.concurrency)) {
            query["concurrency"] = request.concurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.drainNode)) {
            query["drain_node"] = request.drainNode!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["instance_ids"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodesShrink)) {
            query["nodes"] = request.nodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseNode)) {
            query["release_node"] = request.releaseNode!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveNodePoolNodes",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(NodepoolId)) + "/nodes",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveNodePoolNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeNodePoolNodes(_ ClusterId: String, _ NodepoolId: String, _ request: RemoveNodePoolNodesRequest) async throws -> RemoveNodePoolNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeNodePoolNodesWithOptions(ClusterId as! String, NodepoolId as! String, request as! RemoveNodePoolNodesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func repairClusterNodePoolWithOptions(_ clusterId: String, _ nodepoolId: String, _ request: RepairClusterNodePoolRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RepairClusterNodePoolResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRestart)) {
            body["auto_restart"] = request.autoRestart!;
        }
        if (!TeaUtils.Client.isUnset(request.nodes)) {
            body["nodes"] = request.nodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.operations)) {
            body["operations"] = request.operations ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RepairClusterNodePool",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nodepoolId)) + "/repair",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RepairClusterNodePoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func repairClusterNodePool(_ clusterId: String, _ nodepoolId: String, _ request: RepairClusterNodePoolRequest) async throws -> RepairClusterNodePoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await repairClusterNodePoolWithOptions(clusterId as! String, nodepoolId as! String, request as! RepairClusterNodePoolRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeComponentUpgradeWithOptions(_ clusterid: String, _ componentid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeComponentUpgradeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeComponentUpgrade",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterid)) + "/components/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(componentid)) + "/resume",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeComponentUpgradeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeComponentUpgrade(_ clusterid: String, _ componentid: String) async throws -> ResumeComponentUpgradeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resumeComponentUpgradeWithOptions(clusterid as! String, componentid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeTaskWithOptions(_ taskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeTask",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)) + "/resume",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeTask(_ taskId: String) async throws -> ResumeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resumeTaskWithOptions(taskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeUpgradeClusterWithOptions(_ ClusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeUpgradeClusterResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeUpgradeCluster",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/api/v2/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/upgrade/resume",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeUpgradeClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeUpgradeCluster(_ ClusterId: String) async throws -> ResumeUpgradeClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resumeUpgradeClusterWithOptions(ClusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeK8sClusterKubeConfigWithOptions(_ ClusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeK8sClusterKubeConfigResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeK8sClusterKubeConfig",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/k8s/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/certs",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeK8sClusterKubeConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeK8sClusterKubeConfig(_ ClusterId: String) async throws -> RevokeK8sClusterKubeConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await revokeK8sClusterKubeConfigWithOptions(ClusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runClusterCheckWithOptions(_ clusterId: String, _ request: RunClusterCheckRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunClusterCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["options"] = request.options ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            body["target"] = request.target ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunClusterCheck",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/checks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunClusterCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runClusterCheck(_ clusterId: String, _ request: RunClusterCheckRequest) async throws -> RunClusterCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runClusterCheckWithOptions(clusterId as! String, request as! RunClusterCheckRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runClusterInspectWithOptions(_ clusterId: String, _ request: RunClusterInspectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunClusterInspectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunClusterInspect",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/inspectReports",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunClusterInspectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runClusterInspect(_ clusterId: String, _ request: RunClusterInspectRequest) async throws -> RunClusterInspectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runClusterInspectWithOptions(clusterId as! String, request as! RunClusterInspectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleClusterNodePoolWithOptions(_ ClusterId: String, _ NodepoolId: String, _ request: ScaleClusterNodePoolRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ScaleClusterNodePoolResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.count)) {
            body["count"] = request.count!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScaleClusterNodePool",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(NodepoolId)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScaleClusterNodePoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleClusterNodePool(_ ClusterId: String, _ NodepoolId: String, _ request: ScaleClusterNodePoolRequest) async throws -> ScaleClusterNodePoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await scaleClusterNodePoolWithOptions(ClusterId as! String, NodepoolId as! String, request as! ScaleClusterNodePoolRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleOutClusterWithOptions(_ ClusterId: String, _ request: ScaleOutClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ScaleOutClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cloudMonitorFlags)) {
            body["cloud_monitor_flags"] = request.cloudMonitorFlags!;
        }
        if (!TeaUtils.Client.isUnset(request.count)) {
            body["count"] = request.count!;
        }
        if (!TeaUtils.Client.isUnset(request.cpuPolicy)) {
            body["cpu_policy"] = request.cpuPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["image_id"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyPair)) {
            body["key_pair"] = request.keyPair ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginPassword)) {
            body["login_password"] = request.loginPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rdsInstances)) {
            body["rds_instances"] = request.rdsInstances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.runtime)) {
            body["runtime"] = request.runtime!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taints)) {
            body["taints"] = request.taints ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            body["user_data"] = request.userData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vswitchIds)) {
            body["vswitch_ids"] = request.vswitchIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workerAutoRenew)) {
            body["worker_auto_renew"] = request.workerAutoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.workerAutoRenewPeriod)) {
            body["worker_auto_renew_period"] = request.workerAutoRenewPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.workerDataDisks)) {
            body["worker_data_disks"] = request.workerDataDisks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workerInstanceChargeType)) {
            body["worker_instance_charge_type"] = request.workerInstanceChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerInstanceTypes)) {
            body["worker_instance_types"] = request.workerInstanceTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workerPeriod)) {
            body["worker_period"] = request.workerPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.workerPeriodUnit)) {
            body["worker_period_unit"] = request.workerPeriodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerSystemDiskCategory)) {
            body["worker_system_disk_category"] = request.workerSystemDiskCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerSystemDiskSize)) {
            body["worker_system_disk_size"] = request.workerSystemDiskSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScaleOutCluster",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/api/v2/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScaleOutClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleOutCluster(_ ClusterId: String, _ request: ScaleOutClusterRequest) async throws -> ScaleOutClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await scaleOutClusterWithOptions(ClusterId as! String, request as! ScaleOutClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scanClusterVulsWithOptions(_ clusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ScanClusterVulsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScanClusterVuls",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/vuls/scan",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScanClusterVulsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scanClusterVuls(_ clusterId: String) async throws -> ScanClusterVulsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await scanClusterVulsWithOptions(clusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAlertWithOptions(_ ClusterId: String, _ request: StartAlertRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertRuleGroupName)) {
            body["alert_rule_group_name"] = request.alertRuleGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertRuleName)) {
            body["alert_rule_name"] = request.alertRuleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartAlert",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/alert/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/alert_rule/start",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAlert(_ ClusterId: String, _ request: StartAlertRequest) async throws -> StartAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startAlertWithOptions(ClusterId as! String, request as! StartAlertRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopAlertWithOptions(_ ClusterId: String, _ request: StopAlertRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertRuleGroupName)) {
            body["alert_rule_group_name"] = request.alertRuleGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertRuleName)) {
            body["alert_rule_name"] = request.alertRuleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopAlert",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/alert/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/alert_rule/stop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopAlert(_ ClusterId: String, _ request: StopAlertRequest) async throws -> StopAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopAlertWithOptions(ClusterId as! String, request as! StopAlertRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncClusterNodePoolWithOptions(_ ClusterId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncClusterNodePoolResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncClusterNodePool",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/sync_nodepools",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncClusterNodePoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncClusterNodePool(_ ClusterId: String) async throws -> SyncClusterNodePoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await syncClusterNodePoolWithOptions(ClusterId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["region_id"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            body["resource_ids"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["resource_type"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/tags",
            "method": "PUT",
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
    public func unInstallClusterAddonsWithOptions(_ ClusterId: String, _ request: UnInstallClusterAddonsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UnInstallClusterAddonsResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": TeaUtils.Client.toArray(request.addons)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnInstallClusterAddons",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/components/uninstall",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnInstallClusterAddonsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unInstallClusterAddons(_ ClusterId: String, _ request: UnInstallClusterAddonsRequest) async throws -> UnInstallClusterAddonsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await unInstallClusterAddonsWithOptions(ClusterId as! String, request as! UnInstallClusterAddonsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ tmpReq: UntagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UntagResourcesShrinkRequest = UntagResourcesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resourceIds)) {
            request.resourceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceIds, "resource_ids", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tagKeys)) {
            request.tagKeysShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tagKeys, "tag_keys", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["all"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["region_id"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsShrink)) {
            query["resource_ids"] = request.resourceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resource_type"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeysShrink)) {
            query["tag_keys"] = request.tagKeysShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/tags",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResources(_ request: UntagResourcesRequest) async throws -> UntagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await untagResourcesWithOptions(request as! UntagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateClusterAuditLogConfigWithOptions(_ clusterid: String, _ request: UpdateClusterAuditLogConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateClusterAuditLogConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disable)) {
            body["disable"] = request.disable!;
        }
        if (!TeaUtils.Client.isUnset(request.slsProjectName)) {
            body["sls_project_name"] = request.slsProjectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateClusterAuditLogConfig",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterid)) + "/audit_log",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateClusterAuditLogConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateClusterAuditLogConfig(_ clusterid: String, _ request: UpdateClusterAuditLogConfigRequest) async throws -> UpdateClusterAuditLogConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateClusterAuditLogConfigWithOptions(clusterid as! String, request as! UpdateClusterAuditLogConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateClusterInspectConfigWithOptions(_ clusterId: String, _ request: UpdateClusterInspectConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateClusterInspectConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disabledCheckItems)) {
            body["disabledCheckItems"] = request.disabledCheckItems ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            body["enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTime)) {
            body["scheduleTime"] = request.scheduleTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateClusterInspectConfig",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/inspectConfig",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateClusterInspectConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateClusterInspectConfig(_ clusterId: String, _ request: UpdateClusterInspectConfigRequest) async throws -> UpdateClusterInspectConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateClusterInspectConfigWithOptions(clusterId as! String, request as! UpdateClusterInspectConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateContactGroupForAlertWithOptions(_ ClusterId: String, _ request: UpdateContactGroupForAlertRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateContactGroupForAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertRuleGroupName)) {
            body["alert_rule_group_name"] = request.alertRuleGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactGroupIds)) {
            body["contact_group_ids"] = request.contactGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.crName)) {
            body["cr_name"] = request.crName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateContactGroupForAlert",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/alert/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/alert_rule/contact_groups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateContactGroupForAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateContactGroupForAlert(_ ClusterId: String, _ request: UpdateContactGroupForAlertRequest) async throws -> UpdateContactGroupForAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateContactGroupForAlertWithOptions(ClusterId as! String, request as! UpdateContactGroupForAlertRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateControlPlaneLogWithOptions(_ ClusterId: String, _ request: UpdateControlPlaneLogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateControlPlaneLogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliuid)) {
            body["aliuid"] = request.aliuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.components)) {
            body["components"] = request.components ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.logProject)) {
            body["log_project"] = request.logProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logTtl)) {
            body["log_ttl"] = request.logTtl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateControlPlaneLog",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/controlplanelog",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateControlPlaneLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateControlPlaneLog(_ ClusterId: String, _ request: UpdateControlPlaneLogRequest) async throws -> UpdateControlPlaneLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateControlPlaneLogWithOptions(ClusterId as! String, request as! UpdateControlPlaneLogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sClusterUserConfigExpireWithOptions(_ ClusterId: String, _ request: UpdateK8sClusterUserConfigExpireRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateK8sClusterUserConfigExpireResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expireHour)) {
            body["expire_hour"] = request.expireHour!;
        }
        if (!TeaUtils.Client.isUnset(request.user)) {
            body["user"] = request.user ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateK8sClusterUserConfigExpire",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/k8s/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/user_config/expire",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateK8sClusterUserConfigExpireResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sClusterUserConfigExpire(_ ClusterId: String, _ request: UpdateK8sClusterUserConfigExpireRequest) async throws -> UpdateK8sClusterUserConfigExpireResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateK8sClusterUserConfigExpireWithOptions(ClusterId as! String, request as! UpdateK8sClusterUserConfigExpireRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNodePoolComponentWithOptions(_ clusterId: String, _ nodepoolId: String, _ request: UpdateNodePoolComponentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNodePoolComponentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config!;
        }
        if (!TeaUtils.Client.isUnset(request.disableRolling)) {
            body["disableRolling"] = request.disableRolling!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeNames)) {
            body["nodeNames"] = request.nodeNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.rollingPolicy)) {
            body["rollingPolicy"] = request.rollingPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNodePoolComponent",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(clusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nodepoolId)) + "/component",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNodePoolComponentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNodePoolComponent(_ clusterId: String, _ nodepoolId: String, _ request: UpdateNodePoolComponentRequest) async throws -> UpdateNodePoolComponentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateNodePoolComponentWithOptions(clusterId as! String, nodepoolId as! String, request as! UpdateNodePoolComponentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourcesDeleteProtectionWithOptions(_ ClusterId: String, _ request: UpdateResourcesDeleteProtectionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateResourcesDeleteProtectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enable)) {
            body["enable"] = request.enable!;
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["resource_type"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resources)) {
            body["resources"] = request.resources ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateResourcesDeleteProtection",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/resources/protection",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateResourcesDeleteProtectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourcesDeleteProtection(_ ClusterId: String, _ request: UpdateResourcesDeleteProtectionRequest) async throws -> UpdateResourcesDeleteProtectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateResourcesDeleteProtectionWithOptions(ClusterId as! String, request as! UpdateResourcesDeleteProtectionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTemplateWithOptions(_ TemplateId: String, _ request: UpdateTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.template)) {
            body["template"] = request.template ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            body["template_type"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTemplate",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/templates/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TemplateId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTemplate(_ TemplateId: String, _ request: UpdateTemplateRequest) async throws -> UpdateTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTemplateWithOptions(TemplateId as! String, request as! UpdateTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserPermissionsWithOptions(_ uid: String, _ request: UpdateUserPermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["mode"] = request.mode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": TeaUtils.Client.toArray(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserPermissions",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/permissions/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid)) + "/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserPermissions(_ uid: String, _ request: UpdateUserPermissionsRequest) async throws -> UpdateUserPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateUserPermissionsWithOptions(uid as! String, request as! UpdateUserPermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeClusterWithOptions(_ ClusterId: String, _ request: UpgradeClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentName)) {
            body["component_name"] = request.componentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterOnly)) {
            body["master_only"] = request.masterOnly!;
        }
        if (!TeaUtils.Client.isUnset(request.nextVersion)) {
            body["next_version"] = request.nextVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rollingPolicy)) {
            body["rolling_policy"] = request.rollingPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeCluster",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/api/v2/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/upgrade",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeCluster(_ ClusterId: String, _ request: UpgradeClusterRequest) async throws -> UpgradeClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await upgradeClusterWithOptions(ClusterId as! String, request as! UpgradeClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeClusterAddonsWithOptions(_ ClusterId: String, _ request: UpgradeClusterAddonsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeClusterAddonsResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": TeaUtils.Client.toArray(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeClusterAddons",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/components/upgrade",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeClusterAddonsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeClusterAddons(_ ClusterId: String, _ request: UpgradeClusterAddonsRequest) async throws -> UpgradeClusterAddonsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await upgradeClusterAddonsWithOptions(ClusterId as! String, request as! UpgradeClusterAddonsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeClusterNodepoolWithOptions(_ ClusterId: String, _ NodepoolId: String, _ request: UpgradeClusterNodepoolRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeClusterNodepoolResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["image_id"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kubernetesVersion)) {
            body["kubernetes_version"] = request.kubernetesVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeNames)) {
            body["node_names"] = request.nodeNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.rollingPolicy)) {
            body["rolling_policy"] = request.rollingPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.runtimeType)) {
            body["runtime_type"] = request.runtimeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeVersion)) {
            body["runtime_version"] = request.runtimeVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useReplace)) {
            body["use_replace"] = request.useReplace!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeClusterNodepool",
            "version": "2015-12-15",
            "protocol": "HTTPS",
            "pathname": "/clusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId)) + "/nodepools/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(NodepoolId)) + "/upgrade",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeClusterNodepoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeClusterNodepool(_ ClusterId: String, _ NodepoolId: String, _ request: UpgradeClusterNodepoolRequest) async throws -> UpgradeClusterNodepoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await upgradeClusterNodepoolWithOptions(ClusterId as! String, NodepoolId as! String, request as! UpgradeClusterNodepoolRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
