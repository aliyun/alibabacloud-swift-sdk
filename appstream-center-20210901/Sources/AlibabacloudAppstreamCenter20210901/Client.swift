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
        self._endpoint = try getEndpoint("appstream-center", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func approveOtaTaskWithOptions(_ request: ApproveOtaTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApproveOtaTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            body["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otaType)) {
            body["OtaType"] = request.otaType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApproveOtaTask",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApproveOtaTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func approveOtaTask(_ request: ApproveOtaTaskRequest) async throws -> ApproveOtaTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await approveOtaTaskWithOptions(request as! ApproveOtaTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignWuyingServerPrivateAddressesWithOptions(_ request: AssignWuyingServerPrivateAddressesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssignWuyingServerPrivateAddressesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.secondaryPrivateIpAddressCount)) {
            body["SecondaryPrivateIpAddressCount"] = request.secondaryPrivateIpAddressCount!;
        }
        if (!TeaUtils.Client.isUnset(request.wuyingServerId)) {
            body["WuyingServerId"] = request.wuyingServerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssignWuyingServerPrivateAddresses",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssignWuyingServerPrivateAddressesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignWuyingServerPrivateAddresses(_ request: AssignWuyingServerPrivateAddressesRequest) async throws -> AssignWuyingServerPrivateAddressesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assignWuyingServerPrivateAddressesWithOptions(request as! AssignWuyingServerPrivateAddressesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeInstanceGroupWithOptions(_ tmpReq: AuthorizeInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeInstanceGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AuthorizeInstanceGroupShrinkRequest = AuthorizeInstanceGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.userMeta)) {
            request.userMetaShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userMeta, "UserMeta", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstancePersistentId)) {
            body["AppInstancePersistentId"] = request.appInstancePersistentId ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizeUserGroupIds)) {
            bodyFlat["AuthorizeUserGroupIds"] = request.authorizeUserGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.authorizeUserIds)) {
            bodyFlat["AuthorizeUserIds"] = request.authorizeUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.avatarId)) {
            body["AvatarId"] = request.avatarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unAuthorizeUserGroupIds)) {
            bodyFlat["UnAuthorizeUserGroupIds"] = request.unAuthorizeUserGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.unAuthorizeUserIds)) {
            bodyFlat["UnAuthorizeUserIds"] = request.unAuthorizeUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userMetaShrink)) {
            body["UserMeta"] = request.userMetaShrink ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeInstanceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeInstanceGroup(_ request: AuthorizeInstanceGroupRequest) async throws -> AuthorizeInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authorizeInstanceGroupWithOptions(request as! AuthorizeInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchCreateLlmTemplatesWithOptions(_ request: BatchCreateLlmTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchCreateLlmTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.llmTemplateItems)) {
            body["LlmTemplateItems"] = request.llmTemplateItems ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.modelTemplateId)) {
            body["ModelTemplateId"] = request.modelTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.providerTemplateId)) {
            body["ProviderTemplateId"] = request.providerTemplateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchCreateLlmTemplates",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchCreateLlmTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchCreateLlmTemplates(_ request: BatchCreateLlmTemplatesRequest) async throws -> BatchCreateLlmTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchCreateLlmTemplatesWithOptions(request as! BatchCreateLlmTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configResourceGroupModelTemplateWithOptions(_ request: ConfigResourceGroupModelTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigResourceGroupModelTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelTemplateId)) {
            body["ModelTemplateId"] = request.modelTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigResourceGroupModelTemplate",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigResourceGroupModelTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configResourceGroupModelTemplate(_ request: ConfigResourceGroupModelTemplateRequest) async throws -> ConfigResourceGroupModelTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configResourceGroupModelTemplateWithOptions(request as! ConfigResourceGroupModelTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configRuntimeChannelWithOptions(_ request: ConfigRuntimeChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigRuntimeChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentPlatform)) {
            body["AgentPlatform"] = request.agentPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentProvider)) {
            body["AgentProvider"] = request.agentProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["Code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configMode)) {
            body["ConfigMode"] = request.configMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeIds)) {
            body["RuntimeIds"] = request.runtimeIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.runtimeType)) {
            body["RuntimeType"] = request.runtimeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigRuntimeChannel",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigRuntimeChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configRuntimeChannel(_ request: ConfigRuntimeChannelRequest) async throws -> ConfigRuntimeChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configRuntimeChannelWithOptions(request as! ConfigRuntimeChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configRuntimeModelTemplateWithOptions(_ request: ConfigRuntimeModelTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigRuntimeModelTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelTemplateId)) {
            body["ModelTemplateId"] = request.modelTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeIds)) {
            body["RuntimeIds"] = request.runtimeIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.runtimeType)) {
            body["RuntimeType"] = request.runtimeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigRuntimeModelTemplate",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigRuntimeModelTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configRuntimeModelTemplate(_ request: ConfigRuntimeModelTemplateRequest) async throws -> ConfigRuntimeModelTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configRuntimeModelTemplateWithOptions(request as! ConfigRuntimeModelTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppInstanceGroupWithOptions(_ tmpReq: CreateAppInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAppInstanceGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAppInstanceGroupShrinkRequest = CreateAppInstanceGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.network)) {
            request.networkShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.network, "Network", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.nodePool)) {
            request.nodePoolShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nodePool, "NodePool", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.runtimePolicy)) {
            request.runtimePolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.runtimePolicy, "RuntimePolicy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.securityPolicy)) {
            request.securityPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.securityPolicy, "SecurityPolicy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.storagePolicy)) {
            request.storagePolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.storagePolicy, "StoragePolicy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userDefinePolicy)) {
            request.userDefinePolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userDefinePolicy, "UserDefinePolicy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userInfo)) {
            request.userInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userInfo, "UserInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.videoPolicy)) {
            request.videoPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.videoPolicy, "VideoPolicy", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userDefinePolicyShrink)) {
            query["UserDefinePolicy"] = request.userDefinePolicyShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCenterImageId)) {
            body["AppCenterImageId"] = request.appCenterImageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupName)) {
            body["AppInstanceGroupName"] = request.appInstanceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appPackageType)) {
            body["AppPackageType"] = request.appPackageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appPolicyId)) {
            body["AppPolicyId"] = request.appPolicyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authMode)) {
            body["AuthMode"] = request.authMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            body["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            body["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            body["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeResourceMode)) {
            body["ChargeResourceMode"] = request.chargeResourceMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            body["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkShrink)) {
            body["Network"] = request.networkShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodePoolShrink)) {
            body["NodePool"] = request.nodePoolShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            body["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preOpenAppId)) {
            body["PreOpenAppId"] = request.preOpenAppId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            body["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimePolicyShrink)) {
            body["RuntimePolicy"] = request.runtimePolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityPolicyShrink)) {
            body["SecurityPolicy"] = request.securityPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionTimeout)) {
            body["SessionTimeout"] = request.sessionTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.storagePolicyShrink)) {
            body["StoragePolicy"] = request.storagePolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subPayType)) {
            body["SubPayType"] = request.subPayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            body["UserGroupIds"] = request.userGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userInfoShrink)) {
            body["UserInfo"] = request.userInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.users)) {
            body["Users"] = request.users ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.videoPolicyShrink)) {
            body["VideoPolicy"] = request.videoPolicyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAppInstanceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAppInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppInstanceGroup(_ request: CreateAppInstanceGroupRequest) async throws -> CreateAppInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAppInstanceGroupWithOptions(request as! CreateAppInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageByInstanceWithOptions(_ request: CreateImageByInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateImageByInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagList)) {
            query["TagList"] = request.tagList ?? [];
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoCleanUserdata)) {
            body["AutoCleanUserdata"] = request.autoCleanUserdata!;
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["BizType"] = request.bizType!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskType)) {
            body["DiskType"] = request.diskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            body["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subInstanceId)) {
            body["SubInstanceId"] = request.subInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateImageByInstance",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateImageByInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageByInstance(_ request: CreateImageByInstanceRequest) async throws -> CreateImageByInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createImageByInstanceWithOptions(request as! CreateImageByInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageFromAppInstanceGroupWithOptions(_ request: CreateImageFromAppInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateImageFromAppInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCenterImageName)) {
            body["AppCenterImageName"] = request.appCenterImageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateImageFromAppInstanceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateImageFromAppInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageFromAppInstanceGroup(_ request: CreateImageFromAppInstanceGroupRequest) async throws -> CreateImageFromAppInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createImageFromAppInstanceGroupWithOptions(request as! CreateImageFromAppInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelProviderTemplateWithOptions(_ request: CreateModelProviderTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModelProviderTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentPlatform)) {
            query["AgentPlatform"] = request.agentPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentProvider)) {
            query["AgentProvider"] = request.agentProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType!;
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            query["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableWuyingProxy)) {
            query["EnableWuyingProxy"] = request.enableWuyingProxy!;
        }
        if (!TeaUtils.Client.isUnset(request.modelTemplateId)) {
            query["ModelTemplateId"] = request.modelTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.providerName)) {
            query["ProviderName"] = request.providerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.providerType)) {
            query["ProviderType"] = request.providerType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateModelProviderTemplate",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModelProviderTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelProviderTemplate(_ request: CreateModelProviderTemplateRequest) async throws -> CreateModelProviderTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createModelProviderTemplateWithOptions(request as! CreateModelProviderTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelTemplateWithOptions(_ request: CreateModelTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModelTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentPlatform)) {
            query["AgentPlatform"] = request.agentPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentProvider)) {
            query["AgentProvider"] = request.agentProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateModelTemplate",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModelTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelTemplate(_ request: CreateModelTemplateRequest) async throws -> CreateModelTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createModelTemplateWithOptions(request as! CreateModelTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWuyingServerWithOptions(_ request: CreateWuyingServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWuyingServerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            body["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            body["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            body["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.bandwidth)) {
            body["Bandwidth"] = request.bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            body["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            body["ChargeType"] = request.chargeType ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataDisk)) {
            bodyFlat["DataDisk"] = request.dataDisk ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            body["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idempotenceToken)) {
            body["IdempotenceToken"] = request.idempotenceToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxPrice)) {
            body["MaxPrice"] = request.maxPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.networkStrategyType)) {
            body["NetworkStrategyType"] = request.networkStrategyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            body["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            body["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            body["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.savingPlanId)) {
            body["SavingPlanId"] = request.savingPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverInstanceType)) {
            body["ServerInstanceType"] = request.serverInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverPortRange)) {
            body["ServerPortRange"] = request.serverPortRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subPayType)) {
            body["SubPayType"] = request.subPayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemDiskCategory)) {
            body["SystemDiskCategory"] = request.systemDiskCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemDiskPerformanceLevel)) {
            body["SystemDiskPerformanceLevel"] = request.systemDiskPerformanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemDiskSize)) {
            body["SystemDiskSize"] = request.systemDiskSize!;
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchIds)) {
            body["VSwitchIds"] = request.vSwitchIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.virtualNodePoolId)) {
            body["VirtualNodePoolId"] = request.virtualNodePoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wuyingServerName)) {
            body["WuyingServerName"] = request.wuyingServerName ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWuyingServer",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWuyingServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWuyingServer(_ request: CreateWuyingServerRequest) async throws -> CreateWuyingServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWuyingServerWithOptions(request as! CreateWuyingServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppInstanceGroupWithOptions(_ request: DeleteAppInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAppInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAppInstanceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAppInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppInstanceGroup(_ request: DeleteAppInstanceGroupRequest) async throws -> DeleteAppInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAppInstanceGroupWithOptions(request as! DeleteAppInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppInstancesWithOptions(_ request: DeleteAppInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAppInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceIds)) {
            body["AppInstanceIds"] = request.appInstanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAppInstances",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAppInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppInstances(_ request: DeleteAppInstancesRequest) async throws -> DeleteAppInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAppInstancesWithOptions(request as! DeleteAppInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImageWithOptions(_ request: DeleteImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteImage",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImage(_ request: DeleteImageRequest) async throws -> DeleteImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteImageWithOptions(request as! DeleteImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLlmTemplateWithOptions(_ request: DeleteLlmTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLlmTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.llmTemplateId)) {
            query["LlmTemplateId"] = request.llmTemplateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLlmTemplate",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLlmTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLlmTemplate(_ request: DeleteLlmTemplateRequest) async throws -> DeleteLlmTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLlmTemplateWithOptions(request as! DeleteLlmTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelProviderTemplateWithOptions(_ request: DeleteModelProviderTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModelProviderTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.providerTemplateId)) {
            query["ProviderTemplateId"] = request.providerTemplateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModelProviderTemplate",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModelProviderTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelProviderTemplate(_ request: DeleteModelProviderTemplateRequest) async throws -> DeleteModelProviderTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteModelProviderTemplateWithOptions(request as! DeleteModelProviderTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelTemplateWithOptions(_ request: DeleteModelTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModelTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelTemplateId)) {
            query["ModelTemplateId"] = request.modelTemplateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModelTemplate",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModelTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelTemplate(_ request: DeleteModelTemplateRequest) async throws -> DeleteModelTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteModelTemplateWithOptions(request as! DeleteModelTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWuyingServerWithOptions(_ request: DeleteWuyingServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWuyingServerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.wuyingServerId)) {
            body["WuyingServerId"] = request.wuyingServerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWuyingServer",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWuyingServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWuyingServer(_ request: DeleteWuyingServerRequest) async throws -> DeleteWuyingServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteWuyingServerWithOptions(request as! DeleteWuyingServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deliverToUserSlsWithOptions(_ request: DeliverToUserSlsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeliverToUserSlsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deliveryScopes)) {
            bodyFlat["DeliveryScopes"] = request.deliveryScopes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.existedProjectName)) {
            body["ExistedProjectName"] = request.existedProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreName)) {
            body["LogStoreName"] = request.logStoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsRegionId)) {
            body["SlsRegionId"] = request.slsRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttl)) {
            body["Ttl"] = request.ttl!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeliverToUserSls",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeliverToUserSlsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deliverToUserSls(_ request: DeliverToUserSlsRequest) async throws -> DeliverToUserSlsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deliverToUserSlsWithOptions(request as! DeliverToUserSlsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWuyingServerWithOptions(_ request: DescribeWuyingServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWuyingServerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.wuyingServerId)) {
            body["WuyingServerId"] = request.wuyingServerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeWuyingServer",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWuyingServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWuyingServer(_ request: DescribeWuyingServerRequest) async throws -> DescribeWuyingServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeWuyingServerWithOptions(request as! DescribeWuyingServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWuyingServerEipInfoWithOptions(_ request: DescribeWuyingServerEipInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWuyingServerEipInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isp)) {
            body["Isp"] = request.isp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wuyingServerId)) {
            body["WuyingServerId"] = request.wuyingServerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeWuyingServerEipInfo",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWuyingServerEipInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWuyingServerEipInfo(_ request: DescribeWuyingServerEipInfoRequest) async throws -> DescribeWuyingServerEipInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeWuyingServerEipInfoWithOptions(request as! DescribeWuyingServerEipInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppInstanceGroupWithOptions(_ request: GetAppInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAppInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            query["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAppInstanceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAppInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppInstanceGroup(_ request: GetAppInstanceGroupRequest) async throws -> GetAppInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAppInstanceGroupWithOptions(request as! GetAppInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConnectionTicketWithOptions(_ request: GetConnectionTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConnectionTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessType)) {
            body["AccessType"] = request.accessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupIdList)) {
            body["AppInstanceGroupIdList"] = request.appInstanceGroupIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            body["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstancePersistentId)) {
            body["AppInstancePersistentId"] = request.appInstancePersistentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appPolicyId)) {
            body["AppPolicyId"] = request.appPolicyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appStartParam)) {
            body["AppStartParam"] = request.appStartParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            body["AppVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            body["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            body["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentConfig)) {
            body["EnvironmentConfig"] = request.environmentConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConnectionTicket",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConnectionTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConnectionTicket(_ request: GetConnectionTicketRequest) async throws -> GetConnectionTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConnectionTicketWithOptions(request as! GetConnectionTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDebugAppInstanceWithOptions(_ request: GetDebugAppInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDebugAppInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDebugAppInstance",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDebugAppInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDebugAppInstance(_ request: GetDebugAppInstanceRequest) async throws -> GetDebugAppInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDebugAppInstanceWithOptions(request as! GetDebugAppInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelProviderTemplateWithOptions(_ request: GetModelProviderTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetModelProviderTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.providerTemplateId)) {
            query["ProviderTemplateId"] = request.providerTemplateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetModelProviderTemplate",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetModelProviderTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelProviderTemplate(_ request: GetModelProviderTemplateRequest) async throws -> GetModelProviderTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getModelProviderTemplateWithOptions(request as! GetModelProviderTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOtaTaskByTaskIdWithOptions(_ request: GetOtaTaskByTaskIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOtaTaskByTaskIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOtaTaskByTaskId",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOtaTaskByTaskIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOtaTaskByTaskId(_ request: GetOtaTaskByTaskIdRequest) async throws -> GetOtaTaskByTaskIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOtaTaskByTaskIdWithOptions(request as! GetOtaTaskByTaskIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourcePriceWithOptions(_ request: GetResourcePriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourcePriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceType)) {
            query["AppInstanceType"] = request.appInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeInstanceType)) {
            query["NodeInstanceType"] = request.nodeInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourcePrice",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourcePriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourcePrice(_ request: GetResourcePriceRequest) async throws -> GetResourcePriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourcePriceWithOptions(request as! GetResourcePriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceRenewPriceWithOptions(_ request: GetResourceRenewPriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceRenewPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            query["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceRenewPrice",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceRenewPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceRenewPrice(_ request: GetResourceRenewPriceRequest) async throws -> GetResourceRenewPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceRenewPriceWithOptions(request as! GetResourceRenewPriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuntimeChannelWithOptions(_ request: GetRuntimeChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRuntimeChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentPlatform)) {
            query["AgentPlatform"] = request.agentPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentProvider)) {
            query["AgentProvider"] = request.agentProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeRiskInfo)) {
            query["IncludeRiskInfo"] = request.includeRiskInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.runtimeId)) {
            query["RuntimeId"] = request.runtimeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeType)) {
            query["RuntimeType"] = request.runtimeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRuntimeChannel",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRuntimeChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuntimeChannel(_ request: GetRuntimeChannelRequest) async throws -> GetRuntimeChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRuntimeChannelWithOptions(request as! GetRuntimeChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuntimeModelConfigWithOptions(_ request: GetRuntimeModelConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRuntimeModelConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentPlatform)) {
            query["AgentPlatform"] = request.agentPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentProvider)) {
            query["AgentProvider"] = request.agentProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeRiskInfo)) {
            query["IncludeRiskInfo"] = request.includeRiskInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.runtimeId)) {
            query["RuntimeId"] = request.runtimeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeType)) {
            query["RuntimeType"] = request.runtimeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRuntimeModelConfig",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRuntimeModelConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuntimeModelConfig(_ request: GetRuntimeModelConfigRequest) async throws -> GetRuntimeModelConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRuntimeModelConfigWithOptions(request as! GetRuntimeModelConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppInstanceGroupWithOptions(_ request: ListAppInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAppInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCenterImageId)) {
            query["AppCenterImageId"] = request.appCenterImageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            query["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupName)) {
            query["AppInstanceGroupName"] = request.appInstanceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeInstanceType)) {
            query["NodeInstanceType"] = request.nodeInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludedUserGroupIds)) {
            body["ExcludedUserGroupIds"] = request.excludedUserGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            body["UserGroupIds"] = request.userGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAppInstanceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAppInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppInstanceGroup(_ request: ListAppInstanceGroupRequest) async throws -> ListAppInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAppInstanceGroupWithOptions(request as! ListAppInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppInstancesWithOptions(_ request: ListAppInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAppInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            query["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            query["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeDeleted)) {
            query["IncludeDeleted"] = request.includeDeleted!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userIdList)) {
            query["UserIdList"] = request.userIdList ?? [];
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceIdList)) {
            body["AppInstanceIdList"] = request.appInstanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAppInstances",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAppInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppInstances(_ request: ListAppInstancesRequest) async throws -> ListAppInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAppInstancesWithOptions(request as! ListAppInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorizedUserGroupsWithOptions(_ request: ListAuthorizedUserGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAuthorizedUserGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAuthorizedUserGroups",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAuthorizedUserGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorizedUserGroups(_ request: ListAuthorizedUserGroupsRequest) async throws -> ListAuthorizedUserGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAuthorizedUserGroupsWithOptions(request as! ListAuthorizedUserGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBindInfoWithOptions(_ request: ListBindInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBindInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIdList)) {
            body["AppIdList"] = request.appIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupIdList)) {
            body["AppInstanceGroupIdList"] = request.appInstanceGroupIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceIdList)) {
            body["AppInstanceIdList"] = request.appInstanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userIdList)) {
            body["UserIdList"] = request.userIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.wyIdList)) {
            body["WyIdList"] = request.wyIdList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBindInfo",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBindInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBindInfo(_ request: ListBindInfoRequest) async throws -> ListBindInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listBindInfoWithOptions(request as! ListBindInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDesktopAgentRuntimeWithOptions(_ request: ListDesktopAgentRuntimeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDesktopAgentRuntimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentInstanceStatuses)) {
            query["AgentInstanceStatuses"] = request.agentInstanceStatuses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.agentInstanceVersions)) {
            query["AgentInstanceVersions"] = request.agentInstanceVersions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.agentPlatform)) {
            query["AgentPlatform"] = request.agentPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentProvider)) {
            query["AgentProvider"] = request.agentProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authUsers)) {
            query["AuthUsers"] = request.authUsers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType!;
        }
        if (!TeaUtils.Client.isUnset(request.channelConfigure)) {
            query["ChannelConfigure"] = request.channelConfigure!;
        }
        if (!TeaUtils.Client.isUnset(request.deploymentSource)) {
            query["DeploymentSource"] = request.deploymentSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopIds)) {
            query["DesktopIds"] = request.desktopIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.desktopNames)) {
            query["DesktopNames"] = request.desktopNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.desktopStatuses)) {
            query["DesktopStatuses"] = request.desktopStatuses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hasAuthUser)) {
            query["HasAuthUser"] = request.hasAuthUser!;
        }
        if (!TeaUtils.Client.isUnset(request.hasRisk)) {
            query["HasRisk"] = request.hasRisk!;
        }
        if (!TeaUtils.Client.isUnset(request.includeRiskInfo)) {
            query["IncludeRiskInfo"] = request.includeRiskInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.modelConfigure)) {
            query["ModelConfigure"] = request.modelConfigure!;
        }
        if (!TeaUtils.Client.isUnset(request.modelTemplateId)) {
            query["ModelTemplateId"] = request.modelTemplateId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDesktopAgentRuntime",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDesktopAgentRuntimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDesktopAgentRuntime(_ request: ListDesktopAgentRuntimeRequest) async throws -> ListDesktopAgentRuntimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDesktopAgentRuntimeWithOptions(request as! ListDesktopAgentRuntimeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listImageWithOptions(_ request: ListImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distro)) {
            query["Distro"] = request.distro ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagList)) {
            query["TagList"] = request.tagList ?? [];
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRegionIdList)) {
            body["BizRegionIdList"] = request.bizRegionIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["BizType"] = request.bizType!;
        }
        if (!TeaUtils.Client.isUnset(request.bizTypeList)) {
            body["BizTypeList"] = request.bizTypeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.featureList)) {
            body["FeatureList"] = request.featureList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.fotaVersion)) {
            body["FotaVersion"] = request.fotaVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            body["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageType)) {
            body["ImageType"] = request.imageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.languageType)) {
            body["LanguageType"] = request.languageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            body["OsType"] = request.osType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            body["PackageType"] = request.packageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.platformName)) {
            body["PlatformName"] = request.platformName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platformNameList)) {
            body["PlatformNameList"] = request.platformNameList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productTypeList)) {
            body["ProductTypeList"] = request.productTypeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.protocolType)) {
            body["ProtocolType"] = request.protocolType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceType)) {
            body["ResourceInstanceType"] = request.resourceInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListImage",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listImage(_ request: ListImageRequest) async throws -> ListImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listImageWithOptions(request as! ListImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLlmTemplatesWithOptions(_ tmpReq: ListLlmTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLlmTemplatesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListLlmTemplatesShrinkRequest = ListLlmTemplatesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.llmTemplateIds)) {
            request.llmTemplateIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.llmTemplateIds, "LlmTemplateIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.llmCode)) {
            query["LlmCode"] = request.llmCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.llmTemplateIdsShrink)) {
            query["LlmTemplateIds"] = request.llmTemplateIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelTemplateId)) {
            query["ModelTemplateId"] = request.modelTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.providerTemplateId)) {
            query["ProviderTemplateId"] = request.providerTemplateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLlmTemplates",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLlmTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLlmTemplates(_ request: ListLlmTemplatesRequest) async throws -> ListLlmTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLlmTemplatesWithOptions(request as! ListLlmTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelProviderTemplatesWithOptions(_ tmpReq: ListModelProviderTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListModelProviderTemplatesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListModelProviderTemplatesShrinkRequest = ListModelProviderTemplatesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.providerTemplateIds)) {
            request.providerTemplateIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.providerTemplateIds, "ProviderTemplateIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentPlatform)) {
            query["AgentPlatform"] = request.agentPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentProvider)) {
            query["AgentProvider"] = request.agentProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType!;
        }
        if (!TeaUtils.Client.isUnset(request.modelTemplateId)) {
            query["ModelTemplateId"] = request.modelTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.providerName)) {
            query["ProviderName"] = request.providerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.providerTemplateIdsShrink)) {
            query["ProviderTemplateIds"] = request.providerTemplateIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListModelProviderTemplates",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListModelProviderTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelProviderTemplates(_ request: ListModelProviderTemplatesRequest) async throws -> ListModelProviderTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listModelProviderTemplatesWithOptions(request as! ListModelProviderTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelTemplateResourceGroupWithOptions(_ request: ListModelTemplateResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListModelTemplateResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelTemplateId)) {
            query["ModelTemplateId"] = request.modelTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIds)) {
            query["ResourceGroupIds"] = request.resourceGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListModelTemplateResourceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListModelTemplateResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelTemplateResourceGroup(_ request: ListModelTemplateResourceGroupRequest) async throws -> ListModelTemplateResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listModelTemplateResourceGroupWithOptions(request as! ListModelTemplateResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelTemplatesWithOptions(_ tmpReq: ListModelTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListModelTemplatesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListModelTemplatesShrinkRequest = ListModelTemplatesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.modelTemplateIdList)) {
            request.modelTemplateIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.modelTemplateIdList, "ModelTemplateIdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentPlatform)) {
            query["AgentPlatform"] = request.agentPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentProvider)) {
            query["AgentProvider"] = request.agentProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType!;
        }
        if (!TeaUtils.Client.isUnset(request.hasModel)) {
            query["HasModel"] = request.hasModel!;
        }
        if (!TeaUtils.Client.isUnset(request.modelTemplateIdListShrink)) {
            query["ModelTemplateIdList"] = request.modelTemplateIdListShrink ?? "";
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
            "action": "ListModelTemplates",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListModelTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelTemplates(_ request: ListModelTemplatesRequest) async throws -> ListModelTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listModelTemplatesWithOptions(request as! ListModelTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeInstanceTypeWithOptions(_ request: ListNodeInstanceTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodeInstanceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            query["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.gpu)) {
            query["Gpu"] = request.gpu!;
        }
        if (!TeaUtils.Client.isUnset(request.gpuMemory)) {
            query["GpuMemory"] = request.gpuMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceTypeForModify)) {
            query["InstanceTypeForModify"] = request.instanceTypeForModify ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            query["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeInstanceType)) {
            query["NodeInstanceType"] = request.nodeInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeInstanceTypeFamily)) {
            query["NodeInstanceTypeFamily"] = request.nodeInstanceTypeFamily ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            query["OsType"] = request.osType ?? "";
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
        if (!TeaUtils.Client.isUnset(request.sortType)) {
            query["SortType"] = request.sortType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodeInstanceType",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodeInstanceTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeInstanceType(_ request: ListNodeInstanceTypeRequest) async throws -> ListNodeInstanceTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodeInstanceTypeWithOptions(request as! ListNodeInstanceTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodesWithOptions(_ request: ListNodesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodes",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodes(_ request: ListNodesRequest) async throws -> ListNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodesWithOptions(request as! ListNodesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOtaTaskWithOptions(_ request: ListOtaTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOtaTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otaType)) {
            body["OtaType"] = request.otaType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOtaTask",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOtaTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOtaTask(_ request: ListOtaTaskRequest) async throws -> ListOtaTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOtaTaskWithOptions(request as! ListOtaTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPersistentAppInstancesWithOptions(_ request: ListPersistentAppInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPersistentAppInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            query["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstancePersistentIds)) {
            query["AppInstancePersistentIds"] = request.appInstancePersistentIds ?? [];
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPersistentAppInstances",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPersistentAppInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPersistentAppInstances(_ request: ListPersistentAppInstancesRequest) async throws -> ListPersistentAppInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPersistentAppInstancesWithOptions(request as! ListPersistentAppInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegionsWithOptions(_ request: ListRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizSource)) {
            query["BizSource"] = request.bizSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRegions",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegions(_ request: ListRegionsRequest) async throws -> ListRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRegionsWithOptions(request as! ListRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagCloudResourcesWithOptions(_ request: ListTagCloudResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagCloudResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            body["ResourceIds"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["Scope"] = request.scope ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagCloudResources",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagCloudResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagCloudResources(_ request: ListTagCloudResourcesRequest) async throws -> ListTagCloudResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagCloudResourcesWithOptions(request as! ListTagCloudResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTenantConfigWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListTenantConfigResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTenantConfig",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTenantConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTenantConfig() async throws -> ListTenantConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTenantConfigWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWuyingServerWithOptions(_ request: ListWuyingServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWuyingServerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addVirtualNodePoolStatusList)) {
            bodyFlat["AddVirtualNodePoolStatusList"] = request.addVirtualNodePoolStatusList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            body["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["BizType"] = request.bizType!;
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            body["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            body["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverInstanceType)) {
            body["ServerInstanceType"] = request.serverInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.users)) {
            bodyFlat["Users"] = request.users ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.virtualNodePoolId)) {
            body["VirtualNodePoolId"] = request.virtualNodePoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wuyingServerIdList)) {
            bodyFlat["WuyingServerIdList"] = request.wuyingServerIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.wuyingServerNameOrId)) {
            body["WuyingServerNameOrId"] = request.wuyingServerNameOrId ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWuyingServer",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWuyingServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWuyingServer(_ request: ListWuyingServerRequest) async throws -> ListWuyingServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWuyingServerWithOptions(request as! ListWuyingServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func logOffAllSessionsInAppInstanceGroupWithOptions(_ request: LogOffAllSessionsInAppInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LogOffAllSessionsInAppInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LogOffAllSessionsInAppInstanceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LogOffAllSessionsInAppInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func logOffAllSessionsInAppInstanceGroup(_ request: LogOffAllSessionsInAppInstanceGroupRequest) async throws -> LogOffAllSessionsInAppInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await logOffAllSessionsInAppInstanceGroupWithOptions(request as! LogOffAllSessionsInAppInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAppInstanceGroupAttributeWithOptions(_ tmpReq: ModifyAppInstanceGroupAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAppInstanceGroupAttributeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyAppInstanceGroupAttributeShrinkRequest = ModifyAppInstanceGroupAttributeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.network)) {
            request.networkShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.network, "Network", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.nodePool)) {
            request.nodePoolShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nodePool, "NodePool", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.securityPolicy)) {
            request.securityPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.securityPolicy, "SecurityPolicy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.storagePolicy)) {
            request.storagePolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.storagePolicy, "StoragePolicy", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            query["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupName)) {
            query["AppInstanceGroupName"] = request.appInstanceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodePoolShrink)) {
            query["NodePool"] = request.nodePoolShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionTimeout)) {
            query["SessionTimeout"] = request.sessionTimeout!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkShrink)) {
            body["Network"] = request.networkShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.perSessionPerApp)) {
            body["PerSessionPerApp"] = request.perSessionPerApp!;
        }
        if (!TeaUtils.Client.isUnset(request.preOpenAppId)) {
            body["PreOpenAppId"] = request.preOpenAppId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preOpenMode)) {
            body["PreOpenMode"] = request.preOpenMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityPolicyShrink)) {
            body["SecurityPolicy"] = request.securityPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storagePolicyShrink)) {
            body["StoragePolicy"] = request.storagePolicyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAppInstanceGroupAttribute",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAppInstanceGroupAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAppInstanceGroupAttribute(_ request: ModifyAppInstanceGroupAttributeRequest) async throws -> ModifyAppInstanceGroupAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAppInstanceGroupAttributeWithOptions(request as! ModifyAppInstanceGroupAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAppPolicyWithOptions(_ tmpReq: ModifyAppPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAppPolicyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyAppPolicyShrinkRequest = ModifyAppPolicyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.videoPolicy)) {
            request.videoPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.videoPolicy, "VideoPolicy", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appPolicyId)) {
            query["AppPolicyId"] = request.appPolicyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoPolicyShrink)) {
            query["VideoPolicy"] = request.videoPolicyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAppPolicy",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAppPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAppPolicy(_ request: ModifyAppPolicyRequest) async throws -> ModifyAppPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAppPolicyWithOptions(request as! ModifyAppPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBrowserInstanceGroupWithOptions(_ tmpReq: ModifyBrowserInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBrowserInstanceGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyBrowserInstanceGroupShrinkRequest = ModifyBrowserInstanceGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.browserConfig)) {
            request.browserConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.browserConfig, "BrowserConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.network)) {
            request.networkShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.network, "Network", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.policy)) {
            request.policyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.policy, "Policy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.storagePolicy)) {
            request.storagePolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.storagePolicy, "StoragePolicy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.timers)) {
            request.timersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.timers, "Timers", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.browserConfigShrink)) {
            query["BrowserConfig"] = request.browserConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.browserInstanceGroupId)) {
            query["BrowserInstanceGroupId"] = request.browserInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyShrink)) {
            query["Policy"] = request.policyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timersShrink)) {
            query["Timers"] = request.timersShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cloudBrowserName)) {
            body["CloudBrowserName"] = request.cloudBrowserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxAmount)) {
            body["MaxAmount"] = request.maxAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.networkShrink)) {
            body["Network"] = request.networkShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storagePolicyShrink)) {
            body["StoragePolicy"] = request.storagePolicyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBrowserInstanceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBrowserInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBrowserInstanceGroup(_ request: ModifyBrowserInstanceGroupRequest) async throws -> ModifyBrowserInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBrowserInstanceGroupWithOptions(request as! ModifyBrowserInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodePoolAmountWithOptions(_ tmpReq: ModifyNodePoolAmountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNodePoolAmountResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyNodePoolAmountShrinkRequest = ModifyNodePoolAmountShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.nodePool)) {
            request.nodePoolShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nodePool, "NodePool", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodePoolShrink)) {
            body["NodePool"] = request.nodePoolShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNodePoolAmount",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNodePoolAmountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodePoolAmount(_ request: ModifyNodePoolAmountRequest) async throws -> ModifyNodePoolAmountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyNodePoolAmountWithOptions(request as! ModifyNodePoolAmountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodePoolAttributeWithOptions(_ tmpReq: ModifyNodePoolAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNodePoolAttributeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyNodePoolAttributeShrinkRequest = ModifyNodePoolAttributeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.nodePoolStrategy)) {
            request.nodePoolStrategyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nodePoolStrategy, "NodePoolStrategy", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            body["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeCapacity)) {
            body["NodeCapacity"] = request.nodeCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.nodePoolStrategyShrink)) {
            body["NodePoolStrategy"] = request.nodePoolStrategyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolId)) {
            body["PoolId"] = request.poolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNodePoolAttribute",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNodePoolAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodePoolAttribute(_ request: ModifyNodePoolAttributeRequest) async throws -> ModifyNodePoolAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyNodePoolAttributeWithOptions(request as! ModifyNodePoolAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantConfigWithOptions(_ request: ModifyTenantConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyTenantConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupExpireRemind)) {
            body["AppInstanceGroupExpireRemind"] = request.appInstanceGroupExpireRemind!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyTenantConfig",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyTenantConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantConfig(_ request: ModifyTenantConfigRequest) async throws -> ModifyTenantConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyTenantConfigWithOptions(request as! ModifyTenantConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyWuyingServerAttributeWithOptions(_ request: ModifyWuyingServerAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyWuyingServerAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wuyingServerId)) {
            body["WuyingServerId"] = request.wuyingServerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wuyingServerName)) {
            body["WuyingServerName"] = request.wuyingServerName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyWuyingServerAttribute",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyWuyingServerAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyWuyingServerAttribute(_ request: ModifyWuyingServerAttributeRequest) async throws -> ModifyWuyingServerAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyWuyingServerAttributeWithOptions(request as! ModifyWuyingServerAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pageListAppInstanceGroupUserWithOptions(_ request: PageListAppInstanceGroupUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PageListAppInstanceGroupUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PageListAppInstanceGroupUser",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PageListAppInstanceGroupUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pageListAppInstanceGroupUser(_ request: PageListAppInstanceGroupUserRequest) async throws -> PageListAppInstanceGroupUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pageListAppInstanceGroupUserWithOptions(request as! PageListAppInstanceGroupUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeResourceGroupModelTemplateWithOptions(_ request: RemoveResourceGroupModelTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveResourceGroupModelTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelTemplateId)) {
            body["ModelTemplateId"] = request.modelTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIds)) {
            body["ResourceGroupIds"] = request.resourceGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveResourceGroupModelTemplate",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveResourceGroupModelTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeResourceGroupModelTemplate(_ request: RemoveResourceGroupModelTemplateRequest) async throws -> RemoveResourceGroupModelTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeResourceGroupModelTemplateWithOptions(request as! RemoveResourceGroupModelTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeRuntimeChannelWithOptions(_ request: RemoveRuntimeChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveRuntimeChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentPlatform)) {
            body["AgentPlatform"] = request.agentPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentProvider)) {
            body["AgentProvider"] = request.agentProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["Code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeIds)) {
            body["RuntimeIds"] = request.runtimeIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.runtimeType)) {
            body["RuntimeType"] = request.runtimeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveRuntimeChannel",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveRuntimeChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeRuntimeChannel(_ request: RemoveRuntimeChannelRequest) async throws -> RemoveRuntimeChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeRuntimeChannelWithOptions(request as! RemoveRuntimeChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeRuntimeModelTemplateWithOptions(_ request: RemoveRuntimeModelTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveRuntimeModelTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelTemplateId)) {
            body["ModelTemplateId"] = request.modelTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeIds)) {
            body["RuntimeIds"] = request.runtimeIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.runtimeType)) {
            body["RuntimeType"] = request.runtimeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveRuntimeModelTemplate",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveRuntimeModelTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeRuntimeModelTemplate(_ request: RemoveRuntimeModelTemplateRequest) async throws -> RemoveRuntimeModelTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeRuntimeModelTemplateWithOptions(request as! RemoveRuntimeModelTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewAppInstanceGroupWithOptions(_ tmpReq: RenewAppInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewAppInstanceGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RenewAppInstanceGroupShrinkRequest = RenewAppInstanceGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.renewNodes)) {
            request.renewNodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.renewNodes, "RenewNodes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            query["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            query["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewAmount)) {
            query["RenewAmount"] = request.renewAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.renewMode)) {
            query["RenewMode"] = request.renewMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewNodesShrink)) {
            query["RenewNodes"] = request.renewNodesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewAppInstanceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewAppInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewAppInstanceGroup(_ request: RenewAppInstanceGroupRequest) async throws -> RenewAppInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewAppInstanceGroupWithOptions(request as! RenewAppInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewWuyingServerWithOptions(_ request: RenewWuyingServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewWuyingServerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            body["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            body["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            body["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wuyingServerId)) {
            body["WuyingServerId"] = request.wuyingServerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewWuyingServer",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewWuyingServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewWuyingServer(_ request: RenewWuyingServerRequest) async throws -> RenewWuyingServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewWuyingServerWithOptions(request as! RenewWuyingServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartWuyingServerWithOptions(_ request: RestartWuyingServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartWuyingServerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.wuyingServerIdList)) {
            bodyFlat["WuyingServerIdList"] = request.wuyingServerIdList ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartWuyingServer",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartWuyingServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartWuyingServer(_ request: RestartWuyingServerRequest) async throws -> RestartWuyingServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await restartWuyingServerWithOptions(request as! RestartWuyingServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startTaskForDistributeImageWithOptions(_ request: StartTaskForDistributeImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartTaskForDistributeImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationRegionList)) {
            body["DestinationRegionList"] = request.destinationRegionList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retryType)) {
            body["RetryType"] = request.retryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceRegion)) {
            body["SourceRegion"] = request.sourceRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            body["VersionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartTaskForDistributeImage",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartTaskForDistributeImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startTaskForDistributeImage(_ request: StartTaskForDistributeImageRequest) async throws -> StartTaskForDistributeImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startTaskForDistributeImageWithOptions(request as! StartTaskForDistributeImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startWuyingServerWithOptions(_ request: StartWuyingServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartWuyingServerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.wuyingServerIdList)) {
            bodyFlat["WuyingServerIdList"] = request.wuyingServerIdList ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartWuyingServer",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartWuyingServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startWuyingServer(_ request: StartWuyingServerRequest) async throws -> StartWuyingServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startWuyingServerWithOptions(request as! StartWuyingServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopWuyingServerWithOptions(_ request: StopWuyingServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopWuyingServerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.force)) {
            body["Force"] = request.force!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.wuyingServerIdList)) {
            bodyFlat["WuyingServerIdList"] = request.wuyingServerIdList ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopWuyingServer",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopWuyingServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopWuyingServer(_ request: StopWuyingServerRequest) async throws -> StopWuyingServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopWuyingServerWithOptions(request as! StopWuyingServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagCloudResourcesWithOptions(_ request: TagCloudResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagCloudResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            body["ResourceIds"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["Tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagCloudResources",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagCloudResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagCloudResources(_ request: TagCloudResourcesRequest) async throws -> TagCloudResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await tagCloudResourcesWithOptions(request as! TagCloudResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassignWuyingServerPrivateAddressesWithOptions(_ request: UnassignWuyingServerPrivateAddressesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnassignWuyingServerPrivateAddressesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.privateIpAddresses)) {
            body["PrivateIpAddresses"] = request.privateIpAddresses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.wuyingServerId)) {
            body["WuyingServerId"] = request.wuyingServerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnassignWuyingServerPrivateAddresses",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnassignWuyingServerPrivateAddressesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassignWuyingServerPrivateAddresses(_ request: UnassignWuyingServerPrivateAddressesRequest) async throws -> UnassignWuyingServerPrivateAddressesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unassignWuyingServerPrivateAddressesWithOptions(request as! UnassignWuyingServerPrivateAddressesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindWithOptions(_ request: UnbindRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            body["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstancePersistentId)) {
            body["AppInstancePersistentId"] = request.appInstancePersistentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            body["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Unbind",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbind(_ request: UnbindRequest) async throws -> UnbindResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindWithOptions(request as! UnbindRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagCloudResourcesWithOptions(_ request: UntagCloudResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagCloudResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            body["ResourceIds"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeys)) {
            body["TagKeys"] = request.tagKeys ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagCloudResources",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagCloudResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagCloudResources(_ request: UntagCloudResourcesRequest) async throws -> UntagCloudResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await untagCloudResourcesWithOptions(request as! UntagCloudResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAppInstanceGroupImageWithOptions(_ request: UpdateAppInstanceGroupImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAppInstanceGroupImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCenterImageId)) {
            query["AppCenterImageId"] = request.appCenterImageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            query["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAppInstanceGroupImage",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAppInstanceGroupImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAppInstanceGroupImage(_ request: UpdateAppInstanceGroupImageRequest) async throws -> UpdateAppInstanceGroupImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAppInstanceGroupImageWithOptions(request as! UpdateAppInstanceGroupImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelProviderTemplateWithOptions(_ tmpReq: UpdateModelProviderTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateModelProviderTemplateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateModelProviderTemplateShrinkRequest = UpdateModelProviderTemplateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.config)) {
            request.configShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.config, "Config", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configShrink)) {
            query["Config"] = request.configShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableWuyingProxy)) {
            body["EnableWuyingProxy"] = request.enableWuyingProxy!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.providerTemplateId)) {
            body["ProviderTemplateId"] = request.providerTemplateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateModelProviderTemplate",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateModelProviderTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelProviderTemplate(_ request: UpdateModelProviderTemplateRequest) async throws -> UpdateModelProviderTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateModelProviderTemplateWithOptions(request as! UpdateModelProviderTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelTemplateWithOptions(_ request: UpdateModelTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateModelTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            query["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelTemplateId)) {
            query["ModelTemplateId"] = request.modelTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateModelTemplate",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateModelTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelTemplate(_ request: UpdateModelTemplateRequest) async throws -> UpdateModelTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateModelTemplateWithOptions(request as! UpdateModelTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWuyingServerImageWithOptions(_ request: UpdateWuyingServerImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWuyingServerImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wuyingServerId)) {
            body["WuyingServerId"] = request.wuyingServerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWuyingServerImage",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWuyingServerImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWuyingServerImage(_ request: UpdateWuyingServerImageRequest) async throws -> UpdateWuyingServerImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWuyingServerImageWithOptions(request as! UpdateWuyingServerImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
