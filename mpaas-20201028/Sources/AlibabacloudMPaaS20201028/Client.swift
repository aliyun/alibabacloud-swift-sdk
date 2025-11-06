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
            "cn-hangzhou": "mpaas.aliyuncs.com",
            "ap-northeast-1": "mpaas.aliyuncs.com",
            "ap-northeast-2-pop": "mpaas.aliyuncs.com",
            "ap-south-1": "mpaas.aliyuncs.com",
            "ap-southeast-1": "mpaas.aliyuncs.com",
            "ap-southeast-2": "mpaas.aliyuncs.com",
            "ap-southeast-3": "mpaas.aliyuncs.com",
            "ap-southeast-5": "mpaas.aliyuncs.com",
            "cn-beijing": "mpaas.aliyuncs.com",
            "cn-beijing-finance-1": "mpaas.aliyuncs.com",
            "cn-beijing-finance-pop": "mpaas.aliyuncs.com",
            "cn-beijing-gov-1": "mpaas.aliyuncs.com",
            "cn-beijing-nu16-b01": "mpaas.aliyuncs.com",
            "cn-chengdu": "mpaas.aliyuncs.com",
            "cn-edge-1": "mpaas.aliyuncs.com",
            "cn-fujian": "mpaas.aliyuncs.com",
            "cn-haidian-cm12-c01": "mpaas.aliyuncs.com",
            "cn-hangzhou-bj-b01": "mpaas.aliyuncs.com",
            "cn-hangzhou-finance": "mpaas.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "mpaas.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "mpaas.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "mpaas.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "mpaas.aliyuncs.com",
            "cn-hangzhou-test-306": "mpaas.aliyuncs.com",
            "cn-hongkong": "mpaas.aliyuncs.com",
            "cn-hongkong-finance-pop": "mpaas.aliyuncs.com",
            "cn-huhehaote": "mpaas.aliyuncs.com",
            "cn-north-2-gov-1": "mpaas.aliyuncs.com",
            "cn-qingdao": "mpaas.aliyuncs.com",
            "cn-qingdao-nebula": "mpaas.aliyuncs.com",
            "cn-shanghai": "mpaas.aliyuncs.com",
            "cn-shanghai-et15-b01": "mpaas.aliyuncs.com",
            "cn-shanghai-et2-b01": "mpaas.aliyuncs.com",
            "cn-shanghai-finance-1": "mpaas.aliyuncs.com",
            "cn-shanghai-inner": "mpaas.aliyuncs.com",
            "cn-shanghai-internal-test-1": "mpaas.aliyuncs.com",
            "cn-shenzhen": "mpaas.aliyuncs.com",
            "cn-shenzhen-finance-1": "mpaas.aliyuncs.com",
            "cn-shenzhen-inner": "mpaas.aliyuncs.com",
            "cn-shenzhen-st4-d01": "mpaas.aliyuncs.com",
            "cn-shenzhen-su18-b01": "mpaas.aliyuncs.com",
            "cn-wuhan": "mpaas.aliyuncs.com",
            "cn-yushanfang": "mpaas.aliyuncs.com",
            "cn-zhangbei-na61-b01": "mpaas.aliyuncs.com",
            "cn-zhangjiakou": "mpaas.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "mpaas.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "mpaas.aliyuncs.com",
            "eu-central-1": "mpaas.aliyuncs.com",
            "eu-west-1": "mpaas.aliyuncs.com",
            "eu-west-1-oxs": "mpaas.aliyuncs.com",
            "me-east-1": "mpaas.aliyuncs.com",
            "rus-west-1-pop": "mpaas.aliyuncs.com",
            "us-east-1": "mpaas.aliyuncs.com",
            "us-west-1": "mpaas.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("mpaas", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addMdsMiniConfigWithOptions(_ request: AddMdsMiniConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddMdsMiniConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpaasMappcenterMiniConfigAddJsonStr)) {
            body["MpaasMappcenterMiniConfigAddJsonStr"] = request.mpaasMappcenterMiniConfigAddJsonStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddMdsMiniConfig",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddMdsMiniConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMdsMiniConfig(_ request: AddMdsMiniConfigRequest) async throws -> AddMdsMiniConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addMdsMiniConfigWithOptions(request as! AddMdsMiniConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelPushSchedulerWithOptions(_ request: CancelPushSchedulerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelPushSchedulerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.uniqueIds)) {
            body["UniqueIds"] = request.uniqueIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelPushScheduler",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelPushSchedulerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelPushScheduler(_ request: CancelPushSchedulerRequest) async throws -> CancelPushSchedulerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelPushSchedulerWithOptions(request as! CancelPushSchedulerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeMcubeMiniTaskStatusWithOptions(_ request: ChangeMcubeMiniTaskStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeMcubeMiniTaskStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageId)) {
            body["PackageId"] = request.packageId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            body["TaskStatus"] = request.taskStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeMcubeMiniTaskStatus",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeMcubeMiniTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeMcubeMiniTaskStatus(_ request: ChangeMcubeMiniTaskStatusRequest) async throws -> ChangeMcubeMiniTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeMcubeMiniTaskStatusWithOptions(request as! ChangeMcubeMiniTaskStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeMcubeNebulaTaskStatusWithOptions(_ request: ChangeMcubeNebulaTaskStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeMcubeNebulaTaskStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageId)) {
            body["PackageId"] = request.packageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            body["TaskStatus"] = request.taskStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeMcubeNebulaTaskStatus",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeMcubeNebulaTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeMcubeNebulaTaskStatus(_ request: ChangeMcubeNebulaTaskStatusRequest) async throws -> ChangeMcubeNebulaTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeMcubeNebulaTaskStatusWithOptions(request as! ChangeMcubeNebulaTaskStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeMcubePublicTaskStatusWithOptions(_ request: ChangeMcubePublicTaskStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeMcubePublicTaskStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            body["TaskStatus"] = request.taskStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeMcubePublicTaskStatus",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeMcubePublicTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeMcubePublicTaskStatus(_ request: ChangeMcubePublicTaskStatusRequest) async throws -> ChangeMcubePublicTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeMcubePublicTaskStatusWithOptions(request as! ChangeMcubePublicTaskStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeMdsCubeTaskStatusWithOptions(_ request: ChangeMdsCubeTaskStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeMdsCubeTaskStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            body["TaskStatus"] = request.taskStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.templateResourceId)) {
            body["TemplateResourceId"] = request.templateResourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateTaskId)) {
            body["TemplateTaskId"] = request.templateTaskId!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeMdsCubeTaskStatus",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeMdsCubeTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeMdsCubeTaskStatus(_ request: ChangeMdsCubeTaskStatusRequest) async throws -> ChangeMdsCubeTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeMdsCubeTaskStatusWithOptions(request as! ChangeMdsCubeTaskStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyMcdpGroupWithOptions(_ request: CopyMcdpGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CopyMcdpGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpaasMappcenterMcdpGroupCopyJsonStr)) {
            body["MpaasMappcenterMcdpGroupCopyJsonStr"] = request.mpaasMappcenterMcdpGroupCopyJsonStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CopyMcdpGroup",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CopyMcdpGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyMcdpGroup(_ request: CopyMcdpGroupRequest) async throws -> CopyMcdpGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await copyMcdpGroupWithOptions(request as! CopyMcdpGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLinkWithOptions(_ request: CreateLinkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLinkResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cors)) {
            body["Cors"] = request.cors!;
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            body["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dynamicfield)) {
            body["Dynamicfield"] = request.dynamicfield ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUrl)) {
            body["TargetUrl"] = request.targetUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLink",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLinkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLink(_ request: CreateLinkRequest) async throws -> CreateLinkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLinkWithOptions(request as! CreateLinkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcdpGroupWithOptions(_ request: CreateMcdpGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcdpGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpaasMappcenterMcdpGroupCreateJsonStr)) {
            body["MpaasMappcenterMcdpGroupCreateJsonStr"] = request.mpaasMappcenterMcdpGroupCreateJsonStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcdpGroup",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcdpGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcdpGroup(_ request: CreateMcdpGroupRequest) async throws -> CreateMcdpGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcdpGroupWithOptions(request as! CreateMcdpGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcdpMaterialWithOptions(_ request: CreateMcdpMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcdpMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpaasMappcenterMcdpMaterialCreateJsonStr)) {
            body["MpaasMappcenterMcdpMaterialCreateJsonStr"] = request.mpaasMappcenterMcdpMaterialCreateJsonStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcdpMaterial",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcdpMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcdpMaterial(_ request: CreateMcdpMaterialRequest) async throws -> CreateMcdpMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcdpMaterialWithOptions(request as! CreateMcdpMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcdpZoneWithOptions(_ request: CreateMcdpZoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcdpZoneResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpaasMappcenterMcdpZoneCreateJsonStr)) {
            body["MpaasMappcenterMcdpZoneCreateJsonStr"] = request.mpaasMappcenterMcdpZoneCreateJsonStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcdpZone",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcdpZoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcdpZone(_ request: CreateMcdpZoneRequest) async throws -> CreateMcdpZoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcdpZoneWithOptions(request as! CreateMcdpZoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeMiniAppWithOptions(_ request: CreateMcubeMiniAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcubeMiniAppResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Id)) {
            body["H5Id"] = request.h5Id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Name)) {
            body["H5Name"] = request.h5Name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcubeMiniApp",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcubeMiniAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeMiniApp(_ request: CreateMcubeMiniAppRequest) async throws -> CreateMcubeMiniAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcubeMiniAppWithOptions(request as! CreateMcubeMiniAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeMiniTaskWithOptions(_ request: CreateMcubeMiniTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcubeMiniTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyConfigInfo)) {
            body["GreyConfigInfo"] = request.greyConfigInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyEndtimeData)) {
            body["GreyEndtimeData"] = request.greyEndtimeData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyNum)) {
            body["GreyNum"] = request.greyNum!;
        }
        if (!TeaUtils.Client.isUnset(request.memo)) {
            body["Memo"] = request.memo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageId)) {
            body["PackageId"] = request.packageId!;
        }
        if (!TeaUtils.Client.isUnset(request.publishMode)) {
            body["PublishMode"] = request.publishMode!;
        }
        if (!TeaUtils.Client.isUnset(request.publishType)) {
            body["PublishType"] = request.publishType!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelistIds)) {
            body["WhitelistIds"] = request.whitelistIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcubeMiniTask",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcubeMiniTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeMiniTask(_ request: CreateMcubeMiniTaskRequest) async throws -> CreateMcubeMiniTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcubeMiniTaskWithOptions(request as! CreateMcubeMiniTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeNebulaAppWithOptions(_ request: CreateMcubeNebulaAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcubeNebulaAppResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Id)) {
            body["H5Id"] = request.h5Id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Name)) {
            body["H5Name"] = request.h5Name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcubeNebulaApp",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcubeNebulaAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeNebulaApp(_ request: CreateMcubeNebulaAppRequest) async throws -> CreateMcubeNebulaAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcubeNebulaAppWithOptions(request as! CreateMcubeNebulaAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeNebulaResourceWithOptions(_ request: CreateMcubeNebulaResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcubeNebulaResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoInstall)) {
            body["AutoInstall"] = request.autoInstall!;
        }
        if (!TeaUtils.Client.isUnset(request.clientVersionMax)) {
            body["ClientVersionMax"] = request.clientVersionMax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVersionMin)) {
            body["ClientVersionMin"] = request.clientVersionMin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customDomainName)) {
            body["CustomDomainName"] = request.customDomainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendInfo)) {
            body["ExtendInfo"] = request.extendInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            body["FileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Id)) {
            body["H5Id"] = request.h5Id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Name)) {
            body["H5Name"] = request.h5Name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Version)) {
            body["H5Version"] = request.h5Version ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.installType)) {
            body["InstallType"] = request.installType!;
        }
        if (!TeaUtils.Client.isUnset(request.mainUrl)) {
            body["MainUrl"] = request.mainUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onexFlag)) {
            body["OnexFlag"] = request.onexFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repeatNebula)) {
            body["RepeatNebula"] = request.repeatNebula!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType!;
        }
        if (!TeaUtils.Client.isUnset(request.subUrl)) {
            body["SubUrl"] = request.subUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vhost)) {
            body["Vhost"] = request.vhost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcubeNebulaResource",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcubeNebulaResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeNebulaResource(_ request: CreateMcubeNebulaResourceRequest) async throws -> CreateMcubeNebulaResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcubeNebulaResourceWithOptions(request as! CreateMcubeNebulaResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeNebulaTaskWithOptions(_ request: CreateMcubeNebulaTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcubeNebulaTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            body["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creator)) {
            body["Creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtCreate)) {
            body["GmtCreate"] = request.gmtCreate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtModified)) {
            body["GmtModified"] = request.gmtModified ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtModifiedStr)) {
            body["GmtModifiedStr"] = request.gmtModifiedStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyConfigInfo)) {
            body["GreyConfigInfo"] = request.greyConfigInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyEndtime)) {
            body["GreyEndtime"] = request.greyEndtime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyEndtimeData)) {
            body["GreyEndtimeData"] = request.greyEndtimeData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyEndtimeStr)) {
            body["GreyEndtimeStr"] = request.greyEndtimeStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyNum)) {
            body["GreyNum"] = request.greyNum!;
        }
        if (!TeaUtils.Client.isUnset(request.greyUrl)) {
            body["GreyUrl"] = request.greyUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.memo)) {
            body["Memo"] = request.memo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifier)) {
            body["Modifier"] = request.modifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageId)) {
            body["PackageId"] = request.packageId!;
        }
        if (!TeaUtils.Client.isUnset(request.percent)) {
            body["Percent"] = request.percent!;
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersion)) {
            body["ProductVersion"] = request.productVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publishMode)) {
            body["PublishMode"] = request.publishMode!;
        }
        if (!TeaUtils.Client.isUnset(request.publishType)) {
            body["PublishType"] = request.publishType!;
        }
        if (!TeaUtils.Client.isUnset(request.releaseVersion)) {
            body["ReleaseVersion"] = request.releaseVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resIds)) {
            body["ResIds"] = request.resIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialVersionUID)) {
            body["SerialVersionUID"] = request.serialVersionUID!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.syncMode)) {
            body["SyncMode"] = request.syncMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncResult)) {
            body["SyncResult"] = request.syncResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            body["TaskStatus"] = request.taskStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["TaskType"] = request.taskType!;
        }
        if (!TeaUtils.Client.isUnset(request.taskVersion)) {
            body["TaskVersion"] = request.taskVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upgradeNoticeNum)) {
            body["UpgradeNoticeNum"] = request.upgradeNoticeNum!;
        }
        if (!TeaUtils.Client.isUnset(request.upgradeProgress)) {
            body["UpgradeProgress"] = request.upgradeProgress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelistIds)) {
            body["WhitelistIds"] = request.whitelistIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcubeNebulaTask",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcubeNebulaTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeNebulaTask(_ request: CreateMcubeNebulaTaskRequest) async throws -> CreateMcubeNebulaTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcubeNebulaTaskWithOptions(request as! CreateMcubeNebulaTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeUpgradePackageWithOptions(_ request: CreateMcubeUpgradePackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcubeUpgradePackageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            body["AppVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appstoreUrl)) {
            body["AppstoreUrl"] = request.appstoreUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bundleId)) {
            body["BundleId"] = request.bundleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customDomainName)) {
            body["CustomDomainName"] = request.customDomainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desc)) {
            body["Desc"] = request.desc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.downloadUrl)) {
            body["DownloadUrl"] = request.downloadUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            body["FileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.harmonyLabel)) {
            body["HarmonyLabel"] = request.harmonyLabel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iconFileUrl)) {
            body["IconFileUrl"] = request.iconFileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.installAmount)) {
            body["InstallAmount"] = request.installAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.iosSymbolfileUrl)) {
            body["IosSymbolfileUrl"] = request.iosSymbolfileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isEnterprise)) {
            body["IsEnterprise"] = request.isEnterprise!;
        }
        if (!TeaUtils.Client.isUnset(request.largeIconUrl)) {
            body["LargeIconUrl"] = request.largeIconUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needCheck)) {
            body["NeedCheck"] = request.needCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.onexFlag)) {
            body["OnexFlag"] = request.onexFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validDays)) {
            body["ValidDays"] = request.validDays!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcubeUpgradePackage",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcubeUpgradePackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeUpgradePackage(_ request: CreateMcubeUpgradePackageRequest) async throws -> CreateMcubeUpgradePackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcubeUpgradePackageWithOptions(request as! CreateMcubeUpgradePackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeUpgradeTaskWithOptions(_ request: CreateMcubeUpgradeTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcubeUpgradeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyConfigInfo)) {
            body["GreyConfigInfo"] = request.greyConfigInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyEndtimeData)) {
            body["GreyEndtimeData"] = request.greyEndtimeData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyNum)) {
            body["GreyNum"] = request.greyNum!;
        }
        if (!TeaUtils.Client.isUnset(request.historyForce)) {
            body["HistoryForce"] = request.historyForce!;
        }
        if (!TeaUtils.Client.isUnset(request.memo)) {
            body["Memo"] = request.memo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageInfoId)) {
            body["PackageInfoId"] = request.packageInfoId!;
        }
        if (!TeaUtils.Client.isUnset(request.publishMode)) {
            body["PublishMode"] = request.publishMode!;
        }
        if (!TeaUtils.Client.isUnset(request.publishType)) {
            body["PublishType"] = request.publishType!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upgradeContent)) {
            body["UpgradeContent"] = request.upgradeContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upgradeType)) {
            body["UpgradeType"] = request.upgradeType!;
        }
        if (!TeaUtils.Client.isUnset(request.whitelistIds)) {
            body["WhitelistIds"] = request.whitelistIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcubeUpgradeTask",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcubeUpgradeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeUpgradeTask(_ request: CreateMcubeUpgradeTaskRequest) async throws -> CreateMcubeUpgradeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcubeUpgradeTaskWithOptions(request as! CreateMcubeUpgradeTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeVhostWithOptions(_ request: CreateMcubeVhostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcubeVhostResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vhost)) {
            body["Vhost"] = request.vhost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcubeVhost",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcubeVhostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeVhost(_ request: CreateMcubeVhostRequest) async throws -> CreateMcubeVhostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcubeVhostWithOptions(request as! CreateMcubeVhostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeWhitelistWithOptions(_ request: CreateMcubeWhitelistRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcubeWhitelistResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whiteListName)) {
            body["WhiteListName"] = request.whiteListName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelistType)) {
            body["WhitelistType"] = request.whitelistType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcubeWhitelist",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcubeWhitelistResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeWhitelist(_ request: CreateMcubeWhitelistRequest) async throws -> CreateMcubeWhitelistResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcubeWhitelistWithOptions(request as! CreateMcubeWhitelistRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeWhitelistForIdeWithOptions(_ request: CreateMcubeWhitelistForIdeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcubeWhitelistForIdeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelistValue)) {
            body["WhitelistValue"] = request.whitelistValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcubeWhitelistForIde",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcubeWhitelistForIdeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcubeWhitelistForIde(_ request: CreateMcubeWhitelistForIdeRequest) async throws -> CreateMcubeWhitelistForIdeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcubeWhitelistForIdeWithOptions(request as! CreateMcubeWhitelistForIdeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMdsCubeResourceWithOptions(_ request: CreateMdsCubeResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMdsCubeResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidMaxVersion)) {
            body["AndroidMaxVersion"] = request.androidMaxVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidMinVersion)) {
            body["AndroidMinVersion"] = request.androidMinVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendInfo)) {
            body["ExtendInfo"] = request.extendInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            body["FileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iosMaxVersion)) {
            body["IosMaxVersion"] = request.iosMaxVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iosMinVersion)) {
            body["IosMinVersion"] = request.iosMinVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mockDataUrl)) {
            body["MockDataUrl"] = request.mockDataUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onexFlag)) {
            body["OnexFlag"] = request.onexFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.previewPictureUrl)) {
            body["PreviewPictureUrl"] = request.previewPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateResourceDesc)) {
            body["TemplateResourceDesc"] = request.templateResourceDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateResourceVersion)) {
            body["TemplateResourceVersion"] = request.templateResourceVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMdsCubeResource",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMdsCubeResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMdsCubeResource(_ request: CreateMdsCubeResourceRequest) async throws -> CreateMdsCubeResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMdsCubeResourceWithOptions(request as! CreateMdsCubeResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMdsCubeTaskWithOptions(_ request: CreateMdsCubeTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMdsCubeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyConfigInfo)) {
            body["GreyConfigInfo"] = request.greyConfigInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyEndtimeData)) {
            body["GreyEndtimeData"] = request.greyEndtimeData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyNum)) {
            body["GreyNum"] = request.greyNum!;
        }
        if (!TeaUtils.Client.isUnset(request.publishMode)) {
            body["PublishMode"] = request.publishMode!;
        }
        if (!TeaUtils.Client.isUnset(request.publishType)) {
            body["PublishType"] = request.publishType!;
        }
        if (!TeaUtils.Client.isUnset(request.taskDesc)) {
            body["TaskDesc"] = request.taskDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateResourceId)) {
            body["TemplateResourceId"] = request.templateResourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelistIds)) {
            body["WhitelistIds"] = request.whitelistIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMdsCubeTask",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMdsCubeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMdsCubeTask(_ request: CreateMdsCubeTaskRequest) async throws -> CreateMdsCubeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMdsCubeTaskWithOptions(request as! CreateMdsCubeTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMdsCubeTemplateWithOptions(_ request: CreateMdsCubeTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMdsCubeTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateDesc)) {
            body["TemplateDesc"] = request.templateDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMdsCubeTemplate",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMdsCubeTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMdsCubeTemplate(_ request: CreateMdsCubeTemplateRequest) async throws -> CreateMdsCubeTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMdsCubeTemplateWithOptions(request as! CreateMdsCubeTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMdsMiniprogramTaskWithOptions(_ request: CreateMdsMiniprogramTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMdsMiniprogramTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyConfigInfo)) {
            body["GreyConfigInfo"] = request.greyConfigInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyEndtimeData)) {
            body["GreyEndtimeData"] = request.greyEndtimeData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyNum)) {
            body["GreyNum"] = request.greyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Id)) {
            body["H5Id"] = request.h5Id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.memo)) {
            body["Memo"] = request.memo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageId)) {
            body["PackageId"] = request.packageId!;
        }
        if (!TeaUtils.Client.isUnset(request.publishMode)) {
            body["PublishMode"] = request.publishMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publishType)) {
            body["PublishType"] = request.publishType!;
        }
        if (!TeaUtils.Client.isUnset(request.syncMode)) {
            body["SyncMode"] = request.syncMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelistIds)) {
            body["WhitelistIds"] = request.whitelistIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMdsMiniprogramTask",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMdsMiniprogramTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMdsMiniprogramTask(_ request: CreateMdsMiniprogramTaskRequest) async throws -> CreateMdsMiniprogramTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMdsMiniprogramTaskWithOptions(request as! CreateMdsMiniprogramTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOpenGlobalDataWithOptions(_ request: CreateOpenGlobalDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOpenGlobalDataResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appMaxVersion)) {
            body["AppMaxVersion"] = request.appMaxVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appMinVersion)) {
            body["AppMinVersion"] = request.appMinVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extAttrStr)) {
            body["ExtAttrStr"] = request.extAttrStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxUid)) {
            body["MaxUid"] = request.maxUid!;
        }
        if (!TeaUtils.Client.isUnset(request.minUid)) {
            body["MinUid"] = request.minUid!;
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            body["OsType"] = request.osType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payload)) {
            body["Payload"] = request.payload ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdMsgId)) {
            body["ThirdMsgId"] = request.thirdMsgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uids)) {
            body["Uids"] = request.uids ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validTimeEnd)) {
            body["ValidTimeEnd"] = request.validTimeEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.validTimeStart)) {
            body["ValidTimeStart"] = request.validTimeStart!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOpenGlobalData",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOpenGlobalDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOpenGlobalData(_ request: CreateOpenGlobalDataRequest) async throws -> CreateOpenGlobalDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOpenGlobalDataWithOptions(request as! CreateOpenGlobalDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOpenSingleDataWithOptions(_ request: CreateOpenSingleDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOpenSingleDataResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appMaxVersion)) {
            body["AppMaxVersion"] = request.appMaxVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appMinVersion)) {
            body["AppMinVersion"] = request.appMinVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkOnline)) {
            body["CheckOnline"] = request.checkOnline!;
        }
        if (!TeaUtils.Client.isUnset(request.extAttrStr)) {
            body["ExtAttrStr"] = request.extAttrStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.linkToken)) {
            body["LinkToken"] = request.linkToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            body["OsType"] = request.osType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payload)) {
            body["Payload"] = request.payload ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdMsgId)) {
            body["ThirdMsgId"] = request.thirdMsgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validTimeEnd)) {
            body["ValidTimeEnd"] = request.validTimeEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.validTimeStart)) {
            body["ValidTimeStart"] = request.validTimeStart!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOpenSingleData",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOpenSingleDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOpenSingleData(_ request: CreateOpenSingleDataRequest) async throws -> CreateOpenSingleDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOpenSingleDataWithOptions(request as! CreateOpenSingleDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTemplateWithOptions(_ request: CreateTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.descInfo)) {
            body["DescInfo"] = request.descInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iconUrls)) {
            body["IconUrls"] = request.iconUrls ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrls)) {
            body["ImageUrls"] = request.imageUrls ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jumpAction)) {
            body["JumpAction"] = request.jumpAction!;
        }
        if (!TeaUtils.Client.isUnset(request.pushStyle)) {
            body["PushStyle"] = request.pushStyle!;
        }
        if (!TeaUtils.Client.isUnset(request.showStyle)) {
            body["ShowStyle"] = request.showStyle!;
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uri)) {
            body["Uri"] = request.uri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.variables)) {
            body["Variables"] = request.variables ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTemplate",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTemplate(_ request: CreateTemplateRequest) async throws -> CreateTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTemplateWithOptions(request as! CreateTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCubecardWhitelistContentWithOptions(_ request: DeleteCubecardWhitelistContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCubecardWhitelistContentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelistId)) {
            body["WhitelistId"] = request.whitelistId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelistValue)) {
            body["WhitelistValue"] = request.whitelistValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCubecardWhitelistContent",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCubecardWhitelistContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCubecardWhitelistContent(_ request: DeleteCubecardWhitelistContentRequest) async throws -> DeleteCubecardWhitelistContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCubecardWhitelistContentWithOptions(request as! DeleteCubecardWhitelistContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcdpAimWithOptions(_ request: DeleteMcdpAimRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMcdpAimResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpaasMappcenterMcdpAimDeleteJsonStr)) {
            body["MpaasMappcenterMcdpAimDeleteJsonStr"] = request.mpaasMappcenterMcdpAimDeleteJsonStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMcdpAim",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMcdpAimResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcdpAim(_ request: DeleteMcdpAimRequest) async throws -> DeleteMcdpAimResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMcdpAimWithOptions(request as! DeleteMcdpAimRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcdpCrowdWithOptions(_ request: DeleteMcdpCrowdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMcdpCrowdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpaasMappcenterMcdpCrowdDeleteJsonStr)) {
            body["MpaasMappcenterMcdpCrowdDeleteJsonStr"] = request.mpaasMappcenterMcdpCrowdDeleteJsonStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMcdpCrowd",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMcdpCrowdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcdpCrowd(_ request: DeleteMcdpCrowdRequest) async throws -> DeleteMcdpCrowdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMcdpCrowdWithOptions(request as! DeleteMcdpCrowdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcdpZoneWithOptions(_ request: DeleteMcdpZoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMcdpZoneResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpaasMappcenterMcdpZoneDeleteJsonStr)) {
            body["MpaasMappcenterMcdpZoneDeleteJsonStr"] = request.mpaasMappcenterMcdpZoneDeleteJsonStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMcdpZone",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMcdpZoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcdpZone(_ request: DeleteMcdpZoneRequest) async throws -> DeleteMcdpZoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMcdpZoneWithOptions(request as! DeleteMcdpZoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcubeMiniAppWithOptions(_ request: DeleteMcubeMiniAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMcubeMiniAppResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Id)) {
            body["H5Id"] = request.h5Id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMcubeMiniApp",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMcubeMiniAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcubeMiniApp(_ request: DeleteMcubeMiniAppRequest) async throws -> DeleteMcubeMiniAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMcubeMiniAppWithOptions(request as! DeleteMcubeMiniAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcubeNebulaAppWithOptions(_ request: DeleteMcubeNebulaAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMcubeNebulaAppResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Id)) {
            body["H5Id"] = request.h5Id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMcubeNebulaApp",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMcubeNebulaAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcubeNebulaApp(_ request: DeleteMcubeNebulaAppRequest) async throws -> DeleteMcubeNebulaAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMcubeNebulaAppWithOptions(request as! DeleteMcubeNebulaAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcubeUpgradeResourceWithOptions(_ request: DeleteMcubeUpgradeResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMcubeUpgradeResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMcubeUpgradeResource",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMcubeUpgradeResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcubeUpgradeResource(_ request: DeleteMcubeUpgradeResourceRequest) async throws -> DeleteMcubeUpgradeResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMcubeUpgradeResourceWithOptions(request as! DeleteMcubeUpgradeResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcubeWhitelistWithOptions(_ request: DeleteMcubeWhitelistRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMcubeWhitelistResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMcubeWhitelist",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMcubeWhitelistResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcubeWhitelist(_ request: DeleteMcubeWhitelistRequest) async throws -> DeleteMcubeWhitelistResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMcubeWhitelistWithOptions(request as! DeleteMcubeWhitelistRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMdsCubeTemplateWithOptions(_ request: DeleteMdsCubeTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMdsCubeTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMdsCubeTemplate",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMdsCubeTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMdsCubeTemplate(_ request: DeleteMdsCubeTemplateRequest) async throws -> DeleteMdsCubeTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMdsCubeTemplateWithOptions(request as! DeleteMdsCubeTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMdsWhitelistContentWithOptions(_ request: DeleteMdsWhitelistContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMdsWhitelistContentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelistId)) {
            body["WhitelistId"] = request.whitelistId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelistValue)) {
            body["WhitelistValue"] = request.whitelistValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMdsWhitelistContent",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMdsWhitelistContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMdsWhitelistContent(_ request: DeleteMdsWhitelistContentRequest) async throws -> DeleteMdsWhitelistContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMdsWhitelistContentWithOptions(request as! DeleteMdsWhitelistContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTemplateWithOptions(_ request: DeleteTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTemplate",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTemplate(_ request: DeleteTemplateRequest) async throws -> DeleteTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTemplateWithOptions(request as! DeleteTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func existMcubeRsaKeyWithOptions(_ request: ExistMcubeRsaKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExistMcubeRsaKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExistMcubeRsaKey",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExistMcubeRsaKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func existMcubeRsaKey(_ request: ExistMcubeRsaKeyRequest) async throws -> ExistMcubeRsaKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await existMcubeRsaKeyWithOptions(request as! ExistMcubeRsaKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportMappCenterAppConfigWithOptions(_ request: ExportMappCenterAppConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportMappCenterAppConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apkFileUrl)) {
            body["ApkFileUrl"] = request.apkFileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certRsaBase64)) {
            body["CertRsaBase64"] = request.certRsaBase64 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            body["Identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onexFlag)) {
            body["OnexFlag"] = request.onexFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.systemType)) {
            body["SystemType"] = request.systemType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportMappCenterAppConfig",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportMappCenterAppConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportMappCenterAppConfig(_ request: ExportMappCenterAppConfigRequest) async throws -> ExportMappCenterAppConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await exportMappCenterAppConfigWithOptions(request as! ExportMappCenterAppConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileTokenForUploadToMsaWithOptions(_ request: GetFileTokenForUploadToMsaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFileTokenForUploadToMsaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onexFlag)) {
            body["OnexFlag"] = request.onexFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFileTokenForUploadToMsa",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFileTokenForUploadToMsaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileTokenForUploadToMsa(_ request: GetFileTokenForUploadToMsaRequest) async throws -> GetFileTokenForUploadToMsaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFileTokenForUploadToMsaWithOptions(request as! GetFileTokenForUploadToMsaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogUrlInMsaWithOptions(_ request: GetLogUrlInMsaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLogUrlInMsaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLogUrlInMsa",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLogUrlInMsaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogUrlInMsa(_ request: GetLogUrlInMsaRequest) async throws -> GetLogUrlInMsaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLogUrlInMsaWithOptions(request as! GetLogUrlInMsaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcubeFileTokenWithOptions(_ request: GetMcubeFileTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMcubeFileTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onexFlag)) {
            body["OnexFlag"] = request.onexFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMcubeFileToken",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMcubeFileTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcubeFileToken(_ request: GetMcubeFileTokenRequest) async throws -> GetMcubeFileTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMcubeFileTokenWithOptions(request as! GetMcubeFileTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcubeNebulaResourceWithOptions(_ request: GetMcubeNebulaResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMcubeNebulaResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMcubeNebulaResource",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMcubeNebulaResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcubeNebulaResource(_ request: GetMcubeNebulaResourceRequest) async throws -> GetMcubeNebulaResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMcubeNebulaResourceWithOptions(request as! GetMcubeNebulaResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcubeNebulaTaskDetailWithOptions(_ request: GetMcubeNebulaTaskDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMcubeNebulaTaskDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMcubeNebulaTaskDetail",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMcubeNebulaTaskDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcubeNebulaTaskDetail(_ request: GetMcubeNebulaTaskDetailRequest) async throws -> GetMcubeNebulaTaskDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMcubeNebulaTaskDetailWithOptions(request as! GetMcubeNebulaTaskDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcubeUpgradePackageInfoWithOptions(_ request: GetMcubeUpgradePackageInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMcubeUpgradePackageInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageId)) {
            body["PackageId"] = request.packageId!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMcubeUpgradePackageInfo",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMcubeUpgradePackageInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcubeUpgradePackageInfo(_ request: GetMcubeUpgradePackageInfoRequest) async throws -> GetMcubeUpgradePackageInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMcubeUpgradePackageInfoWithOptions(request as! GetMcubeUpgradePackageInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcubeUpgradeTaskInfoWithOptions(_ request: GetMcubeUpgradeTaskInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMcubeUpgradeTaskInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMcubeUpgradeTaskInfo",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMcubeUpgradeTaskInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcubeUpgradeTaskInfo(_ request: GetMcubeUpgradeTaskInfoRequest) async throws -> GetMcubeUpgradeTaskInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMcubeUpgradeTaskInfoWithOptions(request as! GetMcubeUpgradeTaskInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMdsMiniConfigWithOptions(_ request: GetMdsMiniConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMdsMiniConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Id)) {
            body["H5Id"] = request.h5Id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMdsMiniConfig",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMdsMiniConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMdsMiniConfig(_ request: GetMdsMiniConfigRequest) async throws -> GetMdsMiniConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMdsMiniConfigWithOptions(request as! GetMdsMiniConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateWithOptions(_ request: GetTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTemplate",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplate(_ request: GetTemplateRequest) async throws -> GetTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTemplateWithOptions(request as! GetTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserAppDonwloadUrlInMsaWithOptions(_ request: GetUserAppDonwloadUrlInMsaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserAppDonwloadUrlInMsaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserAppDonwloadUrlInMsa",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserAppDonwloadUrlInMsaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserAppDonwloadUrlInMsa(_ request: GetUserAppDonwloadUrlInMsaRequest) async throws -> GetUserAppDonwloadUrlInMsaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserAppDonwloadUrlInMsaWithOptions(request as! GetUserAppDonwloadUrlInMsaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserAppEnhanceProcessInMsaWithOptions(_ request: GetUserAppEnhanceProcessInMsaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserAppEnhanceProcessInMsaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserAppEnhanceProcessInMsa",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserAppEnhanceProcessInMsaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserAppEnhanceProcessInMsa(_ request: GetUserAppEnhanceProcessInMsaRequest) async throws -> GetUserAppEnhanceProcessInMsaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserAppEnhanceProcessInMsaWithOptions(request as! GetUserAppEnhanceProcessInMsaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserAppUploadProcessInMsaWithOptions(_ request: GetUserAppUploadProcessInMsaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserAppUploadProcessInMsaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserAppUploadProcessInMsa",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserAppUploadProcessInMsaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserAppUploadProcessInMsa(_ request: GetUserAppUploadProcessInMsaRequest) async throws -> GetUserAppUploadProcessInMsaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserAppUploadProcessInMsaWithOptions(request as! GetUserAppUploadProcessInMsaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnalysisCoreIndexWithOptions(_ request: ListAnalysisCoreIndexRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAnalysisCoreIndexResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAnalysisCoreIndex",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAnalysisCoreIndexResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnalysisCoreIndex(_ request: ListAnalysisCoreIndexRequest) async throws -> ListAnalysisCoreIndexResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAnalysisCoreIndexWithOptions(request as! ListAnalysisCoreIndexRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCubecardAppsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListCubecardAppsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCubecardApps",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCubecardAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCubecardApps() async throws -> ListCubecardAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCubecardAppsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMappCenterAppsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListMappCenterAppsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMappCenterApps",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMappCenterAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMappCenterApps() async throws -> ListMappCenterAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMappCenterAppsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMappCenterWorkspacesWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListMappCenterWorkspacesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMappCenterWorkspaces",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMappCenterWorkspacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMappCenterWorkspaces() async throws -> ListMappCenterWorkspacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMappCenterWorkspacesWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcdpAimWithOptions(_ request: ListMcdpAimRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMcdpAimResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emptyTag)) {
            body["EmptyTag"] = request.emptyTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            body["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            body["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortField)) {
            body["SortField"] = request.sortField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMcdpAim",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMcdpAimResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcdpAim(_ request: ListMcdpAimRequest) async throws -> ListMcdpAimResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMcdpAimWithOptions(request as! ListMcdpAimRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeMiniAppsWithOptions(_ request: ListMcubeMiniAppsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMcubeMiniAppsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMcubeMiniApps",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMcubeMiniAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeMiniApps(_ request: ListMcubeMiniAppsRequest) async throws -> ListMcubeMiniAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMcubeMiniAppsWithOptions(request as! ListMcubeMiniAppsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeMiniPackagesWithOptions(_ request: ListMcubeMiniPackagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMcubeMiniPackagesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Id)) {
            body["H5Id"] = request.h5Id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageTypes)) {
            body["PackageTypes"] = request.packageTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMcubeMiniPackages",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMcubeMiniPackagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeMiniPackages(_ request: ListMcubeMiniPackagesRequest) async throws -> ListMcubeMiniPackagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMcubeMiniPackagesWithOptions(request as! ListMcubeMiniPackagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeMiniTasksWithOptions(_ request: ListMcubeMiniTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMcubeMiniTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMcubeMiniTasks",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMcubeMiniTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeMiniTasks(_ request: ListMcubeMiniTasksRequest) async throws -> ListMcubeMiniTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMcubeMiniTasksWithOptions(request as! ListMcubeMiniTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeNebulaAppsWithOptions(_ request: ListMcubeNebulaAppsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMcubeNebulaAppsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMcubeNebulaApps",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMcubeNebulaAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeNebulaApps(_ request: ListMcubeNebulaAppsRequest) async throws -> ListMcubeNebulaAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMcubeNebulaAppsWithOptions(request as! ListMcubeNebulaAppsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeNebulaResourcesWithOptions(_ request: ListMcubeNebulaResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMcubeNebulaResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Id)) {
            body["H5Id"] = request.h5Id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMcubeNebulaResources",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMcubeNebulaResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeNebulaResources(_ request: ListMcubeNebulaResourcesRequest) async throws -> ListMcubeNebulaResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMcubeNebulaResourcesWithOptions(request as! ListMcubeNebulaResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeNebulaTasksWithOptions(_ request: ListMcubeNebulaTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMcubeNebulaTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMcubeNebulaTasks",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMcubeNebulaTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeNebulaTasks(_ request: ListMcubeNebulaTasksRequest) async throws -> ListMcubeNebulaTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMcubeNebulaTasksWithOptions(request as! ListMcubeNebulaTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeUpgradePackagesWithOptions(_ request: ListMcubeUpgradePackagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMcubeUpgradePackagesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMcubeUpgradePackages",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMcubeUpgradePackagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeUpgradePackages(_ request: ListMcubeUpgradePackagesRequest) async throws -> ListMcubeUpgradePackagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMcubeUpgradePackagesWithOptions(request as! ListMcubeUpgradePackagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeUpgradeTasksWithOptions(_ request: ListMcubeUpgradeTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMcubeUpgradeTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageId)) {
            body["PackageId"] = request.packageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMcubeUpgradeTasks",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMcubeUpgradeTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeUpgradeTasks(_ request: ListMcubeUpgradeTasksRequest) async throws -> ListMcubeUpgradeTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMcubeUpgradeTasksWithOptions(request as! ListMcubeUpgradeTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeWhitelistsWithOptions(_ request: ListMcubeWhitelistsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMcubeWhitelistsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelistName)) {
            body["WhitelistName"] = request.whitelistName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMcubeWhitelists",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMcubeWhitelistsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcubeWhitelists(_ request: ListMcubeWhitelistsRequest) async throws -> ListMcubeWhitelistsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMcubeWhitelistsWithOptions(request as! ListMcubeWhitelistsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMdsCubeResourcesWithOptions(_ request: ListMdsCubeResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMdsCubeResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.test)) {
            body["test"] = request.test ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMdsCubeResources",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMdsCubeResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMdsCubeResources(_ request: ListMdsCubeResourcesRequest) async throws -> ListMdsCubeResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMdsCubeResourcesWithOptions(request as! ListMdsCubeResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMdsCubeTasksWithOptions(_ request: ListMdsCubeTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMdsCubeTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.templateResourceId)) {
            body["TemplateResourceId"] = request.templateResourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMdsCubeTasks",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMdsCubeTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMdsCubeTasks(_ request: ListMdsCubeTasksRequest) async throws -> ListMdsCubeTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMdsCubeTasksWithOptions(request as! ListMdsCubeTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMdsCubeTemplatesWithOptions(_ request: ListMdsCubeTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMdsCubeTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMdsCubeTemplates",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMdsCubeTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMdsCubeTemplates(_ request: ListMdsCubeTemplatesRequest) async throws -> ListMdsCubeTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMdsCubeTemplatesWithOptions(request as! ListMdsCubeTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMgsApiWithOptions(_ request: ListMgsApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMgsApiResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiStatus)) {
            body["ApiStatus"] = request.apiStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            body["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["Format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.host)) {
            body["Host"] = request.host ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needEncrypt)) {
            body["NeedEncrypt"] = request.needEncrypt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needEtag)) {
            body["NeedEtag"] = request.needEtag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needSign)) {
            body["NeedSign"] = request.needSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            body["OperationType"] = request.operationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optFuzzy)) {
            body["OptFuzzy"] = request.optFuzzy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sysId)) {
            body["SysId"] = request.sysId!;
        }
        if (!TeaUtils.Client.isUnset(request.sysName)) {
            body["SysName"] = request.sysName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMgsApi",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMgsApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMgsApi(_ request: ListMgsApiRequest) async throws -> ListMgsApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMgsApiWithOptions(request as! ListMgsApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTemplatePageWithOptions(_ request: ListTemplatePageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTemplatePageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTemplatePage",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTemplatePageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTemplatePage(_ request: ListTemplatePageRequest) async throws -> ListTemplatePageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTemplatePageWithOptions(request as! ListTemplatePageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mTRSOCRServiceWithOptions(_ request: MTRSOCRServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MTRSOCRServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageRaw)) {
            body["ImageRaw"] = request.imageRaw ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mask)) {
            body["Mask"] = request.mask!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MTRSOCRService",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MTRSOCRServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mTRSOCRService(_ request: MTRSOCRServiceRequest) async throws -> MTRSOCRServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mTRSOCRServiceWithOptions(request as! MTRSOCRServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushBindWithOptions(_ request: PushBindRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushBindResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryToken)) {
            body["DeliveryToken"] = request.deliveryToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            body["OsType"] = request.osType!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushBind",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushBindResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushBind(_ request: PushBindRequest) async throws -> PushBindResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushBindWithOptions(request as! PushBindRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushBroadcastWithOptions(_ tmpReq: PushBroadcastRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushBroadcastResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PushBroadcastShrinkRequest = PushBroadcastShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.notifyLevel)) {
            request.notifyLevelShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notifyLevel, "NotifyLevel", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.thirdChannelCategory)) {
            request.thirdChannelCategoryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.thirdChannelCategory, "ThirdChannelCategory", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidChannel)) {
            body["AndroidChannel"] = request.androidChannel!;
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bindEndTime)) {
            body["BindEndTime"] = request.bindEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.bindPeriod)) {
            body["BindPeriod"] = request.bindPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.bindStartTime)) {
            body["BindStartTime"] = request.bindStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            body["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classification)) {
            body["Classification"] = request.classification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryType)) {
            body["DeliveryType"] = request.deliveryType!;
        }
        if (!TeaUtils.Client.isUnset(request.expiredSeconds)) {
            body["ExpiredSeconds"] = request.expiredSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.extendedParams)) {
            body["ExtendedParams"] = request.extendedParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.miChannelId)) {
            body["MiChannelId"] = request.miChannelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.msgkey)) {
            body["Msgkey"] = request.msgkey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyLevelShrink)) {
            body["NotifyLevel"] = request.notifyLevelShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyType)) {
            body["NotifyType"] = request.notifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushAction)) {
            body["PushAction"] = request.pushAction!;
        }
        if (!TeaUtils.Client.isUnset(request.pushStatus)) {
            body["PushStatus"] = request.pushStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.silent)) {
            body["Silent"] = request.silent!;
        }
        if (!TeaUtils.Client.isUnset(request.strategyContent)) {
            body["StrategyContent"] = request.strategyContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strategyType)) {
            body["StrategyType"] = request.strategyType!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateKeyValue)) {
            body["TemplateKeyValue"] = request.templateKeyValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdChannelCategoryShrink)) {
            body["ThirdChannelCategory"] = request.thirdChannelCategoryShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeMode)) {
            body["TimeMode"] = request.timeMode!;
        }
        if (!TeaUtils.Client.isUnset(request.transparentMessagePayload)) {
            body["TransparentMessagePayload"] = request.transparentMessagePayload!;
        }
        if (!TeaUtils.Client.isUnset(request.transparentMessageUrgency)) {
            body["TransparentMessageUrgency"] = request.transparentMessageUrgency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unBindEndTime)) {
            body["UnBindEndTime"] = request.unBindEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.unBindPeriod)) {
            body["UnBindPeriod"] = request.unBindPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.unBindStartTime)) {
            body["UnBindStartTime"] = request.unBindStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushBroadcast",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushBroadcastResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushBroadcast(_ request: PushBroadcastRequest) async throws -> PushBroadcastResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushBroadcastWithOptions(request as! PushBroadcastRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushMultipleWithOptions(_ tmpReq: PushMultipleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushMultipleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PushMultipleShrinkRequest = PushMultipleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.notifyLevel)) {
            request.notifyLevelShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notifyLevel, "NotifyLevel", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.thirdChannelCategory)) {
            request.thirdChannelCategoryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.thirdChannelCategory, "ThirdChannelCategory", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityContentState)) {
            body["ActivityContentState"] = request.activityContentState!;
        }
        if (!TeaUtils.Client.isUnset(request.activityEvent)) {
            body["ActivityEvent"] = request.activityEvent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            body["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classification)) {
            body["Classification"] = request.classification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryType)) {
            body["DeliveryType"] = request.deliveryType!;
        }
        if (!TeaUtils.Client.isUnset(request.dismissalDate)) {
            body["DismissalDate"] = request.dismissalDate!;
        }
        if (!TeaUtils.Client.isUnset(request.expiredSeconds)) {
            body["ExpiredSeconds"] = request.expiredSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.extendedParams)) {
            body["ExtendedParams"] = request.extendedParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.miChannelId)) {
            body["MiChannelId"] = request.miChannelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyLevelShrink)) {
            body["NotifyLevel"] = request.notifyLevelShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyType)) {
            body["NotifyType"] = request.notifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushAction)) {
            body["PushAction"] = request.pushAction!;
        }
        if (!TeaUtils.Client.isUnset(request.silent)) {
            body["Silent"] = request.silent!;
        }
        if (!TeaUtils.Client.isUnset(request.strategyContent)) {
            body["StrategyContent"] = request.strategyContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strategyType)) {
            body["StrategyType"] = request.strategyType!;
        }
        if (!TeaUtils.Client.isUnset(request.targetMsg)) {
            body["TargetMsg"] = request.targetMsg ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdChannelCategoryShrink)) {
            body["ThirdChannelCategory"] = request.thirdChannelCategoryShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transparentMessagePayload)) {
            body["TransparentMessagePayload"] = request.transparentMessagePayload!;
        }
        if (!TeaUtils.Client.isUnset(request.transparentMessageUrgency)) {
            body["TransparentMessageUrgency"] = request.transparentMessageUrgency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushMultiple",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushMultipleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushMultiple(_ request: PushMultipleRequest) async throws -> PushMultipleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushMultipleWithOptions(request as! PushMultipleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushQueryDeviceStateWithOptions(_ request: PushQueryDeviceStateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushQueryDeviceStateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            body["Target"] = request.target ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            body["TargetType"] = request.targetType!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushQueryDeviceState",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushQueryDeviceStateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushQueryDeviceState(_ request: PushQueryDeviceStateRequest) async throws -> PushQueryDeviceStateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushQueryDeviceStateWithOptions(request as! PushQueryDeviceStateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushReportWithOptions(_ request: PushReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushReportResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            body["AppVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectType)) {
            body["ConnectType"] = request.connectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryToken)) {
            body["DeliveryToken"] = request.deliveryToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imei)) {
            body["Imei"] = request.imei ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imsi)) {
            body["Imsi"] = request.imsi ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            body["OsType"] = request.osType!;
        }
        if (!TeaUtils.Client.isUnset(request.pushVersion)) {
            body["PushVersion"] = request.pushVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdChannel)) {
            body["ThirdChannel"] = request.thirdChannel!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdChannelDeviceToken)) {
            body["ThirdChannelDeviceToken"] = request.thirdChannelDeviceToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushReport",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushReport(_ request: PushReportRequest) async throws -> PushReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushReportWithOptions(request as! PushReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushSimpleWithOptions(_ tmpReq: PushSimpleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushSimpleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PushSimpleShrinkRequest = PushSimpleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.notifyLevel)) {
            request.notifyLevelShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notifyLevel, "NotifyLevel", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.thirdChannelCategory)) {
            request.thirdChannelCategoryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.thirdChannelCategory, "ThirdChannelCategory", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityContentState)) {
            body["ActivityContentState"] = request.activityContentState!;
        }
        if (!TeaUtils.Client.isUnset(request.activityEvent)) {
            body["ActivityEvent"] = request.activityEvent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            body["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classification)) {
            body["Classification"] = request.classification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryType)) {
            body["DeliveryType"] = request.deliveryType!;
        }
        if (!TeaUtils.Client.isUnset(request.dismissalDate)) {
            body["DismissalDate"] = request.dismissalDate!;
        }
        if (!TeaUtils.Client.isUnset(request.expiredSeconds)) {
            body["ExpiredSeconds"] = request.expiredSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.extendedParams)) {
            body["ExtendedParams"] = request.extendedParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iconUrls)) {
            body["IconUrls"] = request.iconUrls ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrls)) {
            body["ImageUrls"] = request.imageUrls ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.miChannelId)) {
            body["MiChannelId"] = request.miChannelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyLevelShrink)) {
            body["NotifyLevel"] = request.notifyLevelShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyType)) {
            body["NotifyType"] = request.notifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushAction)) {
            body["PushAction"] = request.pushAction!;
        }
        if (!TeaUtils.Client.isUnset(request.pushStyle)) {
            body["PushStyle"] = request.pushStyle!;
        }
        if (!TeaUtils.Client.isUnset(request.silent)) {
            body["Silent"] = request.silent!;
        }
        if (!TeaUtils.Client.isUnset(request.smsSignName)) {
            body["SmsSignName"] = request.smsSignName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.smsStrategy)) {
            body["SmsStrategy"] = request.smsStrategy!;
        }
        if (!TeaUtils.Client.isUnset(request.smsTemplateCode)) {
            body["SmsTemplateCode"] = request.smsTemplateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.smsTemplateParam)) {
            body["SmsTemplateParam"] = request.smsTemplateParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strategyContent)) {
            body["StrategyContent"] = request.strategyContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strategyType)) {
            body["StrategyType"] = request.strategyType!;
        }
        if (!TeaUtils.Client.isUnset(request.targetMsgkey)) {
            body["TargetMsgkey"] = request.targetMsgkey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdChannelCategoryShrink)) {
            body["ThirdChannelCategory"] = request.thirdChannelCategoryShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transparentMessagePayload)) {
            body["TransparentMessagePayload"] = request.transparentMessagePayload!;
        }
        if (!TeaUtils.Client.isUnset(request.transparentMessageUrgency)) {
            body["TransparentMessageUrgency"] = request.transparentMessageUrgency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uri)) {
            body["Uri"] = request.uri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushSimple",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushSimpleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushSimple(_ request: PushSimpleRequest) async throws -> PushSimpleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushSimpleWithOptions(request as! PushSimpleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushTemplateWithOptions(_ tmpReq: PushTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushTemplateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PushTemplateShrinkRequest = PushTemplateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.notifyLevel)) {
            request.notifyLevelShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notifyLevel, "NotifyLevel", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.thirdChannelCategory)) {
            request.thirdChannelCategoryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.thirdChannelCategory, "ThirdChannelCategory", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityContentState)) {
            body["ActivityContentState"] = request.activityContentState!;
        }
        if (!TeaUtils.Client.isUnset(request.activityEvent)) {
            body["ActivityEvent"] = request.activityEvent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            body["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classification)) {
            body["Classification"] = request.classification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryType)) {
            body["DeliveryType"] = request.deliveryType!;
        }
        if (!TeaUtils.Client.isUnset(request.dismissalDate)) {
            body["DismissalDate"] = request.dismissalDate!;
        }
        if (!TeaUtils.Client.isUnset(request.expiredSeconds)) {
            body["ExpiredSeconds"] = request.expiredSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.extendedParams)) {
            body["ExtendedParams"] = request.extendedParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.miChannelId)) {
            body["MiChannelId"] = request.miChannelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyLevelShrink)) {
            body["NotifyLevel"] = request.notifyLevelShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyType)) {
            body["NotifyType"] = request.notifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushAction)) {
            body["PushAction"] = request.pushAction!;
        }
        if (!TeaUtils.Client.isUnset(request.silent)) {
            body["Silent"] = request.silent!;
        }
        if (!TeaUtils.Client.isUnset(request.smsSignName)) {
            body["SmsSignName"] = request.smsSignName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.smsStrategy)) {
            body["SmsStrategy"] = request.smsStrategy!;
        }
        if (!TeaUtils.Client.isUnset(request.smsTemplateCode)) {
            body["SmsTemplateCode"] = request.smsTemplateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.smsTemplateParam)) {
            body["SmsTemplateParam"] = request.smsTemplateParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strategyContent)) {
            body["StrategyContent"] = request.strategyContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strategyType)) {
            body["StrategyType"] = request.strategyType!;
        }
        if (!TeaUtils.Client.isUnset(request.targetMsgkey)) {
            body["TargetMsgkey"] = request.targetMsgkey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateKeyValue)) {
            body["TemplateKeyValue"] = request.templateKeyValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdChannelCategoryShrink)) {
            body["ThirdChannelCategory"] = request.thirdChannelCategoryShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transparentMessagePayload)) {
            body["TransparentMessagePayload"] = request.transparentMessagePayload!;
        }
        if (!TeaUtils.Client.isUnset(request.transparentMessageUrgency)) {
            body["TransparentMessageUrgency"] = request.transparentMessageUrgency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushTemplate",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushTemplate(_ request: PushTemplateRequest) async throws -> PushTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushTemplateWithOptions(request as! PushTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushUnBindWithOptions(_ request: PushUnBindRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushUnBindResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryToken)) {
            body["DeliveryToken"] = request.deliveryToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushUnBind",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushUnBindResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushUnBind(_ request: PushUnBindRequest) async throws -> PushUnBindResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushUnBindWithOptions(request as! PushUnBindRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCubecardFiletokenWithOptions(_ request: QueryCubecardFiletokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCubecardFiletokenResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onexFlag)) {
            body["OnexFlag"] = request.onexFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCubecardFiletoken",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCubecardFiletokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCubecardFiletoken(_ request: QueryCubecardFiletokenRequest) async throws -> QueryCubecardFiletokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCubecardFiletokenWithOptions(request as! QueryCubecardFiletokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInfoFromMdpWithOptions(_ request: QueryInfoFromMdpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryInfoFromMdpResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileMd5)) {
            body["MobileMd5"] = request.mobileMd5 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileSha256)) {
            body["MobileSha256"] = request.mobileSha256 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileSm3)) {
            body["MobileSm3"] = request.mobileSm3 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskScene)) {
            body["RiskScene"] = request.riskScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryInfoFromMdp",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryInfoFromMdpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInfoFromMdp(_ request: QueryInfoFromMdpRequest) async throws -> QueryInfoFromMdpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryInfoFromMdpWithOptions(request as! QueryInfoFromMdpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLinkWithOptions(_ request: QueryLinkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLinkResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLink",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLinkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLink(_ request: QueryLinkRequest) async throws -> QueryLinkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryLinkWithOptions(request as! QueryLinkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMappCenterAppWithOptions(_ request: QueryMappCenterAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMappCenterAppResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMappCenterApp",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMappCenterAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMappCenterApp(_ request: QueryMappCenterAppRequest) async throws -> QueryMappCenterAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMappCenterAppWithOptions(request as! QueryMappCenterAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMcdpAimWithOptions(_ request: QueryMcdpAimRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMcdpAimResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMcdpAim",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMcdpAimResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMcdpAim(_ request: QueryMcdpAimRequest) async throws -> QueryMcdpAimResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMcdpAimWithOptions(request as! QueryMcdpAimRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMcdpZoneWithOptions(_ request: QueryMcdpZoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMcdpZoneResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMcdpZone",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMcdpZoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMcdpZone(_ request: QueryMcdpZoneRequest) async throws -> QueryMcdpZoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMcdpZoneWithOptions(request as! QueryMcdpZoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMcubeMiniPackageWithOptions(_ request: QueryMcubeMiniPackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMcubeMiniPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Id)) {
            body["H5Id"] = request.h5Id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMcubeMiniPackage",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMcubeMiniPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMcubeMiniPackage(_ request: QueryMcubeMiniPackageRequest) async throws -> QueryMcubeMiniPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMcubeMiniPackageWithOptions(request as! QueryMcubeMiniPackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMcubeMiniTaskWithOptions(_ request: QueryMcubeMiniTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMcubeMiniTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMcubeMiniTask",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMcubeMiniTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMcubeMiniTask(_ request: QueryMcubeMiniTaskRequest) async throws -> QueryMcubeMiniTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMcubeMiniTaskWithOptions(request as! QueryMcubeMiniTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMcubeVhostWithOptions(_ request: QueryMcubeVhostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMcubeVhostResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMcubeVhost",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMcubeVhostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMcubeVhost(_ request: QueryMcubeVhostRequest) async throws -> QueryMcubeVhostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMcubeVhostWithOptions(request as! QueryMcubeVhostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMdsUpgradeTaskDetailWithOptions(_ request: QueryMdsUpgradeTaskDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMdsUpgradeTaskDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMdsUpgradeTaskDetail",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMdsUpgradeTaskDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMdsUpgradeTaskDetail(_ request: QueryMdsUpgradeTaskDetailRequest) async throws -> QueryMdsUpgradeTaskDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMdsUpgradeTaskDetailWithOptions(request as! QueryMdsUpgradeTaskDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMgsApipageWithOptions(_ request: QueryMgsApipageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMgsApipageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiStatus)) {
            body["ApiStatus"] = request.apiStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            body["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["Format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.host)) {
            body["Host"] = request.host ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needEncrypt)) {
            body["NeedEncrypt"] = request.needEncrypt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needEtag)) {
            body["NeedEtag"] = request.needEtag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needSign)) {
            body["NeedSign"] = request.needSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            body["OperationType"] = request.operationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optFuzzy)) {
            body["OptFuzzy"] = request.optFuzzy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sysId)) {
            body["SysId"] = request.sysId!;
        }
        if (!TeaUtils.Client.isUnset(request.sysName)) {
            body["SysName"] = request.sysName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMgsApipage",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMgsApipageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMgsApipage(_ request: QueryMgsApipageRequest) async throws -> QueryMgsApipageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMgsApipageWithOptions(request as! QueryMgsApipageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMgsApirestWithOptions(_ request: QueryMgsApirestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMgsApirestResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["Format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMgsApirest",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMgsApirestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMgsApirest(_ request: QueryMgsApirestRequest) async throws -> QueryMgsApirestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMgsApirestWithOptions(request as! QueryMgsApirestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMgsTestreqbodyautogenWithOptions(_ request: QueryMgsTestreqbodyautogenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMgsTestreqbodyautogenResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["Format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpaasMappcenterMgsTestreqbodyautogenQueryJsonStr)) {
            body["MpaasMappcenterMgsTestreqbodyautogenQueryJsonStr"] = request.mpaasMappcenterMgsTestreqbodyautogenQueryJsonStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMgsTestreqbodyautogen",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMgsTestreqbodyautogenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMgsTestreqbodyautogen(_ request: QueryMgsTestreqbodyautogenRequest) async throws -> QueryMgsTestreqbodyautogenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMgsTestreqbodyautogenWithOptions(request as! QueryMgsTestreqbodyautogenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMpsSchedulerListWithOptions(_ request: QueryMpsSchedulerListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMpsSchedulerListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.uniqueId)) {
            body["UniqueId"] = request.uniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMpsSchedulerList",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMpsSchedulerListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMpsSchedulerList(_ request: QueryMpsSchedulerListRequest) async throws -> QueryMpsSchedulerListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMpsSchedulerListWithOptions(request as! QueryMpsSchedulerListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushAnalysisCoreIndexWithOptions(_ request: QueryPushAnalysisCoreIndexRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPushAnalysisCoreIndexResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPushAnalysisCoreIndex",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPushAnalysisCoreIndexResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushAnalysisCoreIndex(_ request: QueryPushAnalysisCoreIndexRequest) async throws -> QueryPushAnalysisCoreIndexResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPushAnalysisCoreIndexWithOptions(request as! QueryPushAnalysisCoreIndexRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushAnalysisTaskDetailWithOptions(_ request: QueryPushAnalysisTaskDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPushAnalysisTaskDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPushAnalysisTaskDetail",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPushAnalysisTaskDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushAnalysisTaskDetail(_ request: QueryPushAnalysisTaskDetailRequest) async throws -> QueryPushAnalysisTaskDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPushAnalysisTaskDetailWithOptions(request as! QueryPushAnalysisTaskDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushAnalysisTaskListWithOptions(_ request: QueryPushAnalysisTaskListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPushAnalysisTaskListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPushAnalysisTaskList",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPushAnalysisTaskListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushAnalysisTaskList(_ request: QueryPushAnalysisTaskListRequest) async throws -> QueryPushAnalysisTaskListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPushAnalysisTaskListWithOptions(request as! QueryPushAnalysisTaskListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushSchedulerListWithOptions(_ request: QueryPushSchedulerListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPushSchedulerListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.uniqueId)) {
            body["UniqueId"] = request.uniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPushSchedulerList",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPushSchedulerListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushSchedulerList(_ request: QueryPushSchedulerListRequest) async throws -> QueryPushSchedulerListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPushSchedulerListWithOptions(request as! QueryPushSchedulerListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokePushMessageWithOptions(_ request: RevokePushMessageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokePushMessageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messageId)) {
            body["MessageId"] = request.messageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetId)) {
            body["TargetId"] = request.targetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokePushMessage",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokePushMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokePushMessage(_ request: RevokePushMessageRequest) async throws -> RevokePushMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokePushMessageWithOptions(request as! RevokePushMessageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokePushTaskWithOptions(_ request: RevokePushTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokePushTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokePushTask",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokePushTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokePushTask(_ request: RevokePushTaskRequest) async throws -> RevokePushTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokePushTaskWithOptions(request as! RevokePushTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runMsaDiffWithOptions(_ request: RunMsaDiffRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunMsaDiffResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpaasMappcenterMsaDiffRunJsonStr)) {
            body["MpaasMappcenterMsaDiffRunJsonStr"] = request.mpaasMappcenterMsaDiffRunJsonStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunMsaDiff",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunMsaDiffResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runMsaDiff(_ request: RunMsaDiffRequest) async throws -> RunMsaDiffResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runMsaDiffWithOptions(request as! RunMsaDiffRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveMgsApirestWithOptions(_ request: SaveMgsApirestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveMgsApirestResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpaasMappcenterMgsApirestSaveJsonStr)) {
            body["MpaasMappcenterMgsApirestSaveJsonStr"] = request.mpaasMappcenterMgsApirestSaveJsonStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveMgsApirest",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveMgsApirestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveMgsApirest(_ request: SaveMgsApirestRequest) async throws -> SaveMgsApirestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveMgsApirestWithOptions(request as! SaveMgsApirestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startUserAppAsyncEnhanceInMsaWithOptions(_ request: StartUserAppAsyncEnhanceInMsaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartUserAppAsyncEnhanceInMsaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apkProtector)) {
            body["ApkProtector"] = request.apkProtector!;
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetsFileList)) {
            body["AssetsFileList"] = request.assetsFileList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classes)) {
            body["Classes"] = request.classes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dalvikDebugger)) {
            body["DalvikDebugger"] = request.dalvikDebugger!;
        }
        if (!TeaUtils.Client.isUnset(request.emulatorEnvironment)) {
            body["EmulatorEnvironment"] = request.emulatorEnvironment!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.javaHook)) {
            body["JavaHook"] = request.javaHook!;
        }
        if (!TeaUtils.Client.isUnset(request.memoryDump)) {
            body["MemoryDump"] = request.memoryDump!;
        }
        if (!TeaUtils.Client.isUnset(request.nativeDebugger)) {
            body["NativeDebugger"] = request.nativeDebugger!;
        }
        if (!TeaUtils.Client.isUnset(request.nativeHook)) {
            body["NativeHook"] = request.nativeHook!;
        }
        if (!TeaUtils.Client.isUnset(request.packageTampered)) {
            body["PackageTampered"] = request.packageTampered!;
        }
        if (!TeaUtils.Client.isUnset(request.root)) {
            body["Root"] = request.root!;
        }
        if (!TeaUtils.Client.isUnset(request.runMode)) {
            body["RunMode"] = request.runMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.soFileList)) {
            body["SoFileList"] = request.soFileList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["TaskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalSwitch)) {
            body["TotalSwitch"] = request.totalSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.useAShield)) {
            body["UseAShield"] = request.useAShield!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartUserAppAsyncEnhanceInMsa",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartUserAppAsyncEnhanceInMsaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startUserAppAsyncEnhanceInMsa(_ request: StartUserAppAsyncEnhanceInMsaRequest) async throws -> StartUserAppAsyncEnhanceInMsaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startUserAppAsyncEnhanceInMsaWithOptions(request as! StartUserAppAsyncEnhanceInMsaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLinkWithOptions(_ request: UpdateLinkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLinkResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cors)) {
            body["Cors"] = request.cors!;
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            body["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dynamicfield)) {
            body["Dynamicfield"] = request.dynamicfield ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUrl)) {
            body["TargetUrl"] = request.targetUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLink",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLinkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLink(_ request: UpdateLinkRequest) async throws -> UpdateLinkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateLinkWithOptions(request as! UpdateLinkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMcubeWhitelistWithOptions(_ request: UpdateMcubeWhitelistRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMcubeWhitelistResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyIds)) {
            body["KeyIds"] = request.keyIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onexFlag)) {
            body["OnexFlag"] = request.onexFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.ossUrl)) {
            body["OssUrl"] = request.ossUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMcubeWhitelist",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMcubeWhitelistResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMcubeWhitelist(_ request: UpdateMcubeWhitelistRequest) async throws -> UpdateMcubeWhitelistResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMcubeWhitelistWithOptions(request as! UpdateMcubeWhitelistRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMdsCubeResourceWithOptions(_ request: UpdateMdsCubeResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMdsCubeResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mockDataUrl)) {
            body["MockDataUrl"] = request.mockDataUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onexFlag)) {
            body["OnexFlag"] = request.onexFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.templateResourceId)) {
            body["TemplateResourceId"] = request.templateResourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMdsCubeResource",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMdsCubeResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMdsCubeResource(_ request: UpdateMdsCubeResourceRequest) async throws -> UpdateMdsCubeResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMdsCubeResourceWithOptions(request as! UpdateMdsCubeResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMpaasAppInfoWithOptions(_ request: UpdateMpaasAppInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMpaasAppInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iconFileUrl)) {
            body["IconFileUrl"] = request.iconFileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            body["Identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onexFlag)) {
            body["OnexFlag"] = request.onexFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.systemType)) {
            body["SystemType"] = request.systemType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMpaasAppInfo",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMpaasAppInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMpaasAppInfo(_ request: UpdateMpaasAppInfoRequest) async throws -> UpdateMpaasAppInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMpaasAppInfoWithOptions(request as! UpdateMpaasAppInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadBitcodeToMsaWithOptions(_ request: UploadBitcodeToMsaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadBitcodeToMsaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bitcode)) {
            body["Bitcode"] = request.bitcode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeVersion)) {
            body["CodeVersion"] = request.codeVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.license)) {
            body["License"] = request.license ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadBitcodeToMsa",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadBitcodeToMsaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadBitcodeToMsa(_ request: UploadBitcodeToMsaRequest) async throws -> UploadBitcodeToMsaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadBitcodeToMsaWithOptions(request as! UploadBitcodeToMsaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMcubeMiniPackageWithOptions(_ request: UploadMcubeMiniPackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadMcubeMiniPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoInstall)) {
            body["AutoInstall"] = request.autoInstall!;
        }
        if (!TeaUtils.Client.isUnset(request.clientVersionMax)) {
            body["ClientVersionMax"] = request.clientVersionMax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVersionMin)) {
            body["ClientVersionMin"] = request.clientVersionMin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableKeepAlive)) {
            body["EnableKeepAlive"] = request.enableKeepAlive ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableOptionMenu)) {
            body["EnableOptionMenu"] = request.enableOptionMenu ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableTabBar)) {
            body["EnableTabBar"] = request.enableTabBar!;
        }
        if (!TeaUtils.Client.isUnset(request.extendInfo)) {
            body["ExtendInfo"] = request.extendInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Id)) {
            body["H5Id"] = request.h5Id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Name)) {
            body["H5Name"] = request.h5Name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5Version)) {
            body["H5Version"] = request.h5Version ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iconFileUrl)) {
            body["IconFileUrl"] = request.iconFileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iconUrl)) {
            body["IconUrl"] = request.iconUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.installType)) {
            body["InstallType"] = request.installType!;
        }
        if (!TeaUtils.Client.isUnset(request.mainUrl)) {
            body["MainUrl"] = request.mainUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onexFlag)) {
            body["OnexFlag"] = request.onexFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            body["PackageType"] = request.packageType!;
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceFileUrl)) {
            body["ResourceFileUrl"] = request.resourceFileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vhost)) {
            body["Vhost"] = request.vhost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadMcubeMiniPackage",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadMcubeMiniPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMcubeMiniPackage(_ request: UploadMcubeMiniPackageRequest) async throws -> UploadMcubeMiniPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadMcubeMiniPackageWithOptions(request as! UploadMcubeMiniPackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMcubeRsaKeyWithOptions(_ request: UploadMcubeRsaKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadMcubeRsaKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            body["FileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onexFlag)) {
            body["OnexFlag"] = request.onexFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadMcubeRsaKey",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadMcubeRsaKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMcubeRsaKey(_ request: UploadMcubeRsaKeyRequest) async throws -> UploadMcubeRsaKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadMcubeRsaKeyWithOptions(request as! UploadMcubeRsaKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadUserAppToMsaWithOptions(_ request: UploadUserAppToMsaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadUserAppToMsaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            body["FileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadUserAppToMsa",
            "version": "2020-10-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadUserAppToMsaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadUserAppToMsa(_ request: UploadUserAppToMsaRequest) async throws -> UploadUserAppToMsaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadUserAppToMsaWithOptions(request as! UploadUserAppToMsaRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
