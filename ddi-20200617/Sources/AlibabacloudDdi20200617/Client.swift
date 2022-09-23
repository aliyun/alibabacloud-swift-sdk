import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "central"
        self._endpointMap = [
            "cn-qingdao": "ddi.cn-qingdao.aliyuncs.com",
            "cn-chengdu": "ddi.cn-chengdu.aliyuncs.com",
            "cn-zhangjiakou": "ddi.cn-zhangjiakou.aliyuncs.com",
            "cn-huhehaote": "ddi.cn-huhehaote.aliyuncs.com",
            "cn-hongkong": "ddi.cn-hongkong.aliyuncs.com",
            "ap-southeast-2": "ddi.ap-southeast-2.aliyuncs.com",
            "ap-southeast-3": "ddi.ap-southeast-3.aliyuncs.com",
            "ap-southeast-5": "ddi.ap-southeast-5.aliyuncs.com",
            "ap-northeast-1": "ddi.ap-northeast-1.aliyuncs.com",
            "eu-west-1": "ddi.eu-west-1.aliyuncs.com",
            "us-east-1": "ddi.us-east-1.aliyuncs.com",
            "eu-central-1": "ddi.eu-central-1.aliyuncs.com",
            "me-east-1": "ddi.me-east-1.aliyuncs.com",
            "ap-south-1": "ddi.ap-south-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("ddi", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func cloneFlowJobWithOptions(_ request: CloneFlowJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloneFlowJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloneFlowJob",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloneFlowJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneFlowJob(_ request: CloneFlowJobRequest) async throws -> CloneFlowJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloneFlowJobWithOptions(request as! CloneFlowJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClusterV2WithOptions(_ request: CreateClusterV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateClusterV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizeContent)) {
            query["AuthorizeContent"] = request.authorizeContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.auto)) {
            query["Auto"] = request.auto!;
        }
        if (!TeaUtils.Client.isUnset(request.autoPayOrder)) {
            query["AutoPayOrder"] = request.autoPayOrder!;
        }
        if (!TeaUtils.Client.isUnset(request.bootstrapAction)) {
            query["BootstrapAction"] = request.bootstrapAction ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clickHouseConf)) {
            query["ClickHouseConf"] = request.clickHouseConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["ClusterType"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            query["Config"] = request.config ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.configurations)) {
            query["Configurations"] = request.configurations ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depositType)) {
            query["DepositType"] = request.depositType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emrVer)) {
            query["EmrVer"] = request.emrVer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableEas)) {
            query["EnableEas"] = request.enableEas!;
        }
        if (!TeaUtils.Client.isUnset(request.enableHighAvailability)) {
            query["EnableHighAvailability"] = request.enableHighAvailability!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSsh)) {
            query["EnableSsh"] = request.enableSsh!;
        }
        if (!TeaUtils.Client.isUnset(request.extraAttributes)) {
            query["ExtraAttributes"] = request.extraAttributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostComponentInfo)) {
            query["HostComponentInfo"] = request.hostComponentInfo ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hostGroup)) {
            query["HostGroup"] = request.hostGroup ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.initCustomHiveMetaDB)) {
            query["InitCustomHiveMetaDB"] = request.initCustomHiveMetaDB!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceGeneration)) {
            query["InstanceGeneration"] = request.instanceGeneration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isOpenPublicIp)) {
            query["IsOpenPublicIp"] = request.isOpenPublicIp!;
        }
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logPath)) {
            query["LogPath"] = request.logPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.machineType)) {
            query["MachineType"] = request.machineType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterPwd)) {
            query["MasterPwd"] = request.masterPwd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metaStoreConf)) {
            query["MetaStoreConf"] = request.metaStoreConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metaStoreType)) {
            query["MetaStoreType"] = request.metaStoreType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.netType)) {
            query["NetType"] = request.netType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.promotionInfo)) {
            query["PromotionInfo"] = request.promotionInfo ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedClusterId)) {
            query["RelatedClusterId"] = request.relatedClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupName)) {
            query["SecurityGroupName"] = request.securityGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceInfo)) {
            query["ServiceInfo"] = request.serviceInfo ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.useCustomHiveMetaDB)) {
            query["UseCustomHiveMetaDB"] = request.useCustomHiveMetaDB!;
        }
        if (!TeaUtils.Client.isUnset(request.useLocalMetaDb)) {
            query["UseLocalMetaDb"] = request.useLocalMetaDb!;
        }
        if (!TeaUtils.Client.isUnset(request.userDefinedEmrEcsRole)) {
            query["UserDefinedEmrEcsRole"] = request.userDefinedEmrEcsRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userInfo)) {
            query["UserInfo"] = request.userInfo ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whiteListType)) {
            query["WhiteListType"] = request.whiteListType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateClusterV2",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateClusterV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClusterV2(_ request: CreateClusterV2Request) async throws -> CreateClusterV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createClusterV2WithOptions(request as! CreateClusterV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowWithOptions(_ request: CreateFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertConf)) {
            query["AlertConf"] = request.alertConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertDingDingGroupBizId)) {
            query["AlertDingDingGroupBizId"] = request.alertDingDingGroupBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertUserGroupBizId)) {
            query["AlertUserGroupBizId"] = request.alertUserGroupBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.application)) {
            query["Application"] = request.application ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createCluster)) {
            query["CreateCluster"] = request.createCluster!;
        }
        if (!TeaUtils.Client.isUnset(request.cronExpression)) {
            query["CronExpression"] = request.cronExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endSchedule)) {
            query["EndSchedule"] = request.endSchedule!;
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentCategory)) {
            query["ParentCategory"] = request.parentCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentFlowList)) {
            query["ParentFlowList"] = request.parentFlowList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startSchedule)) {
            query["StartSchedule"] = request.startSchedule!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFlow",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlow(_ request: CreateFlowRequest) async throws -> CreateFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFlowWithOptions(request as! CreateFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowCategoryWithOptions(_ request: CreateFlowCategoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFlowCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            query["ParentId"] = request.parentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFlowCategory",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFlowCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowCategory(_ request: CreateFlowCategoryRequest) async throws -> CreateFlowCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFlowCategoryWithOptions(request as! CreateFlowCategoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowJobWithOptions(_ request: CreateFlowJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFlowJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adhoc)) {
            query["Adhoc"] = request.adhoc!;
        }
        if (!TeaUtils.Client.isUnset(request.alertConf)) {
            query["AlertConf"] = request.alertConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customVariables)) {
            query["CustomVariables"] = request.customVariables ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envConf)) {
            query["EnvConf"] = request.envConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.failAct)) {
            query["FailAct"] = request.failAct ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.monitorConf)) {
            query["MonitorConf"] = request.monitorConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramConf)) {
            query["ParamConf"] = request.paramConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentCategory)) {
            query["ParentCategory"] = request.parentCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceList)) {
            query["ResourceList"] = request.resourceList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.retryPolicy)) {
            query["RetryPolicy"] = request.retryPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runConf)) {
            query["RunConf"] = request.runConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFlowJob",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFlowJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowJob(_ request: CreateFlowJobRequest) async throws -> CreateFlowJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFlowJobWithOptions(request as! CreateFlowJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowProjectWithOptions(_ request: CreateFlowProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFlowProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFlowProject",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFlowProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowProject(_ request: CreateFlowProjectRequest) async throws -> CreateFlowProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFlowProjectWithOptions(request as! CreateFlowProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowProjectUserWithOptions(_ request: CreateFlowProjectUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFlowProjectUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.user)) {
            query["User"] = request.user ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFlowProjectUser",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFlowProjectUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowProjectUser(_ request: CreateFlowProjectUserRequest) async throws -> CreateFlowProjectUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFlowProjectUserWithOptions(request as! CreateFlowProjectUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowWithOptions(_ request: DeleteFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFlow",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlow(_ request: DeleteFlowRequest) async throws -> DeleteFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFlowWithOptions(request as! DeleteFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowCategoryWithOptions(_ request: DeleteFlowCategoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFlowCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFlowCategory",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFlowCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowCategory(_ request: DeleteFlowCategoryRequest) async throws -> DeleteFlowCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFlowCategoryWithOptions(request as! DeleteFlowCategoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowProjectWithOptions(_ request: DeleteFlowProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFlowProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFlowProject",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFlowProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowProject(_ request: DeleteFlowProjectRequest) async throws -> DeleteFlowProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFlowProjectWithOptions(request as! DeleteFlowProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowProjectUserWithOptions(_ request: DeleteFlowProjectUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFlowProjectUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFlowProjectUser",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFlowProjectUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowProjectUser(_ request: DeleteFlowProjectUserRequest) async throws -> DeleteFlowProjectUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFlowProjectUserWithOptions(request as! DeleteFlowProjectUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterV2WithOptions(_ request: DescribeClusterV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterV2",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterV2(_ request: DescribeClusterV2Request) async throws -> DescribeClusterV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClusterV2WithOptions(request as! DescribeClusterV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowWithOptions(_ request: DescribeFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFlow",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlow(_ request: DescribeFlowRequest) async throws -> DescribeFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFlowWithOptions(request as! DescribeFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowCategoryTreeWithOptions(_ request: DescribeFlowCategoryTreeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFlowCategoryTreeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryId)) {
            query["CategoryId"] = request.categoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFlowCategoryTree",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFlowCategoryTreeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowCategoryTree(_ request: DescribeFlowCategoryTreeRequest) async throws -> DescribeFlowCategoryTreeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFlowCategoryTreeWithOptions(request as! DescribeFlowCategoryTreeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowJobWithOptions(_ request: DescribeFlowJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFlowJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFlowJob",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFlowJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowJob(_ request: DescribeFlowJobRequest) async throws -> DescribeFlowJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFlowJobWithOptions(request as! DescribeFlowJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowNodeInstanceWithOptions(_ request: DescribeFlowNodeInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFlowNodeInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFlowNodeInstance",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFlowNodeInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowNodeInstance(_ request: DescribeFlowNodeInstanceRequest) async throws -> DescribeFlowNodeInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFlowNodeInstanceWithOptions(request as! DescribeFlowNodeInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowProjectWithOptions(_ request: DescribeFlowProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFlowProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFlowProject",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFlowProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowProject(_ request: DescribeFlowProjectRequest) async throws -> DescribeFlowProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFlowProjectWithOptions(request as! DescribeFlowProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killFlowJobWithOptions(_ request: KillFlowJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> KillFlowJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobInstanceId)) {
            query["JobInstanceId"] = request.jobInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "KillFlowJob",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(KillFlowJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killFlowJob(_ request: KillFlowJobRequest) async throws -> KillFlowJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await killFlowJobWithOptions(request as! KillFlowJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClustersWithOptions(_ request: ListClustersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClustersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterTypeList)) {
            query["ClusterTypeList"] = request.clusterTypeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.createType)) {
            query["CreateType"] = request.createType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultStatus)) {
            query["DefaultStatus"] = request.defaultStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.depositType)) {
            query["DepositType"] = request.depositType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiredTagList)) {
            query["ExpiredTagList"] = request.expiredTagList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.isDesc)) {
            query["IsDesc"] = request.isDesc!;
        }
        if (!TeaUtils.Client.isUnset(request.machineType)) {
            query["MachineType"] = request.machineType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.statusList)) {
            query["StatusList"] = request.statusList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClusters",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusters(_ request: ListClustersRequest) async throws -> ListClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listClustersWithOptions(request as! ListClustersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlowWithOptions(_ request: ListFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodic)) {
            query["Periodic"] = request.periodic!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFlow",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlow(_ request: ListFlowRequest) async throws -> ListFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFlowWithOptions(request as! ListFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlowJobHistoryWithOptions(_ request: ListFlowJobHistoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFlowJobHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            query["JobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusList)) {
            query["StatusList"] = request.statusList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.timeRange)) {
            query["TimeRange"] = request.timeRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFlowJobHistory",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFlowJobHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlowJobHistory(_ request: ListFlowJobHistoryRequest) async throws -> ListFlowJobHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFlowJobHistoryWithOptions(request as! ListFlowJobHistoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlowJobsWithOptions(_ request: ListFlowJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFlowJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adhoc)) {
            query["Adhoc"] = request.adhoc!;
        }
        if (!TeaUtils.Client.isUnset(request.exactName)) {
            query["ExactName"] = request.exactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFlowJobs",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFlowJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlowJobs(_ request: ListFlowJobsRequest) async throws -> ListFlowJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFlowJobsWithOptions(request as! ListFlowJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlowProjectUserWithOptions(_ request: ListFlowProjectUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFlowProjectUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFlowProjectUser",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFlowProjectUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlowProjectUser(_ request: ListFlowProjectUserRequest) async throws -> ListFlowProjectUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFlowProjectUserWithOptions(request as! ListFlowProjectUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlowProjectsWithOptions(_ request: ListFlowProjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFlowProjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFlowProjects",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFlowProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlowProjects(_ request: ListFlowProjectsRequest) async throws -> ListFlowProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFlowProjectsWithOptions(request as! ListFlowProjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyFlowForWebWithOptions(_ request: ModifyFlowForWebRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyFlowForWebResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertConf)) {
            query["AlertConf"] = request.alertConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertDingDingGroupBizId)) {
            query["AlertDingDingGroupBizId"] = request.alertDingDingGroupBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertUserGroupBizId)) {
            query["AlertUserGroupBizId"] = request.alertUserGroupBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createCluster)) {
            query["CreateCluster"] = request.createCluster!;
        }
        if (!TeaUtils.Client.isUnset(request.cronExpr)) {
            query["CronExpr"] = request.cronExpr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endSchedule)) {
            query["EndSchedule"] = request.endSchedule!;
        }
        if (!TeaUtils.Client.isUnset(request.graph)) {
            query["Graph"] = request.graph ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentCategory)) {
            query["ParentCategory"] = request.parentCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentFlowList)) {
            query["ParentFlowList"] = request.parentFlowList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodic)) {
            query["Periodic"] = request.periodic!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startSchedule)) {
            query["StartSchedule"] = request.startSchedule!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyFlowForWeb",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyFlowForWebResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyFlowForWeb(_ request: ModifyFlowForWebRequest) async throws -> ModifyFlowForWebResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyFlowForWebWithOptions(request as! ModifyFlowForWebRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyFlowJobWithOptions(_ request: ModifyFlowJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyFlowJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertConf)) {
            query["AlertConf"] = request.alertConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customVariables)) {
            query["CustomVariables"] = request.customVariables ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envConf)) {
            query["EnvConf"] = request.envConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.failAct)) {
            query["FailAct"] = request.failAct ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.knoxPassword)) {
            query["KnoxPassword"] = request.knoxPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.knoxUser)) {
            query["KnoxUser"] = request.knoxUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxRetry)) {
            query["MaxRetry"] = request.maxRetry!;
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.monitorConf)) {
            query["MonitorConf"] = request.monitorConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramConf)) {
            query["ParamConf"] = request.paramConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceList)) {
            query["ResourceList"] = request.resourceList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.retryInterval)) {
            query["RetryInterval"] = request.retryInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.retryPolicy)) {
            query["RetryPolicy"] = request.retryPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runConf)) {
            query["RunConf"] = request.runConf ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyFlowJob",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyFlowJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyFlowJob(_ request: ModifyFlowJobRequest) async throws -> ModifyFlowJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyFlowJobWithOptions(request as! ModifyFlowJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyFlowProjectWithOptions(_ request: ModifyFlowProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyFlowProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyFlowProject",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyFlowProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyFlowProject(_ request: ModifyFlowProjectRequest) async throws -> ModifyFlowProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyFlowProjectWithOptions(request as! ModifyFlowProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseClusterWithOptions(_ request: ReleaseClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forceRelease)) {
            query["ForceRelease"] = request.forceRelease!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseCluster",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseCluster(_ request: ReleaseClusterRequest) async throws -> ReleaseClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseClusterWithOptions(request as! ReleaseClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rerunFlowWithOptions(_ request: RerunFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RerunFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.flowInstanceId)) {
            query["FlowInstanceId"] = request.flowInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reRunFail)) {
            query["ReRunFail"] = request.reRunFail!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RerunFlow",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RerunFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rerunFlow(_ request: RerunFlowRequest) async throws -> RerunFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rerunFlowWithOptions(request as! RerunFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeFlowWithOptions(_ request: ResumeFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.flowInstanceId)) {
            query["FlowInstanceId"] = request.flowInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeFlow",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeFlow(_ request: ResumeFlowRequest) async throws -> ResumeFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resumeFlowWithOptions(request as! ResumeFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitFlowWithOptions(_ request: SubmitFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.conf)) {
            query["Conf"] = request.conf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            query["FlowId"] = request.flowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitFlow",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitFlow(_ request: SubmitFlowRequest) async throws -> SubmitFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitFlowWithOptions(request as! SubmitFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitFlowJobWithOptions(_ request: SubmitFlowJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitFlowJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conf)) {
            query["Conf"] = request.conf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitFlowJob",
            "version": "2020-06-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitFlowJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitFlowJob(_ request: SubmitFlowJobRequest) async throws -> SubmitFlowJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitFlowJobWithOptions(request as! SubmitFlowJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
