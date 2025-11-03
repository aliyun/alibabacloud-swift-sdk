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
            "ap-northeast-2-pop": "edas.ap-northeast-1.aliyuncs.com",
            "ap-south-1": "edas.ap-northeast-1.aliyuncs.com",
            "ap-southeast-3": "edas.ap-northeast-1.aliyuncs.com",
            "ap-southeast-5": "edas.ap-northeast-1.aliyuncs.com",
            "cn-beijing-finance-1": "edas.aliyuncs.com",
            "cn-beijing-finance-pop": "edas.aliyuncs.com",
            "cn-beijing-gov-1": "edas.aliyuncs.com",
            "cn-beijing-nu16-b01": "edas.aliyuncs.com",
            "cn-chengdu": "edas.aliyuncs.com",
            "cn-edge-1": "edas.aliyuncs.com",
            "cn-fujian": "edas.aliyuncs.com",
            "cn-haidian-cm12-c01": "edas.aliyuncs.com",
            "cn-hangzhou-bj-b01": "edas.aliyuncs.com",
            "cn-hangzhou-finance": "edas.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "edas.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "edas.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "edas.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "edas.aliyuncs.com",
            "cn-hangzhou-test-306": "edas.aliyuncs.com",
            "cn-hongkong-finance-pop": "edas.aliyuncs.com",
            "cn-huhehaote": "edas.aliyuncs.com",
            "cn-qingdao-nebula": "edas.aliyuncs.com",
            "cn-shanghai-et15-b01": "edas.aliyuncs.com",
            "cn-shanghai-et2-b01": "edas.aliyuncs.com",
            "cn-shanghai-finance-1": "edas.aliyuncs.com",
            "cn-shanghai-inner": "edas.aliyuncs.com",
            "cn-shanghai-internal-test-1": "edas.aliyuncs.com",
            "cn-shenzhen-finance-1": "edas.aliyuncs.com",
            "cn-shenzhen-inner": "edas.aliyuncs.com",
            "cn-shenzhen-st4-d01": "edas.aliyuncs.com",
            "cn-shenzhen-su18-b01": "edas.aliyuncs.com",
            "cn-wuhan": "edas.aliyuncs.com",
            "cn-yushanfang": "edas.aliyuncs.com",
            "cn-zhangbei-na61-b01": "edas.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "edas.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "edas.aliyuncs.com",
            "eu-west-1": "edas.ap-northeast-1.aliyuncs.com",
            "eu-west-1-oxs": "edas.ap-northeast-1.aliyuncs.com",
            "me-east-1": "edas.ap-northeast-1.aliyuncs.com",
            "rus-west-1-pop": "edas.ap-northeast-1.aliyuncs.com",
            "us-west-1": "edas.ap-northeast-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("edas", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func abortAndRollbackChangeOrderWithOptions(_ request: AbortAndRollbackChangeOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AbortAndRollbackChangeOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeOrderId)) {
            query["ChangeOrderId"] = request.changeOrderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AbortAndRollbackChangeOrder",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/change_order_abort_and_rollback",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AbortAndRollbackChangeOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func abortAndRollbackChangeOrder(_ request: AbortAndRollbackChangeOrderRequest) async throws -> AbortAndRollbackChangeOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await abortAndRollbackChangeOrderWithOptions(request as! AbortAndRollbackChangeOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func abortChangeOrderWithOptions(_ request: AbortChangeOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AbortChangeOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeOrderId)) {
            query["ChangeOrderId"] = request.changeOrderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AbortChangeOrder",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/change_order_abort",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AbortChangeOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func abortChangeOrder(_ request: AbortChangeOrderRequest) async throws -> AbortChangeOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await abortChangeOrderWithOptions(request as! AbortChangeOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addLogPathWithOptions(_ request: AddLogPathRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddLogPathResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            body["Path"] = request.path ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddLogPath",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/log/popListLogDirs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddLogPathResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addLogPath(_ request: AddLogPathRequest) async throws -> AddLogPathResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addLogPathWithOptions(request as! AddLogPathRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeApplicationWithOptions(_ request: AuthorizeApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIds)) {
            query["AppIds"] = request.appIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUserId)) {
            query["TargetUserId"] = request.targetUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/account/authorize_app",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeApplication(_ request: AuthorizeApplicationRequest) async throws -> AuthorizeApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await authorizeApplicationWithOptions(request as! AuthorizeApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeResourceGroupWithOptions(_ request: AuthorizeResourceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupIds)) {
            query["ResourceGroupIds"] = request.resourceGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUserId)) {
            query["TargetUserId"] = request.targetUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeResourceGroup",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/account/authorize_res_group",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeResourceGroup(_ request: AuthorizeResourceGroupRequest) async throws -> AuthorizeResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await authorizeResourceGroupWithOptions(request as! AuthorizeResourceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeRoleWithOptions(_ request: AuthorizeRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleIds)) {
            query["RoleIds"] = request.roleIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUserId)) {
            query["TargetUserId"] = request.targetUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeRole",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/account/authorize_role",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeRole(_ request: AuthorizeRoleRequest) async throws -> AuthorizeRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await authorizeRoleWithOptions(request as! AuthorizeRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindEcsSlbWithOptions(_ request: BindEcsSlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BindEcsSlbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deployGroupId)) {
            query["DeployGroupId"] = request.deployGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listenerHealthCheckUrl)) {
            query["ListenerHealthCheckUrl"] = request.listenerHealthCheckUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerProtocol)) {
            query["ListenerProtocol"] = request.listenerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slbId)) {
            query["SlbId"] = request.slbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.VForwardingUrlRule)) {
            query["VForwardingUrlRule"] = request.VForwardingUrlRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.VServerGroupId)) {
            query["VServerGroupId"] = request.VServerGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.VServerGroupName)) {
            query["VServerGroupName"] = request.VServerGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindEcsSlb",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/slb/bind_slb",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindEcsSlbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindEcsSlb(_ request: BindEcsSlbRequest) async throws -> BindEcsSlbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await bindEcsSlbWithOptions(request as! BindEcsSlbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindK8sSlbWithOptions(_ request: BindK8sSlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BindK8sSlbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduler)) {
            query["Scheduler"] = request.scheduler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.servicePortInfos)) {
            query["ServicePortInfos"] = request.servicePortInfos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slbId)) {
            query["SlbId"] = request.slbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slbProtocol)) {
            query["SlbProtocol"] = request.slbProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specification)) {
            query["Specification"] = request.specification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPort)) {
            query["TargetPort"] = request.targetPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindK8sSlb",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_slb_binding",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindK8sSlbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindK8sSlb(_ request: BindK8sSlbRequest) async throws -> BindK8sSlbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await bindK8sSlbWithOptions(request as! BindK8sSlbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindSlbWithOptions(_ request: BindSlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BindSlbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.slbId)) {
            query["SlbId"] = request.slbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slbIp)) {
            query["SlbIp"] = request.slbIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.VServerGroupId)) {
            query["VServerGroupId"] = request.VServerGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindSlb",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/app/bind_slb_json",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindSlbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindSlb(_ request: BindSlbRequest) async throws -> BindSlbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await bindSlbWithOptions(request as! BindSlbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeDeployGroupWithOptions(_ request: ChangeDeployGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeDeployGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eccInfo)) {
            query["EccInfo"] = request.eccInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceStatus)) {
            query["ForceStatus"] = request.forceStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeDeployGroup",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_change_group",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeDeployGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeDeployGroup(_ request: ChangeDeployGroupRequest) async throws -> ChangeDeployGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await changeDeployGroupWithOptions(request as! ChangeDeployGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func continuePipelineWithOptions(_ request: ContinuePipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ContinuePipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.confirm)) {
            query["Confirm"] = request.confirm!;
        }
        if (!TeaUtils.Client.isUnset(request.pipelineId)) {
            query["PipelineId"] = request.pipelineId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ContinuePipeline",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/pipeline_batch_confirm",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ContinuePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func continuePipeline(_ request: ContinuePipelineRequest) async throws -> ContinuePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await continuePipelineWithOptions(request as! ContinuePipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func convertK8sResourceWithOptions(_ request: ConvertK8sResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ConvertK8sResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceName)) {
            query["ResourceName"] = request.resourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConvertK8sResource",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/oam/k8s_resource_convert",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConvertK8sResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func convertK8sResource(_ request: ConvertK8sResourceRequest) async throws -> ConvertK8sResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await convertK8sResourceWithOptions(request as! ConvertK8sResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplicationScalingRuleWithOptions(_ request: CreateApplicationScalingRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApplicationScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingBehaviour)) {
            query["ScalingBehaviour"] = request.scalingBehaviour ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleEnable)) {
            query["ScalingRuleEnable"] = request.scalingRuleEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleMetric)) {
            query["ScalingRuleMetric"] = request.scalingRuleMetric ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleName)) {
            query["ScalingRuleName"] = request.scalingRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleTimer)) {
            query["ScalingRuleTimer"] = request.scalingRuleTimer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleTrigger)) {
            query["ScalingRuleTrigger"] = request.scalingRuleTrigger ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleType)) {
            query["ScalingRuleType"] = request.scalingRuleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApplicationScalingRule",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/eam/scale/application_scaling_rule",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApplicationScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplicationScalingRule(_ request: CreateApplicationScalingRuleRequest) async throws -> CreateApplicationScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createApplicationScalingRuleWithOptions(request as! CreateApplicationScalingRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConfigTemplateWithOptions(_ request: CreateConfigTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConfigTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["Format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConfigTemplate",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/config_template",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConfigTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConfigTemplate(_ request: CreateConfigTemplateRequest) async throws -> CreateConfigTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createConfigTemplateWithOptions(request as! CreateConfigTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIDCImportCommandWithOptions(_ request: CreateIDCImportCommandRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIDCImportCommandResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIDCImportCommand",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/create_idc_import_command",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIDCImportCommandResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIDCImportCommand(_ request: CreateIDCImportCommandRequest) async throws -> CreateIDCImportCommandResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createIDCImportCommandWithOptions(request as! CreateIDCImportCommandRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createK8sConfigMapWithOptions(_ request: CreateK8sConfigMapRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateK8sConfigMapResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateK8sConfigMap",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_config_map",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateK8sConfigMapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createK8sConfigMap(_ request: CreateK8sConfigMapRequest) async throws -> CreateK8sConfigMapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createK8sConfigMapWithOptions(request as! CreateK8sConfigMapRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createK8sIngressRuleWithOptions(_ request: CreateK8sIngressRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateK8sIngressRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.annotations)) {
            query["Annotations"] = request.annotations ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ingressConf)) {
            query["IngressConf"] = request.ingressConf ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateK8sIngressRule",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_ingress",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateK8sIngressRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createK8sIngressRule(_ request: CreateK8sIngressRuleRequest) async throws -> CreateK8sIngressRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createK8sIngressRuleWithOptions(request as! CreateK8sIngressRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createK8sSecretWithOptions(_ request: CreateK8sSecretRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateK8sSecretResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.base64Encoded)) {
            body["Base64Encoded"] = request.base64Encoded!;
        }
        if (!TeaUtils.Client.isUnset(request.certId)) {
            body["CertId"] = request.certId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certRegionId)) {
            body["CertRegionId"] = request.certRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateK8sSecret",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_secret",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateK8sSecretResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createK8sSecret(_ request: CreateK8sSecretRequest) async throws -> CreateK8sSecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createK8sSecretWithOptions(request as! CreateK8sSecretRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createK8sServiceWithOptions(_ request: CreateK8sServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateK8sServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalTrafficPolicy)) {
            query["ExternalTrafficPolicy"] = request.externalTrafficPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.servicePorts)) {
            query["ServicePorts"] = request.servicePorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateK8sService",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_service",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateK8sServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createK8sService(_ request: CreateK8sServiceRequest) async throws -> CreateK8sServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createK8sServiceWithOptions(request as! CreateK8sServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApplicationWithOptions(_ request: DeleteApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_delete_app",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApplication(_ request: DeleteApplicationRequest) async throws -> DeleteApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteApplicationWithOptions(request as! DeleteApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApplicationScalingRuleWithOptions(_ request: DeleteApplicationScalingRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApplicationScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleName)) {
            query["ScalingRuleName"] = request.scalingRuleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApplicationScalingRule",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/eam/scale/application_scaling_rule",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApplicationScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApplicationScalingRule(_ request: DeleteApplicationScalingRuleRequest) async throws -> DeleteApplicationScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteApplicationScalingRuleWithOptions(request as! DeleteApplicationScalingRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClusterWithOptions(_ request: DeleteClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCluster",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/cluster",
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
    public func deleteCluster(_ request: DeleteClusterRequest) async throws -> DeleteClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteClusterWithOptions(request as! DeleteClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClusterMemberWithOptions(_ request: DeleteClusterMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteClusterMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterMemberId)) {
            query["ClusterMemberId"] = request.clusterMemberId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteClusterMember",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/cluster_member",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteClusterMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClusterMember(_ request: DeleteClusterMemberRequest) async throws -> DeleteClusterMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteClusterMemberWithOptions(request as! DeleteClusterMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConfigTemplateWithOptions(_ request: DeleteConfigTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConfigTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConfigTemplate",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/config_template",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConfigTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConfigTemplate(_ request: DeleteConfigTemplateRequest) async throws -> DeleteConfigTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteConfigTemplateWithOptions(request as! DeleteConfigTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeployGroupWithOptions(_ request: DeleteDeployGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDeployGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDeployGroup",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/deploy_group",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDeployGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeployGroup(_ request: DeleteDeployGroupRequest) async throws -> DeleteDeployGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDeployGroupWithOptions(request as! DeleteDeployGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEcuWithOptions(_ request: DeleteEcuRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEcuResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecuId)) {
            query["EcuId"] = request.ecuId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEcu",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/delete_ecu",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEcuResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEcu(_ request: DeleteEcuRequest) async throws -> DeleteEcuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEcuWithOptions(request as! DeleteEcuRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteK8sApplicationWithOptions(_ request: DeleteK8sApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteK8sApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["Force"] = request.force!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteK8sApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_apps",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteK8sApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteK8sApplication(_ request: DeleteK8sApplicationRequest) async throws -> DeleteK8sApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteK8sApplicationWithOptions(request as! DeleteK8sApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteK8sConfigMapWithOptions(_ request: DeleteK8sConfigMapRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteK8sConfigMapResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteK8sConfigMap",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_config_map",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteK8sConfigMapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteK8sConfigMap(_ request: DeleteK8sConfigMapRequest) async throws -> DeleteK8sConfigMapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteK8sConfigMapWithOptions(request as! DeleteK8sConfigMapRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteK8sIngressRuleWithOptions(_ request: DeleteK8sIngressRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteK8sIngressRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteK8sIngressRule",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_ingress",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteK8sIngressRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteK8sIngressRule(_ request: DeleteK8sIngressRuleRequest) async throws -> DeleteK8sIngressRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteK8sIngressRuleWithOptions(request as! DeleteK8sIngressRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteK8sSecretWithOptions(_ request: DeleteK8sSecretRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteK8sSecretResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteK8sSecret",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_secret",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteK8sSecretResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteK8sSecret(_ request: DeleteK8sSecretRequest) async throws -> DeleteK8sSecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteK8sSecretWithOptions(request as! DeleteK8sSecretRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteK8sServiceWithOptions(_ request: DeleteK8sServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteK8sServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteK8sService",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_service",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteK8sServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteK8sService(_ request: DeleteK8sServiceRequest) async throws -> DeleteK8sServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteK8sServiceWithOptions(request as! DeleteK8sServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogPathWithOptions(_ request: DeleteLogPathRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLogPathResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            query["Path"] = request.path ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLogPath",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/log/popListLogDirs",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLogPathResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogPath(_ request: DeleteLogPathRequest) async throws -> DeleteLogPathResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteLogPathWithOptions(request as! DeleteLogPathRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRoleWithOptions(_ request: DeleteRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            query["RoleId"] = request.roleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRole",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/account/delete_role",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRole(_ request: DeleteRoleRequest) async throws -> DeleteRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRoleWithOptions(request as! DeleteRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceGroupWithOptions(_ request: DeleteServiceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceGroup",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/service/serviceGroups",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceGroup(_ request: DeleteServiceGroupRequest) async throws -> DeleteServiceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceGroupWithOptions(request as! DeleteServiceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSwimmingLaneWithOptions(_ request: DeleteSwimmingLaneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSwimmingLaneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.laneId)) {
            query["LaneId"] = request.laneId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSwimmingLane",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/trafficmgnt/swimming_lanes",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSwimmingLaneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSwimmingLane(_ request: DeleteSwimmingLaneRequest) async throws -> DeleteSwimmingLaneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSwimmingLaneWithOptions(request as! DeleteSwimmingLaneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserDefineRegionWithOptions(_ request: DeleteUserDefineRegionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserDefineRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.regionTag)) {
            query["RegionTag"] = request.regionTag ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserDefineRegion",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/user_region_def",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserDefineRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserDefineRegion(_ request: DeleteUserDefineRegionRequest) async throws -> DeleteUserDefineRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteUserDefineRegionWithOptions(request as! DeleteUserDefineRegionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployApplicationWithOptions(_ request: DeployApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appEnv)) {
            query["AppEnv"] = request.appEnv ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.batch)) {
            query["Batch"] = request.batch!;
        }
        if (!TeaUtils.Client.isUnset(request.batchWaitTime)) {
            query["BatchWaitTime"] = request.batchWaitTime!;
        }
        if (!TeaUtils.Client.isUnset(request.buildPackId)) {
            query["BuildPackId"] = request.buildPackId!;
        }
        if (!TeaUtils.Client.isUnset(request.componentIds)) {
            query["ComponentIds"] = request.componentIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deployType)) {
            query["DeployType"] = request.deployType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desc)) {
            query["Desc"] = request.desc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gray)) {
            query["Gray"] = request.gray!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageVersion)) {
            query["PackageVersion"] = request.packageVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseType)) {
            query["ReleaseType"] = request.releaseType!;
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlStrategy)) {
            query["TrafficControlStrategy"] = request.trafficControlStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warUrl)) {
            query["WarUrl"] = request.warUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeployApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_deploy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeployApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployApplication(_ request: DeployApplicationRequest) async throws -> DeployApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deployApplicationWithOptions(request as! DeployApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployK8sApplicationWithOptions(_ request: DeployK8sApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployK8sApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.annotations)) {
            query["Annotations"] = request.annotations ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.args)) {
            query["Args"] = request.args ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.batchTimeout)) {
            query["BatchTimeout"] = request.batchTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.batchWaitTime)) {
            query["BatchWaitTime"] = request.batchWaitTime!;
        }
        if (!TeaUtils.Client.isUnset(request.buildPackId)) {
            query["BuildPackId"] = request.buildPackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.canaryRuleId)) {
            query["CanaryRuleId"] = request.canaryRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeOrderDesc)) {
            query["ChangeOrderDesc"] = request.changeOrderDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.command)) {
            query["Command"] = request.command ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configMountDescs)) {
            query["ConfigMountDescs"] = request.configMountDescs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpuLimit)) {
            query["CpuLimit"] = request.cpuLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.cpuRequest)) {
            query["CpuRequest"] = request.cpuRequest!;
        }
        if (!TeaUtils.Client.isUnset(request.customAffinity)) {
            query["CustomAffinity"] = request.customAffinity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customAgentVersion)) {
            query["CustomAgentVersion"] = request.customAgentVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customTolerations)) {
            query["CustomTolerations"] = request.customTolerations ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deployAcrossNodes)) {
            query["DeployAcrossNodes"] = request.deployAcrossNodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deployAcrossZones)) {
            query["DeployAcrossZones"] = request.deployAcrossZones ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.edasContainerVersion)) {
            query["EdasContainerVersion"] = request.edasContainerVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emptyDirs)) {
            query["EmptyDirs"] = request.emptyDirs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAhas)) {
            query["EnableAhas"] = request.enableAhas!;
        }
        if (!TeaUtils.Client.isUnset(request.enableEmptyPushReject)) {
            query["EnableEmptyPushReject"] = request.enableEmptyPushReject!;
        }
        if (!TeaUtils.Client.isUnset(request.enableLosslessRule)) {
            query["EnableLosslessRule"] = request.enableLosslessRule!;
        }
        if (!TeaUtils.Client.isUnset(request.envFroms)) {
            query["EnvFroms"] = request.envFroms ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envs)) {
            query["Envs"] = request.envs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.image)) {
            query["Image"] = request.image ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imagePlatforms)) {
            query["ImagePlatforms"] = request.imagePlatforms ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageTag)) {
            query["ImageTag"] = request.imageTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initContainers)) {
            query["InitContainers"] = request.initContainers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.JDK)) {
            query["JDK"] = request.JDK ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.javaStartUpConfig)) {
            query["JavaStartUpConfig"] = request.javaStartUpConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limitEphemeralStorage)) {
            query["LimitEphemeralStorage"] = request.limitEphemeralStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.liveness)) {
            query["Liveness"] = request.liveness ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localVolume)) {
            query["LocalVolume"] = request.localVolume ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.losslessRuleAligned)) {
            query["LosslessRuleAligned"] = request.losslessRuleAligned!;
        }
        if (!TeaUtils.Client.isUnset(request.losslessRuleDelayTime)) {
            query["LosslessRuleDelayTime"] = request.losslessRuleDelayTime!;
        }
        if (!TeaUtils.Client.isUnset(request.losslessRuleFuncType)) {
            query["LosslessRuleFuncType"] = request.losslessRuleFuncType!;
        }
        if (!TeaUtils.Client.isUnset(request.losslessRuleRelated)) {
            query["LosslessRuleRelated"] = request.losslessRuleRelated!;
        }
        if (!TeaUtils.Client.isUnset(request.losslessRuleWarmupTime)) {
            query["LosslessRuleWarmupTime"] = request.losslessRuleWarmupTime!;
        }
        if (!TeaUtils.Client.isUnset(request.mcpuLimit)) {
            query["McpuLimit"] = request.mcpuLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.mcpuRequest)) {
            query["McpuRequest"] = request.mcpuRequest!;
        }
        if (!TeaUtils.Client.isUnset(request.memoryLimit)) {
            query["MemoryLimit"] = request.memoryLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.memoryRequest)) {
            query["MemoryRequest"] = request.memoryRequest!;
        }
        if (!TeaUtils.Client.isUnset(request.mountDescs)) {
            query["MountDescs"] = request.mountDescs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nasId)) {
            query["NasId"] = request.nasId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageUrl)) {
            query["PackageUrl"] = request.packageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageVersion)) {
            query["PackageVersion"] = request.packageVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageVersionId)) {
            query["PackageVersionId"] = request.packageVersionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postStart)) {
            query["PostStart"] = request.postStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preStop)) {
            query["PreStop"] = request.preStop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pvcMountDescs)) {
            query["PvcMountDescs"] = request.pvcMountDescs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readiness)) {
            query["Readiness"] = request.readiness ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            query["Replicas"] = request.replicas!;
        }
        if (!TeaUtils.Client.isUnset(request.requestsEphemeralStorage)) {
            query["RequestsEphemeralStorage"] = request.requestsEphemeralStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.runtimeClassName)) {
            query["RuntimeClassName"] = request.runtimeClassName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityContext)) {
            query["SecurityContext"] = request.securityContext ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecars)) {
            query["Sidecars"] = request.sidecars ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsConfigs)) {
            query["SlsConfigs"] = request.slsConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startup)) {
            query["Startup"] = request.startup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageType)) {
            query["StorageType"] = request.storageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminateGracePeriod)) {
            query["TerminateGracePeriod"] = request.terminateGracePeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlStrategy)) {
            query["TrafficControlStrategy"] = request.trafficControlStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStrategy)) {
            query["UpdateStrategy"] = request.updateStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uriEncoding)) {
            query["UriEncoding"] = request.uriEncoding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useBodyEncoding)) {
            query["UseBodyEncoding"] = request.useBodyEncoding!;
        }
        if (!TeaUtils.Client.isUnset(request.userBaseImageUrl)) {
            query["UserBaseImageUrl"] = request.userBaseImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volumesStr)) {
            query["VolumesStr"] = request.volumesStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webContainer)) {
            query["WebContainer"] = request.webContainer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webContainerConfig)) {
            query["WebContainerConfig"] = request.webContainerConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeployK8sApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_apps",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeployK8sApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployK8sApplication(_ request: DeployK8sApplicationRequest) async throws -> DeployK8sApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deployK8sApplicationWithOptions(request as! DeployK8sApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppInstanceListWithOptions(_ request: DescribeAppInstanceListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppInstanceListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withNodeInfo)) {
            query["WithNodeInfo"] = request.withNodeInfo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAppInstanceList",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/oam/app_instance_list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppInstanceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppInstanceList(_ request: DescribeAppInstanceListRequest) async throws -> DescribeAppInstanceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeAppInstanceListWithOptions(request as! DescribeAppInstanceListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationScalingRulesWithOptions(_ request: DescribeApplicationScalingRulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApplicationScalingRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApplicationScalingRules",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/eam/scale/application_scaling_rules",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApplicationScalingRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationScalingRules(_ request: DescribeApplicationScalingRulesRequest) async throws -> DescribeApplicationScalingRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeApplicationScalingRulesWithOptions(request as! DescribeApplicationScalingRulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLocalitySettingWithOptions(_ request: DescribeLocalitySettingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLocalitySettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLocalitySetting",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/sp/applications/locality/setting",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLocalitySettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLocalitySetting(_ request: DescribeLocalitySettingRequest) async throws -> DescribeLocalitySettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeLocalitySettingWithOptions(request as! DescribeLocalitySettingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableApplicationScalingRuleWithOptions(_ request: DisableApplicationScalingRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableApplicationScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleName)) {
            query["ScalingRuleName"] = request.scalingRuleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableApplicationScalingRule",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/eam/scale/disable_application_scaling_rule",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableApplicationScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableApplicationScalingRule(_ request: DisableApplicationScalingRuleRequest) async throws -> DisableApplicationScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableApplicationScalingRuleWithOptions(request as! DisableApplicationScalingRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableApplicationScalingRuleWithOptions(_ request: EnableApplicationScalingRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableApplicationScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleName)) {
            query["ScalingRuleName"] = request.scalingRuleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableApplicationScalingRule",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/eam/scale/enable_application_scaling_rule",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableApplicationScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableApplicationScalingRule(_ request: EnableApplicationScalingRuleRequest) async throws -> EnableApplicationScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableApplicationScalingRuleWithOptions(request as! EnableApplicationScalingRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppDeploymentWithOptions(_ request: GetAppDeploymentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAppDeploymentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAppDeployment",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/oam/app_deployment",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAppDeploymentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppDeployment(_ request: GetAppDeploymentRequest) async throws -> GetAppDeploymentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAppDeploymentWithOptions(request as! GetAppDeploymentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApplicationWithOptions(_ request: GetApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/app_info",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApplication(_ request: GetApplicationRequest) async throws -> GetApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getApplicationWithOptions(request as! GetApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChangeOrderInfoWithOptions(_ request: GetChangeOrderInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChangeOrderInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeOrderId)) {
            query["ChangeOrderId"] = request.changeOrderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChangeOrderInfo",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/change_order_info",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChangeOrderInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChangeOrderInfo(_ request: GetChangeOrderInfoRequest) async throws -> GetChangeOrderInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getChangeOrderInfoWithOptions(request as! GetChangeOrderInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterWithOptions(_ request: GetClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCluster",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/cluster",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCluster(_ request: GetClusterRequest) async throws -> GetClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getClusterWithOptions(request as! GetClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getContainerConfigurationWithOptions(_ request: GetContainerConfigurationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetContainerConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetContainerConfiguration",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/container_config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetContainerConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getContainerConfiguration(_ request: GetContainerConfigurationRequest) async throws -> GetContainerConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getContainerConfigurationWithOptions(request as! GetContainerConfigurationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJavaStartUpConfigWithOptions(_ request: GetJavaStartUpConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJavaStartUpConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJavaStartUpConfig",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/oam/java_start_up_config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJavaStartUpConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJavaStartUpConfig(_ request: GetJavaStartUpConfigRequest) async throws -> GetJavaStartUpConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getJavaStartUpConfigWithOptions(request as! GetJavaStartUpConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJvmConfigurationWithOptions(_ request: GetJvmConfigurationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJvmConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJvmConfiguration",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/app_jvm_config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJvmConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJvmConfiguration(_ request: GetJvmConfigurationRequest) async throws -> GetJvmConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getJvmConfigurationWithOptions(request as! GetJvmConfigurationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getK8sAppPrecheckResultWithOptions(_ request: GetK8sAppPrecheckResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetK8sAppPrecheckResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetK8sAppPrecheckResult",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/app_precheck",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetK8sAppPrecheckResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getK8sAppPrecheckResult(_ request: GetK8sAppPrecheckResultRequest) async throws -> GetK8sAppPrecheckResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getK8sAppPrecheckResultWithOptions(request as! GetK8sAppPrecheckResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getK8sApplicationWithOptions(_ request: GetK8sApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetK8sApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["From"] = request.from ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetK8sApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_application",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetK8sApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getK8sApplication(_ request: GetK8sApplicationRequest) async throws -> GetK8sApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getK8sApplicationWithOptions(request as! GetK8sApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getK8sClusterWithOptions(_ request: GetK8sClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetK8sClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["ClusterType"] = request.clusterType!;
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionTag)) {
            query["RegionTag"] = request.regionTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subClusterType)) {
            query["SubClusterType"] = request.subClusterType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetK8sCluster",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s_clusters",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetK8sClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getK8sCluster(_ request: GetK8sClusterRequest) async throws -> GetK8sClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getK8sClusterWithOptions(request as! GetK8sClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getK8sServicesWithOptions(_ request: GetK8sServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetK8sServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetK8sServices",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_service",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetK8sServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getK8sServices(_ request: GetK8sServicesRequest) async throws -> GetK8sServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getK8sServicesWithOptions(request as! GetK8sServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPackageStorageCredentialWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPackageStorageCredentialResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPackageStorageCredential",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/package_storage_credential",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPackageStorageCredentialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPackageStorageCredential() async throws -> GetPackageStorageCredentialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPackageStorageCredentialWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScalingRulesWithOptions(_ request: GetScalingRulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetScalingRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetScalingRules",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/scalingRules",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetScalingRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScalingRules(_ request: GetScalingRulesRequest) async throws -> GetScalingRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getScalingRulesWithOptions(request as! GetScalingRulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecureTokenWithOptions(_ request: GetSecureTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSecureTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSecureToken",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/secure_token",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSecureTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecureToken(_ request: GetSecureTokenRequest) async throws -> GetSecureTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSecureTokenWithOptions(request as! GetSecureTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceConsumersPageWithOptions(_ request: GetServiceConsumersPageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceConsumersPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.group)) {
            query["group"] = request.group ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            query["origin"] = request.origin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registryType)) {
            query["registryType"] = request.registryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            query["serviceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["serviceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["serviceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceVersion)) {
            query["serviceVersion"] = request.serviceVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceConsumersPage",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/sp/api/mseForOam/getServiceConsumersPage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceConsumersPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceConsumersPage(_ request: GetServiceConsumersPageRequest) async throws -> GetServiceConsumersPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceConsumersPageWithOptions(request as! GetServiceConsumersPageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceDetailWithOptions(_ request: GetServiceDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.group)) {
            query["group"] = request.group ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            query["origin"] = request.origin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registryType)) {
            query["registryType"] = request.registryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            query["serviceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["serviceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["serviceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceVersion)) {
            query["serviceVersion"] = request.serviceVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceDetail",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/sp/api/mseForOam/getServiceDetail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceDetail(_ request: GetServiceDetailRequest) async throws -> GetServiceDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceDetailWithOptions(request as! GetServiceDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceListPageWithOptions(_ request: GetServiceListPageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceListPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            query["origin"] = request.origin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchType)) {
            query["searchType"] = request.searchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchValue)) {
            query["searchValue"] = request.searchValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["serviceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.side)) {
            query["side"] = request.side ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceListPage",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/sp/api/mseForOam/getServiceListPage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceListPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceListPage(_ request: GetServiceListPageRequest) async throws -> GetServiceListPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceListPageWithOptions(request as! GetServiceListPageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceMethodPageWithOptions(_ request: GetServiceMethodPageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceMethodPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.group)) {
            query["group"] = request.group ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.methodController)) {
            query["methodController"] = request.methodController ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            query["origin"] = request.origin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            query["path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registryType)) {
            query["registryType"] = request.registryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            query["serviceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["serviceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["serviceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceVersion)) {
            query["serviceVersion"] = request.serviceVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceMethodPage",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/sp/api/mseForOam/getServiceMethodPage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceMethodPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceMethodPage(_ request: GetServiceMethodPageRequest) async throws -> GetServiceMethodPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceMethodPageWithOptions(request as! GetServiceMethodPageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceProvidersPageWithOptions(_ request: GetServiceProvidersPageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceProvidersPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.group)) {
            query["group"] = request.group ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            query["origin"] = request.origin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registryType)) {
            query["registryType"] = request.registryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            query["serviceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["serviceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["serviceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceVersion)) {
            query["serviceVersion"] = request.serviceVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceProvidersPage",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/sp/api/mseForOam/getServiceProvidersPage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceProvidersPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceProvidersPage(_ request: GetServiceProvidersPageRequest) async throws -> GetServiceProvidersPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceProvidersPageWithOptions(request as! GetServiceProvidersPageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWebContainerConfigWithOptions(_ request: GetWebContainerConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWebContainerConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWebContainerConfig",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/oam/web_container_config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWebContainerConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWebContainerConfig(_ request: GetWebContainerConfigRequest) async throws -> GetWebContainerConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWebContainerConfigWithOptions(request as! GetWebContainerConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importK8sClusterWithOptions(_ request: ImportK8sClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportK8sClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAsm)) {
            query["EnableAsm"] = request.enableAsm!;
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportK8sCluster",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/import_k8s_cluster",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportK8sClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importK8sCluster(_ request: ImportK8sClusterRequest) async throws -> ImportK8sClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await importK8sClusterWithOptions(request as! ImportK8sClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertApplicationWithOptions(_ request: InsertApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationName)) {
            query["ApplicationName"] = request.applicationName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildPackId)) {
            query["BuildPackId"] = request.buildPackId!;
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentIds)) {
            query["ComponentIds"] = request.componentIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            query["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecuInfo)) {
            query["EcuInfo"] = request.ecuInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enablePortCheck)) {
            query["EnablePortCheck"] = request.enablePortCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.enableUrlCheck)) {
            query["EnableUrlCheck"] = request.enableUrlCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckUrl)) {
            query["HealthCheckUrl"] = request.healthCheckUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hooks)) {
            query["Hooks"] = request.hooks ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jdk)) {
            query["Jdk"] = request.jdk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jvmOptions)) {
            query["JvmOptions"] = request.jvmOptions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxHeapSize)) {
            query["MaxHeapSize"] = request.maxHeapSize!;
        }
        if (!TeaUtils.Client.isUnset(request.maxPermSize)) {
            query["MaxPermSize"] = request.maxPermSize!;
        }
        if (!TeaUtils.Client.isUnset(request.mem)) {
            query["Mem"] = request.mem!;
        }
        if (!TeaUtils.Client.isUnset(request.minHeapSize)) {
            query["MinHeapSize"] = request.minHeapSize!;
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            query["PackageType"] = request.packageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reservedPortStr)) {
            query["ReservedPortStr"] = request.reservedPortStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webContainer)) {
            query["WebContainer"] = request.webContainer ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_create_app",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertApplication(_ request: InsertApplicationRequest) async throws -> InsertApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await insertApplicationWithOptions(request as! InsertApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertClusterWithOptions(_ request: InsertClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterName)) {
            query["ClusterName"] = request.clusterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["ClusterType"] = request.clusterType!;
        }
        if (!TeaUtils.Client.isUnset(request.iaasProvider)) {
            query["IaasProvider"] = request.iaasProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkMode)) {
            query["NetworkMode"] = request.networkMode!;
        }
        if (!TeaUtils.Client.isUnset(request.oversoldFactor)) {
            query["OversoldFactor"] = request.oversoldFactor!;
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertCluster",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/cluster",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertCluster(_ request: InsertClusterRequest) async throws -> InsertClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await insertClusterWithOptions(request as! InsertClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertClusterMemberWithOptions(_ request: InsertClusterMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertClusterMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["clusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["instanceIds"] = request.instanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["password"] = request.password ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertClusterMember",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/cluster_member",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertClusterMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertClusterMember(_ request: InsertClusterMemberRequest) async throws -> InsertClusterMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await insertClusterMemberWithOptions(request as! InsertClusterMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertDeployGroupWithOptions(_ request: InsertDeployGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertDeployGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initPackageVersionId)) {
            query["InitPackageVersionId"] = request.initPackageVersionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertDeployGroup",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/deploy_group",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertDeployGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertDeployGroup(_ request: InsertDeployGroupRequest) async throws -> InsertDeployGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await insertDeployGroupWithOptions(request as! InsertDeployGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertK8sApplicationWithOptions(_ request: InsertK8sApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertK8sApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.annotations)) {
            query["Annotations"] = request.annotations ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appConfig)) {
            query["AppConfig"] = request.appConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appTemplateName)) {
            query["AppTemplateName"] = request.appTemplateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicationDescription)) {
            query["ApplicationDescription"] = request.applicationDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildPackId)) {
            query["BuildPackId"] = request.buildPackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.command)) {
            query["Command"] = request.command ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commandArgs)) {
            query["CommandArgs"] = request.commandArgs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configMountDescs)) {
            query["ConfigMountDescs"] = request.configMountDescs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerRegistryId)) {
            query["ContainerRegistryId"] = request.containerRegistryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.csClusterId)) {
            query["CsClusterId"] = request.csClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customAffinity)) {
            query["CustomAffinity"] = request.customAffinity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customAgentVersion)) {
            query["CustomAgentVersion"] = request.customAgentVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customTolerations)) {
            query["CustomTolerations"] = request.customTolerations ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deployAcrossNodes)) {
            query["DeployAcrossNodes"] = request.deployAcrossNodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deployAcrossZones)) {
            query["DeployAcrossZones"] = request.deployAcrossZones ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.edasContainerVersion)) {
            query["EdasContainerVersion"] = request.edasContainerVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emptyDirs)) {
            query["EmptyDirs"] = request.emptyDirs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAhas)) {
            query["EnableAhas"] = request.enableAhas!;
        }
        if (!TeaUtils.Client.isUnset(request.enableAsm)) {
            query["EnableAsm"] = request.enableAsm!;
        }
        if (!TeaUtils.Client.isUnset(request.enableEmptyPushReject)) {
            query["EnableEmptyPushReject"] = request.enableEmptyPushReject!;
        }
        if (!TeaUtils.Client.isUnset(request.enableLosslessRule)) {
            query["EnableLosslessRule"] = request.enableLosslessRule!;
        }
        if (!TeaUtils.Client.isUnset(request.envFroms)) {
            query["EnvFroms"] = request.envFroms ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envs)) {
            query["Envs"] = request.envs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureConfig)) {
            query["FeatureConfig"] = request.featureConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imagePlatforms)) {
            query["ImagePlatforms"] = request.imagePlatforms ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initContainers)) {
            query["InitContainers"] = request.initContainers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetSlbId)) {
            query["InternetSlbId"] = request.internetSlbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetSlbPort)) {
            query["InternetSlbPort"] = request.internetSlbPort!;
        }
        if (!TeaUtils.Client.isUnset(request.internetSlbProtocol)) {
            query["InternetSlbProtocol"] = request.internetSlbProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetTargetPort)) {
            query["InternetTargetPort"] = request.internetTargetPort!;
        }
        if (!TeaUtils.Client.isUnset(request.intranetSlbId)) {
            query["IntranetSlbId"] = request.intranetSlbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intranetSlbPort)) {
            query["IntranetSlbPort"] = request.intranetSlbPort!;
        }
        if (!TeaUtils.Client.isUnset(request.intranetSlbProtocol)) {
            query["IntranetSlbProtocol"] = request.intranetSlbProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intranetTargetPort)) {
            query["IntranetTargetPort"] = request.intranetTargetPort!;
        }
        if (!TeaUtils.Client.isUnset(request.isMultilingualApp)) {
            query["IsMultilingualApp"] = request.isMultilingualApp!;
        }
        if (!TeaUtils.Client.isUnset(request.JDK)) {
            query["JDK"] = request.JDK ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.javaStartUpConfig)) {
            query["JavaStartUpConfig"] = request.javaStartUpConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limitCpu)) {
            query["LimitCpu"] = request.limitCpu!;
        }
        if (!TeaUtils.Client.isUnset(request.limitEphemeralStorage)) {
            query["LimitEphemeralStorage"] = request.limitEphemeralStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.limitMem)) {
            query["LimitMem"] = request.limitMem!;
        }
        if (!TeaUtils.Client.isUnset(request.limitmCpu)) {
            query["LimitmCpu"] = request.limitmCpu!;
        }
        if (!TeaUtils.Client.isUnset(request.liveness)) {
            query["Liveness"] = request.liveness ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localVolume)) {
            query["LocalVolume"] = request.localVolume ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.losslessRuleAligned)) {
            query["LosslessRuleAligned"] = request.losslessRuleAligned!;
        }
        if (!TeaUtils.Client.isUnset(request.losslessRuleDelayTime)) {
            query["LosslessRuleDelayTime"] = request.losslessRuleDelayTime!;
        }
        if (!TeaUtils.Client.isUnset(request.losslessRuleFuncType)) {
            query["LosslessRuleFuncType"] = request.losslessRuleFuncType!;
        }
        if (!TeaUtils.Client.isUnset(request.losslessRuleRelated)) {
            query["LosslessRuleRelated"] = request.losslessRuleRelated!;
        }
        if (!TeaUtils.Client.isUnset(request.losslessRuleWarmupTime)) {
            query["LosslessRuleWarmupTime"] = request.losslessRuleWarmupTime!;
        }
        if (!TeaUtils.Client.isUnset(request.mountDescs)) {
            query["MountDescs"] = request.mountDescs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nasId)) {
            query["NasId"] = request.nasId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            query["PackageType"] = request.packageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageUrl)) {
            query["PackageUrl"] = request.packageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageVersion)) {
            query["PackageVersion"] = request.packageVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postStart)) {
            query["PostStart"] = request.postStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preStop)) {
            query["PreStop"] = request.preStop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pvcMountDescs)) {
            query["PvcMountDescs"] = request.pvcMountDescs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readiness)) {
            query["Readiness"] = request.readiness ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            query["Replicas"] = request.replicas!;
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestsCpu)) {
            query["RequestsCpu"] = request.requestsCpu!;
        }
        if (!TeaUtils.Client.isUnset(request.requestsEphemeralStorage)) {
            query["RequestsEphemeralStorage"] = request.requestsEphemeralStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.requestsMem)) {
            query["RequestsMem"] = request.requestsMem!;
        }
        if (!TeaUtils.Client.isUnset(request.requestsmCpu)) {
            query["RequestsmCpu"] = request.requestsmCpu!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeClassName)) {
            query["RuntimeClassName"] = request.runtimeClassName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretName)) {
            query["SecretName"] = request.secretName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityContext)) {
            query["SecurityContext"] = request.securityContext ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceConfigs)) {
            query["ServiceConfigs"] = request.serviceConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecars)) {
            query["Sidecars"] = request.sidecars ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsConfigs)) {
            query["SlsConfigs"] = request.slsConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startup)) {
            query["Startup"] = request.startup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageType)) {
            query["StorageType"] = request.storageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminateGracePeriod)) {
            query["TerminateGracePeriod"] = request.terminateGracePeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.uriEncoding)) {
            query["UriEncoding"] = request.uriEncoding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useBodyEncoding)) {
            query["UseBodyEncoding"] = request.useBodyEncoding!;
        }
        if (!TeaUtils.Client.isUnset(request.userBaseImageUrl)) {
            query["UserBaseImageUrl"] = request.userBaseImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webContainer)) {
            query["WebContainer"] = request.webContainer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webContainerConfig)) {
            query["WebContainerConfig"] = request.webContainerConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadType)) {
            query["WorkloadType"] = request.workloadType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertK8sApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/create_k8s_app",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertK8sApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertK8sApplication(_ request: InsertK8sApplicationRequest) async throws -> InsertK8sApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await insertK8sApplicationWithOptions(request as! InsertK8sApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertOrUpdateRegionWithOptions(_ request: InsertOrUpdateRegionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertOrUpdateRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.debugEnable)) {
            query["DebugEnable"] = request.debugEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.mseInstanceId)) {
            query["MseInstanceId"] = request.mseInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionName)) {
            query["RegionName"] = request.regionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionTag)) {
            query["RegionTag"] = request.regionTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registryType)) {
            query["RegistryType"] = request.registryType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertOrUpdateRegion",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/user_region_def",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertOrUpdateRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertOrUpdateRegion(_ request: InsertOrUpdateRegionRequest) async throws -> InsertOrUpdateRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await insertOrUpdateRegionWithOptions(request as! InsertOrUpdateRegionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertRoleWithOptions(_ request: InsertRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionData)) {
            query["ActionData"] = request.actionData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            query["RoleName"] = request.roleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertRole",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/account/create_role",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertRole(_ request: InsertRoleRequest) async throws -> InsertRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await insertRoleWithOptions(request as! InsertRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertServiceGroupWithOptions(_ request: InsertServiceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertServiceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertServiceGroup",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/service/serviceGroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertServiceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertServiceGroup(_ request: InsertServiceGroupRequest) async throws -> InsertServiceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await insertServiceGroupWithOptions(request as! InsertServiceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertSwimmingLaneWithOptions(_ request: InsertSwimmingLaneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertSwimmingLaneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInfos)) {
            query["AppInfos"] = request.appInfos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableRules)) {
            query["EnableRules"] = request.enableRules!;
        }
        if (!TeaUtils.Client.isUnset(request.entryRules)) {
            query["EntryRules"] = request.entryRules ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertSwimmingLane",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/trafficmgnt/swimming_lanes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertSwimmingLaneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertSwimmingLane(_ request: InsertSwimmingLaneRequest) async throws -> InsertSwimmingLaneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await insertSwimmingLaneWithOptions(request as! InsertSwimmingLaneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertSwimmingLaneGroupWithOptions(_ request: InsertSwimmingLaneGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertSwimmingLaneGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIds)) {
            query["AppIds"] = request.appIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entryApp)) {
            query["EntryApp"] = request.entryApp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertSwimmingLaneGroup",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/trafficmgnt/swimming_lane_groups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertSwimmingLaneGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertSwimmingLaneGroup(_ request: InsertSwimmingLaneGroupRequest) async throws -> InsertSwimmingLaneGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await insertSwimmingLaneGroupWithOptions(request as! InsertSwimmingLaneGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installAgentWithOptions(_ request: InstallAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InstallAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.doAsync)) {
            query["DoAsync"] = request.doAsync!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InstallAgent",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/ecss/install_agent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InstallAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installAgent(_ request: InstallAgentRequest) async throws -> InstallAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await installAgentWithOptions(request as! InstallAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAliyunRegionWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAliyunRegionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAliyunRegion",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/region_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAliyunRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAliyunRegion() async throws -> ListAliyunRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAliyunRegionWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationWithOptions(_ request: ListApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIds)) {
            query["AppIds"] = request.appIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalRegionIdFilter)) {
            query["LogicalRegionIdFilter"] = request.logicalRegionIdFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/app_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplication(_ request: ListApplicationRequest) async throws -> ListApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listApplicationWithOptions(request as! ListApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationEcuWithOptions(_ request: ListApplicationEcuRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApplicationEcuResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApplicationEcu",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/ecu_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApplicationEcuResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationEcu(_ request: ListApplicationEcuRequest) async throws -> ListApplicationEcuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listApplicationEcuWithOptions(request as! ListApplicationEcuRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorityWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAuthorityResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAuthority",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/account/authority_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAuthorityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthority() async throws -> ListAuthorityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAuthorityWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBuildPackWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBuildPackResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBuildPack",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/build_pack_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBuildPackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBuildPack() async throws -> ListBuildPackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listBuildPackWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterWithOptions(_ request: ListClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCluster",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/cluster_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCluster(_ request: ListClusterRequest) async throws -> ListClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listClusterWithOptions(request as! ListClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterMembersWithOptions(_ request: ListClusterMembersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClusterMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.ecsList)) {
            query["EcsList"] = request.ecsList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClusterMembers",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/cluster_member_list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClusterMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterMembers(_ request: ListClusterMembersRequest) async throws -> ListClusterMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listClusterMembersWithOptions(request as! ListClusterMembersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComponentsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListComponentsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListComponents",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/components",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListComponentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComponents() async throws -> ListComponentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listComponentsWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigTemplatesWithOptions(_ request: ListConfigTemplatesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConfigTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConfigTemplates",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/config_template",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConfigTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigTemplates(_ request: ListConfigTemplatesRequest) async throws -> ListConfigTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listConfigTemplatesWithOptions(request as! ListConfigTemplatesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConsumedServicesWithOptions(_ request: ListConsumedServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConsumedServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConsumedServices",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/service/listConsumedServices",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConsumedServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConsumedServices(_ request: ListConsumedServicesRequest) async throws -> ListConsumedServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listConsumedServicesWithOptions(request as! ListConsumedServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConvertableEcuWithOptions(_ request: ListConvertableEcuRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConvertableEcuResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["clusterId"] = request.clusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConvertableEcu",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/convertable_ecu_list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConvertableEcuResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConvertableEcu(_ request: ListConvertableEcuRequest) async throws -> ListConvertableEcuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listConvertableEcuWithOptions(request as! ListConvertableEcuRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeployGroupWithOptions(_ request: ListDeployGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeployGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDeployGroup",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/deploy_group_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDeployGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeployGroup(_ request: ListDeployGroupRequest) async throws -> ListDeployGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDeployGroupWithOptions(request as! ListDeployGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEcsNotInClusterWithOptions(_ request: ListEcsNotInClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEcsNotInClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkMode)) {
            query["NetworkMode"] = request.networkMode!;
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEcsNotInCluster",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/ecs_not_in_cluster",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEcsNotInClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEcsNotInCluster(_ request: ListEcsNotInClusterRequest) async throws -> ListEcsNotInClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEcsNotInClusterWithOptions(request as! ListEcsNotInClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEcuByRegionWithOptions(_ request: ListEcuByRegionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEcuByRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.act)) {
            query["Act"] = request.act ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEcuByRegion",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/ecu_list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEcuByRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEcuByRegion(_ request: ListEcuByRegionRequest) async throws -> ListEcuByRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEcuByRegionWithOptions(request as! ListEcuByRegionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHistoryDeployVersionWithOptions(_ request: ListHistoryDeployVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHistoryDeployVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHistoryDeployVersion",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/deploy_history_version_list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHistoryDeployVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHistoryDeployVersion(_ request: ListHistoryDeployVersionRequest) async throws -> ListHistoryDeployVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listHistoryDeployVersionWithOptions(request as! ListHistoryDeployVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listK8sConfigMapsWithOptions(_ request: ListK8sConfigMapsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListK8sConfigMapsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.condition)) {
            query["Condition"] = request.condition ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showRelatedApps)) {
            query["ShowRelatedApps"] = request.showRelatedApps!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListK8sConfigMaps",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_config_map",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListK8sConfigMapsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listK8sConfigMaps(_ request: ListK8sConfigMapsRequest) async throws -> ListK8sConfigMapsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listK8sConfigMapsWithOptions(request as! ListK8sConfigMapsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listK8sIngressRulesWithOptions(_ request: ListK8sIngressRulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListK8sIngressRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.condition)) {
            query["Condition"] = request.condition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListK8sIngressRules",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_ingress",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListK8sIngressRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listK8sIngressRules(_ request: ListK8sIngressRulesRequest) async throws -> ListK8sIngressRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listK8sIngressRulesWithOptions(request as! ListK8sIngressRulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listK8sNamespacesWithOptions(_ request: ListK8sNamespacesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListK8sNamespacesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListK8sNamespaces",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_namespace",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListK8sNamespacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listK8sNamespaces(_ request: ListK8sNamespacesRequest) async throws -> ListK8sNamespacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listK8sNamespacesWithOptions(request as! ListK8sNamespacesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listK8sSecretsWithOptions(_ request: ListK8sSecretsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListK8sSecretsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.condition)) {
            query["Condition"] = request.condition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showRelatedApps)) {
            query["ShowRelatedApps"] = request.showRelatedApps!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListK8sSecrets",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_secret",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListK8sSecretsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listK8sSecrets(_ request: ListK8sSecretsRequest) async throws -> ListK8sSecretsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listK8sSecretsWithOptions(request as! ListK8sSecretsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMethodsWithOptions(_ request: ListMethodsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMethodsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMethods",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/service/list_methods",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMethodsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMethods(_ request: ListMethodsRequest) async throws -> ListMethodsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMethodsWithOptions(request as! ListMethodsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPublishedServicesWithOptions(_ request: ListPublishedServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPublishedServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPublishedServices",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/service/listPublishedServices",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPublishedServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPublishedServices(_ request: ListPublishedServicesRequest) async throws -> ListPublishedServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPublishedServicesWithOptions(request as! ListPublishedServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecentChangeOrderWithOptions(_ request: ListRecentChangeOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRecentChangeOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRecentChangeOrder",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/change_order_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRecentChangeOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecentChangeOrder(_ request: ListRecentChangeOrderRequest) async throws -> ListRecentChangeOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRecentChangeOrderWithOptions(request as! ListRecentChangeOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceGroupWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceGroup",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/reg_group_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceGroup() async throws -> ListResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceGroupWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRoleWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRoleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRole",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/account/role_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRole() async throws -> ListRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRoleWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScaleOutEcuWithOptions(_ request: ListScaleOutEcuRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListScaleOutEcuResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            query["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceNum)) {
            query["InstanceNum"] = request.instanceNum!;
        }
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mem)) {
            query["Mem"] = request.mem!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListScaleOutEcu",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/scale_out_ecu_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListScaleOutEcuResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScaleOutEcu(_ request: ListScaleOutEcuRequest) async throws -> ListScaleOutEcuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listScaleOutEcuWithOptions(request as! ListScaleOutEcuRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceGroupsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceGroupsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServiceGroups",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/service/serviceGroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceGroups() async throws -> ListServiceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServiceGroupsWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSlbWithOptions(_ request: ListSlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSlbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressType)) {
            query["AddressType"] = request.addressType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slbType)) {
            query["SlbType"] = request.slbType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSlb",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/slb_list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSlbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSlb(_ request: ListSlbRequest) async throws -> ListSlbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSlbWithOptions(request as! ListSlbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubAccountWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSubAccountResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSubAccount",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/account/sub_account_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSubAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubAccount() async throws -> ListSubAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSubAccountWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSwimmingLaneWithOptions(_ request: ListSwimmingLaneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSwimmingLaneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSwimmingLane",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/trafficmgnt/swimming_lanes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSwimmingLaneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSwimmingLane(_ request: ListSwimmingLaneRequest) async throws -> ListSwimmingLaneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSwimmingLaneWithOptions(request as! ListSwimmingLaneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSwimmingLaneGroupWithOptions(_ request: ListSwimmingLaneGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSwimmingLaneGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSwimmingLaneGroup",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/trafficmgnt/swimming_lane_groups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSwimmingLaneGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSwimmingLaneGroup(_ request: ListSwimmingLaneGroupRequest) async throws -> ListSwimmingLaneGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSwimmingLaneGroupWithOptions(request as! ListSwimmingLaneGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/tag/tags",
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
    public func listUserDefineRegionWithOptions(_ request: ListUserDefineRegionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserDefineRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.debugEnable)) {
            query["DebugEnable"] = request.debugEnable!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserDefineRegion",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/user_region_defs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserDefineRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserDefineRegion(_ request: ListUserDefineRegionRequest) async throws -> ListUserDefineRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserDefineRegionWithOptions(request as! ListUserDefineRegionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVpcWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVpcResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVpc",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/vpc_list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVpcResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVpc() async throws -> ListVpcResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listVpcWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func migrateEcuWithOptions(_ request: MigrateEcuRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> MigrateEcuResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MigrateEcu",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/migrate_ecu",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MigrateEcuResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func migrateEcu(_ request: MigrateEcuRequest) async throws -> MigrateEcuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await migrateEcuWithOptions(request as! MigrateEcuRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScalingRuleWithOptions(_ request: ModifyScalingRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptEULA)) {
            query["AcceptEULA"] = request.acceptEULA!;
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inCondition)) {
            query["InCondition"] = request.inCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inCpu)) {
            query["InCpu"] = request.inCpu!;
        }
        if (!TeaUtils.Client.isUnset(request.inDuration)) {
            query["InDuration"] = request.inDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.inEnable)) {
            query["InEnable"] = request.inEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.inInstanceNum)) {
            query["InInstanceNum"] = request.inInstanceNum!;
        }
        if (!TeaUtils.Client.isUnset(request.inLoad)) {
            query["InLoad"] = request.inLoad!;
        }
        if (!TeaUtils.Client.isUnset(request.inRT)) {
            query["InRT"] = request.inRT!;
        }
        if (!TeaUtils.Client.isUnset(request.inStep)) {
            query["InStep"] = request.inStep!;
        }
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.multiAzPolicy)) {
            query["MultiAzPolicy"] = request.multiAzPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outCPU)) {
            query["OutCPU"] = request.outCPU!;
        }
        if (!TeaUtils.Client.isUnset(request.outCondition)) {
            query["OutCondition"] = request.outCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outDuration)) {
            query["OutDuration"] = request.outDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.outEnable)) {
            query["OutEnable"] = request.outEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.outInstanceNum)) {
            query["OutInstanceNum"] = request.outInstanceNum!;
        }
        if (!TeaUtils.Client.isUnset(request.outLoad)) {
            query["OutLoad"] = request.outLoad!;
        }
        if (!TeaUtils.Client.isUnset(request.outRT)) {
            query["OutRT"] = request.outRT!;
        }
        if (!TeaUtils.Client.isUnset(request.outStep)) {
            query["OutStep"] = request.outStep!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceFrom)) {
            query["ResourceFrom"] = request.resourceFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingPolicy)) {
            query["ScalingPolicy"] = request.scalingPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateInstanceId)) {
            query["TemplateInstanceId"] = request.templateInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateInstanceName)) {
            query["TemplateInstanceName"] = request.templateInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchIds)) {
            query["VSwitchIds"] = request.vSwitchIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyScalingRule",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/scaling_rules",
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
    public func queryApplicationStatusWithOptions(_ request: QueryApplicationStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryApplicationStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryApplicationStatus",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/app_status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryApplicationStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryApplicationStatus(_ request: QueryApplicationStatusRequest) async throws -> QueryApplicationStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryApplicationStatusWithOptions(request as! QueryApplicationStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEccInfoWithOptions(_ request: QueryEccInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEccInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eccId)) {
            query["EccId"] = request.eccId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEccInfo",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/ecc",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEccInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEccInfo(_ request: QueryEccInfoRequest) async throws -> QueryEccInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryEccInfoWithOptions(request as! QueryEccInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMigrateEcuListWithOptions(_ request: QueryMigrateEcuListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMigrateEcuListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMigrateEcuList",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/migrate_ecu_list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMigrateEcuListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMigrateEcuList(_ request: QueryMigrateEcuListRequest) async throws -> QueryMigrateEcuListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryMigrateEcuListWithOptions(request as! QueryMigrateEcuListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMigrateRegionListWithOptions(_ request: QueryMigrateRegionListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMigrateRegionListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logicalRegionId)) {
            query["LogicalRegionId"] = request.logicalRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMigrateRegionList",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/migrate_region_select",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMigrateRegionListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMigrateRegionList(_ request: QueryMigrateRegionListRequest) async throws -> QueryMigrateRegionListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryMigrateRegionListWithOptions(request as! QueryMigrateRegionListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRegionConfigWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRegionConfigResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRegionConfig",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/region_config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRegionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRegionConfig() async throws -> QueryRegionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryRegionConfigWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySlsLogStoreListWithOptions(_ request: QuerySlsLogStoreListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySlsLogStoreListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySlsLogStoreList",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/sls/query_sls_log_store_list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySlsLogStoreListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySlsLogStoreList(_ request: QuerySlsLogStoreListRequest) async throws -> QuerySlsLogStoreListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await querySlsLogStoreListWithOptions(request as! QuerySlsLogStoreListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetApplicationWithOptions(_ request: ResetApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eccInfo)) {
            query["EccInfo"] = request.eccInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_reset",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetApplication(_ request: ResetApplicationRequest) async throws -> ResetApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resetApplicationWithOptions(request as! ResetApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartApplicationWithOptions(_ request: RestartApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eccInfo)) {
            query["EccInfo"] = request.eccInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_restart",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartApplication(_ request: RestartApplicationRequest) async throws -> RestartApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await restartApplicationWithOptions(request as! RestartApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartK8sApplicationWithOptions(_ request: RestartK8sApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartK8sApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartK8sApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/restart_k8s_app",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartK8sApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartK8sApplication(_ request: RestartK8sApplicationRequest) async throws -> RestartK8sApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await restartK8sApplicationWithOptions(request as! RestartK8sApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryChangeOrderTaskWithOptions(_ request: RetryChangeOrderTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RetryChangeOrderTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.retryStatus)) {
            query["RetryStatus"] = request.retryStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RetryChangeOrderTask",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/task_retry",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetryChangeOrderTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryChangeOrderTask(_ request: RetryChangeOrderTaskRequest) async throws -> RetryChangeOrderTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await retryChangeOrderTaskWithOptions(request as! RetryChangeOrderTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackApplicationWithOptions(_ request: RollbackApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RollbackApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.batch)) {
            query["Batch"] = request.batch!;
        }
        if (!TeaUtils.Client.isUnset(request.batchWaitTime)) {
            query["BatchWaitTime"] = request.batchWaitTime!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyVersion)) {
            query["HistoryVersion"] = request.historyVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RollbackApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_rollback",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RollbackApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackApplication(_ request: RollbackApplicationRequest) async throws -> RollbackApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await rollbackApplicationWithOptions(request as! RollbackApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackChangeOrderWithOptions(_ request: RollbackChangeOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RollbackChangeOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeOrderId)) {
            query["ChangeOrderId"] = request.changeOrderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RollbackChangeOrder",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/oam/changeorder/rollback",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RollbackChangeOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackChangeOrder(_ request: RollbackChangeOrderRequest) async throws -> RollbackChangeOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await rollbackChangeOrderWithOptions(request as! RollbackChangeOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleInApplicationWithOptions(_ request: ScaleInApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ScaleInApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eccInfo)) {
            query["EccInfo"] = request.eccInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceStatus)) {
            query["ForceStatus"] = request.forceStatus!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScaleInApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_scale_in",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScaleInApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleInApplication(_ request: ScaleInApplicationRequest) async throws -> ScaleInApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await scaleInApplicationWithOptions(request as! ScaleInApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleK8sApplicationWithOptions(_ request: ScaleK8sApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ScaleK8sApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            query["Replicas"] = request.replicas!;
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScaleK8sApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_apps",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScaleK8sApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleK8sApplication(_ request: ScaleK8sApplicationRequest) async throws -> ScaleK8sApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await scaleK8sApplicationWithOptions(request as! ScaleK8sApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleOutApplicationWithOptions(_ request: ScaleOutApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ScaleOutApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deployGroup)) {
            query["DeployGroup"] = request.deployGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecuInfo)) {
            query["EcuInfo"] = request.ecuInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScaleOutApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_scale_out",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScaleOutApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleOutApplication(_ request: ScaleOutApplicationRequest) async throws -> ScaleOutApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await scaleOutApplicationWithOptions(request as! ScaleOutApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleoutApplicationWithNewInstancesWithOptions(_ request: ScaleoutApplicationWithNewInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ScaleoutApplicationWithNewInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenewPeriod)) {
            query["AutoRenewPeriod"] = request.autoRenewPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceChargePeriod)) {
            query["InstanceChargePeriod"] = request.instanceChargePeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceChargePeriodUnit)) {
            query["InstanceChargePeriodUnit"] = request.instanceChargePeriodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceChargeType)) {
            query["InstanceChargeType"] = request.instanceChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingNum)) {
            query["ScalingNum"] = request.scalingNum!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingPolicy)) {
            query["ScalingPolicy"] = request.scalingPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateInstanceId)) {
            query["TemplateInstanceId"] = request.templateInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScaleoutApplicationWithNewInstances",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/scaling/scale_out",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScaleoutApplicationWithNewInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleoutApplicationWithNewInstances(_ request: ScaleoutApplicationWithNewInstancesRequest) async throws -> ScaleoutApplicationWithNewInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await scaleoutApplicationWithNewInstancesWithOptions(request as! ScaleoutApplicationWithNewInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startApplicationWithOptions(_ request: StartApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eccInfo)) {
            query["EccInfo"] = request.eccInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_start",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startApplication(_ request: StartApplicationRequest) async throws -> StartApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startApplicationWithOptions(request as! StartApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startK8sAppPrecheckWithOptions(_ request: StartK8sAppPrecheckRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartK8sAppPrecheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.annotations)) {
            query["Annotations"] = request.annotations ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentIds)) {
            query["ComponentIds"] = request.componentIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configMountDescs)) {
            query["ConfigMountDescs"] = request.configMountDescs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emptyDirs)) {
            query["EmptyDirs"] = request.emptyDirs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envFroms)) {
            query["EnvFroms"] = request.envFroms ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envs)) {
            query["Envs"] = request.envs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.javaStartUpConfig)) {
            query["JavaStartUpConfig"] = request.javaStartUpConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limitEphemeralStorage)) {
            query["LimitEphemeralStorage"] = request.limitEphemeralStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.limitMem)) {
            query["LimitMem"] = request.limitMem!;
        }
        if (!TeaUtils.Client.isUnset(request.limitmCpu)) {
            query["LimitmCpu"] = request.limitmCpu!;
        }
        if (!TeaUtils.Client.isUnset(request.localVolume)) {
            query["LocalVolume"] = request.localVolume ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageUrl)) {
            query["PackageUrl"] = request.packageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pvcMountDescs)) {
            query["PvcMountDescs"] = request.pvcMountDescs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            query["Replicas"] = request.replicas!;
        }
        if (!TeaUtils.Client.isUnset(request.requestsEphemeralStorage)) {
            query["RequestsEphemeralStorage"] = request.requestsEphemeralStorage!;
        }
        if (!TeaUtils.Client.isUnset(request.requestsMem)) {
            query["RequestsMem"] = request.requestsMem!;
        }
        if (!TeaUtils.Client.isUnset(request.requestsmCpu)) {
            query["RequestsmCpu"] = request.requestsmCpu!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartK8sAppPrecheck",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/app_precheck",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartK8sAppPrecheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startK8sAppPrecheck(_ request: StartK8sAppPrecheckRequest) async throws -> StartK8sAppPrecheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startK8sAppPrecheckWithOptions(request as! StartK8sAppPrecheckRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startK8sApplicationWithOptions(_ request: StartK8sApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartK8sApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            query["Replicas"] = request.replicas!;
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartK8sApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/start_k8s_app",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartK8sApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startK8sApplication(_ request: StartK8sApplicationRequest) async throws -> StartK8sApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startK8sApplicationWithOptions(request as! StartK8sApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopApplicationWithOptions(_ request: StopApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eccInfo)) {
            query["EccInfo"] = request.eccInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_stop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopApplication(_ request: StopApplicationRequest) async throws -> StopApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopApplicationWithOptions(request as! StopApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopK8sApplicationWithOptions(_ request: StopK8sApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopK8sApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopK8sApplication",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/stop_k8s_app",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopK8sApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopK8sApplication(_ request: StopK8sApplicationRequest) async throws -> StopK8sApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopK8sApplicationWithOptions(request as! StopK8sApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchAdvancedMonitoringWithOptions(_ request: SwitchAdvancedMonitoringRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchAdvancedMonitoringResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAdvancedMonitoring)) {
            query["EnableAdvancedMonitoring"] = request.enableAdvancedMonitoring!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchAdvancedMonitoring",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/monitor/advancedMonitorInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchAdvancedMonitoringResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchAdvancedMonitoring(_ request: SwitchAdvancedMonitoringRequest) async throws -> SwitchAdvancedMonitoringResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await switchAdvancedMonitoringWithOptions(request as! SwitchAdvancedMonitoringRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func synchronizeResourceWithOptions(_ request: SynchronizeResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SynchronizeResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SynchronizeResource",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/pop_sync_resource",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SynchronizeResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func synchronizeResource(_ request: SynchronizeResourceRequest) async throws -> SynchronizeResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await synchronizeResourceWithOptions(request as! SynchronizeResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/tag/tags",
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
    public func transformClusterMemberWithOptions(_ request: TransformClusterMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TransformClusterMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetClusterId)) {
            query["TargetClusterId"] = request.targetClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransformClusterMember",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/resource/transform_cluster_member",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransformClusterMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transformClusterMember(_ request: TransformClusterMemberRequest) async throws -> TransformClusterMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await transformClusterMemberWithOptions(request as! TransformClusterMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindK8sSlbWithOptions(_ request: UnbindK8sSlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindK8sSlbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slbName)) {
            query["SlbName"] = request.slbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindK8sSlb",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_slb_binding",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindK8sSlbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindK8sSlb(_ request: UnbindK8sSlbRequest) async throws -> UnbindK8sSlbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await unbindK8sSlbWithOptions(request as! UnbindK8sSlbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindSlbWithOptions(_ request: UnbindSlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindSlbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deleteListener)) {
            query["DeleteListener"] = request.deleteListener ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slbId)) {
            query["SlbId"] = request.slbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindSlb",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/app/unbind_slb_json",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindSlbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindSlb(_ request: UnbindSlbRequest) async throws -> UnbindSlbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await unbindSlbWithOptions(request as! UnbindSlbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteAll)) {
            query["DeleteAll"] = request.deleteAll!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeys)) {
            query["TagKeys"] = request.tagKeys ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/tag/tags",
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
    public func updateAccountInfoWithOptions(_ request: UpdateAccountInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAccountInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telephone)) {
            query["Telephone"] = request.telephone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAccountInfo",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/account/edit_account_info",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAccountInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAccountInfo(_ request: UpdateAccountInfoRequest) async throws -> UpdateAccountInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAccountInfoWithOptions(request as! UpdateAccountInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicationBaseInfoWithOptions(_ request: UpdateApplicationBaseInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApplicationBaseInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desc)) {
            query["Desc"] = request.desc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.owner)) {
            query["Owner"] = request.owner ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApplicationBaseInfo",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/update_app_info",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApplicationBaseInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicationBaseInfo(_ request: UpdateApplicationBaseInfoRequest) async throws -> UpdateApplicationBaseInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateApplicationBaseInfoWithOptions(request as! UpdateApplicationBaseInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicationScalingRuleWithOptions(_ request: UpdateApplicationScalingRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApplicationScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingBehaviour)) {
            query["ScalingBehaviour"] = request.scalingBehaviour ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleEnable)) {
            query["ScalingRuleEnable"] = request.scalingRuleEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleMetric)) {
            query["ScalingRuleMetric"] = request.scalingRuleMetric ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleName)) {
            query["ScalingRuleName"] = request.scalingRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleTimer)) {
            query["ScalingRuleTimer"] = request.scalingRuleTimer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleTrigger)) {
            query["ScalingRuleTrigger"] = request.scalingRuleTrigger ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scalingRuleType)) {
            query["ScalingRuleType"] = request.scalingRuleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApplicationScalingRule",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/eam/scale/application_scaling_rule",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApplicationScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicationScalingRule(_ request: UpdateApplicationScalingRuleRequest) async throws -> UpdateApplicationScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateApplicationScalingRuleWithOptions(request as! UpdateApplicationScalingRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigTemplateWithOptions(_ request: UpdateConfigTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConfigTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["Format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConfigTemplate",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/config_template",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConfigTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigTemplate(_ request: UpdateConfigTemplateRequest) async throws -> UpdateConfigTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateConfigTemplateWithOptions(request as! UpdateConfigTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateContainerWithOptions(_ request: UpdateContainerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateContainerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildPackId)) {
            query["BuildPackId"] = request.buildPackId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateContainer",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/changeorder/co_update_container",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateContainerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateContainer(_ request: UpdateContainerRequest) async throws -> UpdateContainerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateContainerWithOptions(request as! UpdateContainerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateContainerConfigurationWithOptions(_ request: UpdateContainerConfigurationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateContainerConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contextPath)) {
            query["ContextPath"] = request.contextPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpPort)) {
            query["HttpPort"] = request.httpPort!;
        }
        if (!TeaUtils.Client.isUnset(request.maxThreads)) {
            query["MaxThreads"] = request.maxThreads!;
        }
        if (!TeaUtils.Client.isUnset(request.URIEncoding)) {
            query["URIEncoding"] = request.URIEncoding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useBodyEncoding)) {
            query["UseBodyEncoding"] = request.useBodyEncoding!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateContainerConfiguration",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/container_config",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateContainerConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateContainerConfiguration(_ request: UpdateContainerConfigurationRequest) async throws -> UpdateContainerConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateContainerConfigurationWithOptions(request as! UpdateContainerConfigurationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHealthCheckUrlWithOptions(_ request: UpdateHealthCheckUrlRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHealthCheckUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hcURL)) {
            query["hcURL"] = request.hcURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateHealthCheckUrl",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/modify_hc_url",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateHealthCheckUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHealthCheckUrl(_ request: UpdateHealthCheckUrlRequest) async throws -> UpdateHealthCheckUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateHealthCheckUrlWithOptions(request as! UpdateHealthCheckUrlRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHookConfigurationWithOptions(_ request: UpdateHookConfigurationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHookConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hooks)) {
            query["Hooks"] = request.hooks ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateHookConfiguration",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/app/config_app_hook_json",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateHookConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHookConfiguration(_ request: UpdateHookConfigurationRequest) async throws -> UpdateHookConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateHookConfigurationWithOptions(request as! UpdateHookConfigurationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateJvmConfigurationWithOptions(_ request: UpdateJvmConfigurationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateJvmConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxHeapSize)) {
            query["MaxHeapSize"] = request.maxHeapSize!;
        }
        if (!TeaUtils.Client.isUnset(request.maxPermSize)) {
            query["MaxPermSize"] = request.maxPermSize!;
        }
        if (!TeaUtils.Client.isUnset(request.minHeapSize)) {
            query["MinHeapSize"] = request.minHeapSize!;
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            query["Options"] = request.options ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateJvmConfiguration",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/app/app_jvm_config",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateJvmConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateJvmConfiguration(_ request: UpdateJvmConfigurationRequest) async throws -> UpdateJvmConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateJvmConfigurationWithOptions(request as! UpdateJvmConfigurationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sApplicationBaseInfoWithOptions(_ request: UpdateK8sApplicationBaseInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateK8sApplicationBaseInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.owner)) {
            query["Owner"] = request.owner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateK8sApplicationBaseInfo",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/oam/update_app_basic_info",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateK8sApplicationBaseInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sApplicationBaseInfo(_ request: UpdateK8sApplicationBaseInfoRequest) async throws -> UpdateK8sApplicationBaseInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateK8sApplicationBaseInfoWithOptions(request as! UpdateK8sApplicationBaseInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sApplicationConfigWithOptions(_ request: UpdateK8sApplicationConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateK8sApplicationConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpuLimit)) {
            query["CpuLimit"] = request.cpuLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpuRequest)) {
            query["CpuRequest"] = request.cpuRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ephemeralStorageLimit)) {
            query["EphemeralStorageLimit"] = request.ephemeralStorageLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ephemeralStorageRequest)) {
            query["EphemeralStorageRequest"] = request.ephemeralStorageRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mcpuLimit)) {
            query["McpuLimit"] = request.mcpuLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mcpuRequest)) {
            query["McpuRequest"] = request.mcpuRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memoryLimit)) {
            query["MemoryLimit"] = request.memoryLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memoryRequest)) {
            query["MemoryRequest"] = request.memoryRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateK8sApplicationConfig",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_app_configuration",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateK8sApplicationConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sApplicationConfig(_ request: UpdateK8sApplicationConfigRequest) async throws -> UpdateK8sApplicationConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateK8sApplicationConfigWithOptions(request as! UpdateK8sApplicationConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sConfigMapWithOptions(_ request: UpdateK8sConfigMapRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateK8sConfigMapResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateK8sConfigMap",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_config_map",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateK8sConfigMapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sConfigMap(_ request: UpdateK8sConfigMapRequest) async throws -> UpdateK8sConfigMapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateK8sConfigMapWithOptions(request as! UpdateK8sConfigMapRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sIngressRuleWithOptions(_ request: UpdateK8sIngressRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateK8sIngressRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.annotations)) {
            query["Annotations"] = request.annotations ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ingressConf)) {
            query["IngressConf"] = request.ingressConf ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateK8sIngressRule",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_ingress",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateK8sIngressRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sIngressRule(_ request: UpdateK8sIngressRuleRequest) async throws -> UpdateK8sIngressRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateK8sIngressRuleWithOptions(request as! UpdateK8sIngressRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sResourceWithOptions(_ request: UpdateK8sResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateK8sResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceContent)) {
            body["ResourceContent"] = request.resourceContent ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateK8sResource",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/oam/update_k8s_resource_config",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateK8sResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sResource(_ request: UpdateK8sResourceRequest) async throws -> UpdateK8sResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateK8sResourceWithOptions(request as! UpdateK8sResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sSecretWithOptions(_ request: UpdateK8sSecretRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateK8sSecretResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.base64Encoded)) {
            body["Base64Encoded"] = request.base64Encoded!;
        }
        if (!TeaUtils.Client.isUnset(request.certId)) {
            body["CertId"] = request.certId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certRegionId)) {
            body["CertRegionId"] = request.certRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateK8sSecret",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_secret",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateK8sSecretResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sSecret(_ request: UpdateK8sSecretRequest) async throws -> UpdateK8sSecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateK8sSecretWithOptions(request as! UpdateK8sSecretRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sServiceWithOptions(_ request: UpdateK8sServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateK8sServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalTrafficPolicy)) {
            query["ExternalTrafficPolicy"] = request.externalTrafficPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.servicePorts)) {
            query["ServicePorts"] = request.servicePorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateK8sService",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_service",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateK8sServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sService(_ request: UpdateK8sServiceRequest) async throws -> UpdateK8sServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateK8sServiceWithOptions(request as! UpdateK8sServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sSlbWithOptions(_ request: UpdateK8sSlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateK8sSlbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableForceOverride)) {
            query["DisableForceOverride"] = request.disableForceOverride!;
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduler)) {
            query["Scheduler"] = request.scheduler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.servicePortInfos)) {
            query["ServicePortInfos"] = request.servicePortInfos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slbName)) {
            query["SlbName"] = request.slbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slbProtocol)) {
            query["SlbProtocol"] = request.slbProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specification)) {
            query["Specification"] = request.specification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPort)) {
            query["TargetPort"] = request.targetPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateK8sSlb",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/acs/k8s_slb_binding",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateK8sSlbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateK8sSlb(_ request: UpdateK8sSlbRequest) async throws -> UpdateK8sSlbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateK8sSlbWithOptions(request as! UpdateK8sSlbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLocalitySettingWithOptions(_ request: UpdateLocalitySettingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLocalitySettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threshold)) {
            query["Threshold"] = request.threshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLocalitySetting",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/sp/applications/locality/setting",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLocalitySettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLocalitySetting(_ request: UpdateLocalitySettingRequest) async throws -> UpdateLocalitySettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateLocalitySettingWithOptions(request as! UpdateLocalitySettingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRoleWithOptions(_ request: UpdateRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionData)) {
            query["ActionData"] = request.actionData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            query["RoleId"] = request.roleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRole",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/account/edit_role",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRole(_ request: UpdateRoleRequest) async throws -> UpdateRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRoleWithOptions(request as! UpdateRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSlsLogStoreWithOptions(_ request: UpdateSlsLogStoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSlsLogStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configs)) {
            body["Configs"] = request.configs ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSlsLogStore",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/k8s/sls/update_sls_log_store",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSlsLogStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSlsLogStore(_ request: UpdateSlsLogStoreRequest) async throws -> UpdateSlsLogStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSlsLogStoreWithOptions(request as! UpdateSlsLogStoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSwimmingLaneWithOptions(_ request: UpdateSwimmingLaneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSwimmingLaneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInfos)) {
            query["AppInfos"] = request.appInfos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableRules)) {
            query["EnableRules"] = request.enableRules!;
        }
        if (!TeaUtils.Client.isUnset(request.entryRules)) {
            query["EntryRules"] = request.entryRules ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.laneId)) {
            query["LaneId"] = request.laneId!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSwimmingLane",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/trafficmgnt/swimming_lanes",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSwimmingLaneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSwimmingLane(_ request: UpdateSwimmingLaneRequest) async throws -> UpdateSwimmingLaneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSwimmingLaneWithOptions(request as! UpdateSwimmingLaneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSwimmingLaneGroupWithOptions(_ request: UpdateSwimmingLaneGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSwimmingLaneGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIds)) {
            query["AppIds"] = request.appIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entryApp)) {
            query["EntryApp"] = request.entryApp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSwimmingLaneGroup",
            "version": "2017-08-01",
            "protocol": "HTTPS",
            "pathname": "/pop/v5/trafficmgnt/swimming_lane_groups",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSwimmingLaneGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSwimmingLaneGroup(_ request: UpdateSwimmingLaneGroupRequest) async throws -> UpdateSwimmingLaneGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSwimmingLaneGroupWithOptions(request as! UpdateSwimmingLaneGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
