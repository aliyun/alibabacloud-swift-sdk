import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._signatureAlgorithm = "v2"
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
    public func accessPageGetAclWithOptions(_ request: AccessPageGetAclRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AccessPageGetAclResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessPageId)) {
            query["AccessPageId"] = request.accessPageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AccessPageGetAcl",
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
        return Tea.TeaConverter.fromMap(AccessPageGetAclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accessPageGetAcl(_ request: AccessPageGetAclRequest) async throws -> AccessPageGetAclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await accessPageGetAclWithOptions(request as! AccessPageGetAclRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accessPageSetAclWithOptions(_ request: AccessPageSetAclRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AccessPageSetAclResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessMode)) {
            query["AccessMode"] = request.accessMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessPageId)) {
            query["AccessPageId"] = request.accessPageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessPageName)) {
            query["AccessPageName"] = request.accessPageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectTime)) {
            query["EffectTime"] = request.effectTime!;
        }
        if (!TeaUtils.Client.isUnset(request.unit)) {
            query["Unit"] = request.unit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AccessPageSetAcl",
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
        return Tea.TeaConverter.fromMap(AccessPageSetAclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accessPageSetAcl(_ request: AccessPageSetAclRequest) async throws -> AccessPageSetAclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await accessPageSetAclWithOptions(request as! AccessPageSetAclRequest, runtime as! TeaUtils.RuntimeOptions)
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
    public func askSessionPackagePriceWithOptions(_ request: AskSessionPackagePriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AskSessionPackagePriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxSessions)) {
            query["MaxSessions"] = request.maxSessions!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionPackageType)) {
            query["SessionPackageType"] = request.sessionPackageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionSpec)) {
            query["SessionSpec"] = request.sessionSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionType)) {
            query["SessionType"] = request.sessionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AskSessionPackagePrice",
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
        return Tea.TeaConverter.fromMap(AskSessionPackagePriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func askSessionPackagePrice(_ request: AskSessionPackagePriceRequest) async throws -> AskSessionPackagePriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await askSessionPackagePriceWithOptions(request as! AskSessionPackagePriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func askSessionPackageRenewPriceWithOptions(_ request: AskSessionPackageRenewPriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AskSessionPackageRenewPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionPackageId)) {
            query["SessionPackageId"] = request.sessionPackageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AskSessionPackageRenewPrice",
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
        return Tea.TeaConverter.fromMap(AskSessionPackageRenewPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func askSessionPackageRenewPrice(_ request: AskSessionPackageRenewPriceRequest) async throws -> AskSessionPackageRenewPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await askSessionPackageRenewPriceWithOptions(request as! AskSessionPackageRenewPriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeInstanceGroupWithOptions(_ request: AuthorizeInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizeUserIds)) {
            body["AuthorizeUserIds"] = request.authorizeUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unAuthorizeUserIds)) {
            body["UnAuthorizeUserIds"] = request.unAuthorizeUserIds ?? [];
        }
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
    public func buySessionPackageWithOptions(_ request: BuySessionPackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BuySessionPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxSessions)) {
            query["MaxSessions"] = request.maxSessions!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionPackageName)) {
            query["SessionPackageName"] = request.sessionPackageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionPackageType)) {
            query["SessionPackageType"] = request.sessionPackageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionSpec)) {
            query["SessionSpec"] = request.sessionSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionType)) {
            query["SessionType"] = request.sessionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BuySessionPackage",
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
        return Tea.TeaConverter.fromMap(BuySessionPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func buySessionPackage(_ request: BuySessionPackageRequest) async throws -> BuySessionPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await buySessionPackageWithOptions(request as! BuySessionPackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOtaTaskWithOptions(_ request: CancelOtaTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelOtaTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelOtaTask",
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
        return Tea.TeaConverter.fromMap(CancelOtaTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOtaTask(_ request: CancelOtaTaskRequest) async throws -> CancelOtaTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelOtaTaskWithOptions(request as! CancelOtaTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAccessPageWithOptions(_ request: CreateAccessPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAccessPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessPageName)) {
            query["AccessPageName"] = request.accessPageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cloudEnvId)) {
            query["CloudEnvId"] = request.cloudEnvId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectTime)) {
            query["EffectTime"] = request.effectTime!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unit)) {
            query["Unit"] = request.unit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAccessPage",
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
        return Tea.TeaConverter.fromMap(CreateAccessPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAccessPage(_ request: CreateAccessPageRequest) async throws -> CreateAccessPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAccessPageWithOptions(request as! CreateAccessPageRequest, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(tmpReq.userInfo)) {
            request.userInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userInfo, "UserInfo", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCenterImageId)) {
            body["AppCenterImageId"] = request.appCenterImageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupName)) {
            body["AppInstanceGroupName"] = request.appInstanceGroupName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.userInfoShrink)) {
            body["UserInfo"] = request.userInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.users)) {
            body["Users"] = request.users ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
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
    public func createProjectWithOptions(_ request: CreateProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clipboard)) {
            query["Clipboard"] = request.clipboard!;
        }
        if (!TeaUtils.Client.isUnset(request.cloudEnvId)) {
            query["CloudEnvId"] = request.cloudEnvId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentId)) {
            query["ContentId"] = request.contentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileTransfer)) {
            query["FileTransfer"] = request.fileTransfer!;
        }
        if (!TeaUtils.Client.isUnset(request.frameRate)) {
            query["FrameRate"] = request.frameRate!;
        }
        if (!TeaUtils.Client.isUnset(request.keepAliveDuration)) {
            query["KeepAliveDuration"] = request.keepAliveDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionResolutionHeight)) {
            query["SessionResolutionHeight"] = request.sessionResolutionHeight!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionResolutionWidth)) {
            query["SessionResolutionWidth"] = request.sessionResolutionWidth!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionSpec)) {
            query["SessionSpec"] = request.sessionSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamingMode)) {
            query["StreamingMode"] = request.streamingMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminalResolutionAdaptation)) {
            query["TerminalResolutionAdaptation"] = request.terminalResolutionAdaptation!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProject",
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
        return Tea.TeaConverter.fromMap(CreateProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProject(_ request: CreateProjectRequest) async throws -> CreateProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createProjectWithOptions(request as! CreateProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAccessPageWithOptions(_ request: DeleteAccessPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAccessPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessPageId)) {
            query["AccessPageId"] = request.accessPageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAccessPage",
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
        return Tea.TeaConverter.fromMap(DeleteAccessPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAccessPage(_ request: DeleteAccessPageRequest) async throws -> DeleteAccessPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAccessPageWithOptions(request as! DeleteAccessPageRequest, runtime as! TeaUtils.RuntimeOptions)
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
    public func deleteProjectWithOptions(_ request: DeleteProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProject",
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
        return Tea.TeaConverter.fromMap(DeleteProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProject(_ request: DeleteProjectRequest) async throws -> DeleteProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteProjectWithOptions(request as! DeleteProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAccessPageSessionWithOptions(_ request: GetAccessPageSessionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAccessPageSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessPageId)) {
            query["AccessPageId"] = request.accessPageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessPageToken)) {
            query["AccessPageToken"] = request.accessPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalUserId)) {
            query["ExternalUserId"] = request.externalUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAccessPageSession",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAccessPageSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAccessPageSession(_ request: GetAccessPageSessionRequest) async throws -> GetAccessPageSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAccessPageSessionWithOptions(request as! GetAccessPageSessionRequest, runtime as! TeaUtils.RuntimeOptions)
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
    public func getProjectPoliciesWithOptions(_ request: GetProjectPoliciesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectPoliciesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProjectPolicies",
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
        return Tea.TeaConverter.fromMap(GetProjectPoliciesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectPolicies(_ request: GetProjectPoliciesRequest) async throws -> GetProjectPoliciesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProjectPoliciesWithOptions(request as! GetProjectPoliciesRequest, runtime as! TeaUtils.RuntimeOptions)
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
    public func listAccessPagesWithOptions(_ request: ListAccessPagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAccessPagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessPageId)) {
            query["AccessPageId"] = request.accessPageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessPageName)) {
            query["AccessPageName"] = request.accessPageName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.sortType)) {
            query["SortType"] = request.sortType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAccessPages",
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
        return Tea.TeaConverter.fromMap(ListAccessPagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAccessPages(_ request: ListAccessPagesRequest) async throws -> ListAccessPagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAccessPagesWithOptions(request as! ListAccessPagesRequest, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? [];
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
    public func listNodeInstanceTypeWithOptions(_ request: ListNodeInstanceTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodeInstanceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeInstanceType)) {
            query["NodeInstanceType"] = request.nodeInstanceType ?? "";
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
    public func listProjectsWithOptions(_ request: ListProjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectsResponse {
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
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortType)) {
            query["SortType"] = request.sortType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stateList)) {
            query["StateList"] = request.stateList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjects",
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
        return Tea.TeaConverter.fromMap(ListProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjects(_ request: ListProjectsRequest) async throws -> ListProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProjectsWithOptions(request as! ListProjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegionsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
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
    public func listRegions() async throws -> ListRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRegionsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSessionPackagesWithOptions(_ request: ListSessionPackagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSessionPackagesResponse {
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
        if (!TeaUtils.Client.isUnset(request.sessionPackageId)) {
            query["SessionPackageId"] = request.sessionPackageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionPackageName)) {
            query["SessionPackageName"] = request.sessionPackageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortType)) {
            query["SortType"] = request.sortType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stateList)) {
            query["StateList"] = request.stateList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSessionPackages",
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
        return Tea.TeaConverter.fromMap(ListSessionPackagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSessionPackages(_ request: ListSessionPackagesRequest) async throws -> ListSessionPackagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSessionPackagesWithOptions(request as! ListSessionPackagesRequest, runtime as! TeaUtils.RuntimeOptions)
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
    public func migrateSessionPackageWithOptions(_ request: MigrateSessionPackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MigrateSessionPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destProjectId)) {
            body["DestProjectId"] = request.destProjectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionPackageId)) {
            body["SessionPackageId"] = request.sessionPackageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceProjectId)) {
            body["SourceProjectId"] = request.sourceProjectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MigrateSessionPackage",
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
        return Tea.TeaConverter.fromMap(MigrateSessionPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func migrateSessionPackage(_ request: MigrateSessionPackageRequest) async throws -> MigrateSessionPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await migrateSessionPackageWithOptions(request as! MigrateSessionPackageRequest, runtime as! TeaUtils.RuntimeOptions)
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
    public func modifyProjectPolicyWithOptions(_ request: ModifyProjectPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyProjectPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clipboard)) {
            query["Clipboard"] = request.clipboard!;
        }
        if (!TeaUtils.Client.isUnset(request.fileTransfer)) {
            query["FileTransfer"] = request.fileTransfer!;
        }
        if (!TeaUtils.Client.isUnset(request.frameRate)) {
            query["FrameRate"] = request.frameRate!;
        }
        if (!TeaUtils.Client.isUnset(request.keepAliveDuration)) {
            query["KeepAliveDuration"] = request.keepAliveDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionResolutionHeight)) {
            query["SessionResolutionHeight"] = request.sessionResolutionHeight!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionResolutionWidth)) {
            query["SessionResolutionWidth"] = request.sessionResolutionWidth!;
        }
        if (!TeaUtils.Client.isUnset(request.streamingMode)) {
            query["StreamingMode"] = request.streamingMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminalResolutionAdaptation)) {
            query["TerminalResolutionAdaptation"] = request.terminalResolutionAdaptation!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyProjectPolicy",
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
        return Tea.TeaConverter.fromMap(ModifyProjectPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyProjectPolicy(_ request: ModifyProjectPolicyRequest) async throws -> ModifyProjectPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyProjectPolicyWithOptions(request as! ModifyProjectPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
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
    public func refreshAccessUrlWithOptions(_ request: RefreshAccessUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefreshAccessUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessPageId)) {
            query["AccessPageId"] = request.accessPageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefreshAccessUrl",
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
        return Tea.TeaConverter.fromMap(RefreshAccessUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshAccessUrl(_ request: RefreshAccessUrlRequest) async throws -> RefreshAccessUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refreshAccessUrlWithOptions(request as! RefreshAccessUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewAppInstanceGroupWithOptions(_ request: RenewAppInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewAppInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
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
    public func renewSessionPackageWithOptions(_ request: RenewSessionPackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewSessionPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionPackageId)) {
            query["SessionPackageId"] = request.sessionPackageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewSessionPackage",
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
        return Tea.TeaConverter.fromMap(RenewSessionPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewSessionPackage(_ request: RenewSessionPackageRequest) async throws -> RenewSessionPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewSessionPackageWithOptions(request as! RenewSessionPackageRequest, runtime as! TeaUtils.RuntimeOptions)
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
    public func updateAccessPageStateWithOptions(_ request: UpdateAccessPageStateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAccessPageStateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessPageId)) {
            query["AccessPageId"] = request.accessPageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessPageState)) {
            query["AccessPageState"] = request.accessPageState!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAccessPageState",
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
        return Tea.TeaConverter.fromMap(UpdateAccessPageStateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAccessPageState(_ request: UpdateAccessPageStateRequest) async throws -> UpdateAccessPageStateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAccessPageStateWithOptions(request as! UpdateAccessPageStateRequest, runtime as! TeaUtils.RuntimeOptions)
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
}
