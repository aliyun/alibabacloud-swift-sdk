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
    public func cancelMpsSchedulerWithOptions(_ request: CancelMpsSchedulerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelMpsSchedulerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
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
            "action": "CancelMpsScheduler",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelMpsSchedulerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelMpsScheduler(_ request: CancelMpsSchedulerRequest) async throws -> CancelMpsSchedulerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelMpsSchedulerWithOptions(request as! CancelMpsSchedulerRequest, runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
            "version": "2020-07-10",
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
}
