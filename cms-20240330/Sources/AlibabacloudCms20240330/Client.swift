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
        self._endpoint = try getEndpoint("cms", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createAddonReleaseWithOptions(_ policyId: String, _ request: CreateAddonReleaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAddonReleaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addonName)) {
            body["addonName"] = request.addonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            body["aliyunLang"] = request.aliyunLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            body["dryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.entityRules)) {
            body["entityRules"] = request.entityRules!;
        }
        if (!TeaUtils.Client.isUnset(request.envType)) {
            body["envType"] = request.envType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentAddonReleaseId)) {
            body["parentAddonReleaseId"] = request.parentAddonReleaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseName)) {
            body["releaseName"] = request.releaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.values)) {
            body["values"] = request.values ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            body["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAddonRelease",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)) + "/addon-releases",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAddonReleaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAddonRelease(_ policyId: String, _ request: CreateAddonReleaseRequest) async throws -> CreateAddonReleaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAddonReleaseWithOptions(policyId as! String, request as! CreateAddonReleaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggTaskGroupWithOptions(_ instanceId: String, _ request: CreateAggTaskGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAggTaskGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.overrideIfExists)) {
            query["overrideIfExists"] = request.overrideIfExists!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggTaskGroupConfig)) {
            body["aggTaskGroupConfig"] = request.aggTaskGroupConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aggTaskGroupConfigType)) {
            body["aggTaskGroupConfigType"] = request.aggTaskGroupConfigType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aggTaskGroupName)) {
            body["aggTaskGroupName"] = request.aggTaskGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cronExpr)) {
            body["cronExpr"] = request.cronExpr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delay)) {
            body["delay"] = request.delay!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromTime)) {
            body["fromTime"] = request.fromTime!;
        }
        if (!TeaUtils.Client.isUnset(request.maxRetries)) {
            body["maxRetries"] = request.maxRetries!;
        }
        if (!TeaUtils.Client.isUnset(request.maxRunTimeInSeconds)) {
            body["maxRunTimeInSeconds"] = request.maxRunTimeInSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.precheckString)) {
            body["precheckString"] = request.precheckString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleMode)) {
            body["scheduleMode"] = request.scheduleMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTimeExpr)) {
            body["scheduleTimeExpr"] = request.scheduleTimeExpr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.targetPrometheusId)) {
            body["targetPrometheusId"] = request.targetPrometheusId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toTime)) {
            body["toTime"] = request.toTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAggTaskGroup",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/agg-task-groups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAggTaskGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggTaskGroup(_ instanceId: String, _ request: CreateAggTaskGroupRequest) async throws -> CreateAggTaskGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAggTaskGroupWithOptions(instanceId as! String, request as! CreateAggTaskGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBizTraceWithOptions(_ request: CreateBizTraceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBizTraceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.advancedConfig)) {
            body["advancedConfig"] = request.advancedConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizTraceCode)) {
            body["bizTraceCode"] = request.bizTraceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizTraceName)) {
            body["bizTraceName"] = request.bizTraceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleConfig)) {
            body["ruleConfig"] = request.ruleConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            body["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBizTrace",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/bizTrace",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBizTraceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBizTrace(_ request: CreateBizTraceRequest) async throws -> CreateBizTraceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createBizTraceWithOptions(request as! CreateBizTraceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCloudResourceWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCloudResourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCloudResource",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/cloudresource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCloudResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCloudResource() async throws -> CreateCloudResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createCloudResourceWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEntityStoreWithOptions(_ workspaceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEntityStoreResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEntityStore",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceName)) + "/entitystore",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEntityStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEntityStore(_ workspaceName: String) async throws -> CreateEntityStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createEntityStoreWithOptions(workspaceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIntegrationPolicyWithOptions(_ request: CreateIntegrationPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIntegrationPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entityGroup)) {
            body["entityGroup"] = request.entityGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            body["policyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyType)) {
            body["policyType"] = request.policyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            body["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIntegrationPolicy",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIntegrationPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIntegrationPolicy(_ request: CreateIntegrationPolicyRequest) async throws -> CreateIntegrationPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createIntegrationPolicyWithOptions(request as! CreateIntegrationPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrometheusInstanceWithOptions(_ request: CreatePrometheusInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePrometheusInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.archiveDuration)) {
            body["archiveDuration"] = request.archiveDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.authFreeReadPolicy)) {
            body["authFreeReadPolicy"] = request.authFreeReadPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authFreeWritePolicy)) {
            body["authFreeWritePolicy"] = request.authFreeWritePolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAuthFreeRead)) {
            body["enableAuthFreeRead"] = request.enableAuthFreeRead!;
        }
        if (!TeaUtils.Client.isUnset(request.enableAuthFreeWrite)) {
            body["enableAuthFreeWrite"] = request.enableAuthFreeWrite!;
        }
        if (!TeaUtils.Client.isUnset(request.enableAuthToken)) {
            body["enableAuthToken"] = request.enableAuthToken!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            body["paymentType"] = request.paymentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prometheusInstanceName)) {
            body["prometheusInstanceName"] = request.prometheusInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageDuration)) {
            body["storageDuration"] = request.storageDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            body["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePrometheusInstance",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-instances",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePrometheusInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrometheusInstance(_ request: CreatePrometheusInstanceRequest) async throws -> CreatePrometheusInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPrometheusInstanceWithOptions(request as! CreatePrometheusInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrometheusViewWithOptions(_ request: CreatePrometheusViewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePrometheusViewResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authFreeReadPolicy)) {
            body["authFreeReadPolicy"] = request.authFreeReadPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAuthFreeRead)) {
            body["enableAuthFreeRead"] = request.enableAuthFreeRead!;
        }
        if (!TeaUtils.Client.isUnset(request.enableAuthToken)) {
            body["enableAuthToken"] = request.enableAuthToken!;
        }
        if (!TeaUtils.Client.isUnset(request.prometheusInstances)) {
            body["prometheusInstances"] = request.prometheusInstances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.prometheusViewName)) {
            body["prometheusViewName"] = request.prometheusViewName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            body["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePrometheusView",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-views",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePrometheusViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrometheusView(_ request: CreatePrometheusViewRequest) async throws -> CreatePrometheusViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPrometheusViewWithOptions(request as! CreatePrometheusViewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrometheusVirtualInstanceWithOptions(_ request: CreatePrometheusVirtualInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePrometheusVirtualInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePrometheusVirtualInstance",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/virtual-instances",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePrometheusVirtualInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrometheusVirtualInstance(_ request: CreatePrometheusVirtualInstanceRequest) async throws -> CreatePrometheusVirtualInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPrometheusVirtualInstanceWithOptions(request as! CreatePrometheusVirtualInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceWithOptions(_ workspace: String, _ request: CreateServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributes)) {
            body["attributes"] = request.attributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pid)) {
            body["pid"] = request.pid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            body["serviceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceStatus)) {
            body["serviceStatus"] = request.serviceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            body["serviceType"] = request.serviceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateService",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/service",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createService(_ workspace: String, _ request: CreateServiceRequest) async throws -> CreateServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceWithOptions(workspace as! String, request as! CreateServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTicketWithOptions(_ request: CreateTicketRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessTokenExpirationTime)) {
            query["accessTokenExpirationTime"] = request.accessTokenExpirationTime!;
        }
        if (!TeaUtils.Client.isUnset(request.expirationTime)) {
            query["expirationTime"] = request.expirationTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTicket",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/tickets",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTicket(_ request: CreateTicketRequest) async throws -> CreateTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTicketWithOptions(request as! CreateTicketRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUmodelWithOptions(_ workspace: String, _ request: CreateUmodelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUmodelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUmodel",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/umodel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUmodelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUmodel(_ workspace: String, _ request: CreateUmodelRequest) async throws -> CreateUmodelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createUmodelWithOptions(workspace as! String, request as! CreateUmodelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAddonReleaseWithOptions(_ policyId: String, _ request: DeleteAddonReleaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAddonReleaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addonName)) {
            query["addonName"] = request.addonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["force"] = request.force!;
        }
        if (!TeaUtils.Client.isUnset(request.releaseName)) {
            query["releaseName"] = request.releaseName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAddonRelease",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)) + "/addon-releases",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAddonReleaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAddonRelease(_ policyId: String, _ request: DeleteAddonReleaseRequest) async throws -> DeleteAddonReleaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAddonReleaseWithOptions(policyId as! String, request as! DeleteAddonReleaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAggTaskGroupWithOptions(_ instanceId: String, _ groupId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAggTaskGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAggTaskGroup",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/agg-task-groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAggTaskGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAggTaskGroup(_ instanceId: String, _ groupId: String) async throws -> DeleteAggTaskGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAggTaskGroupWithOptions(instanceId as! String, groupId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBizTraceWithOptions(_ bizTraceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBizTraceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBizTrace",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/bizTrace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(bizTraceId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBizTraceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBizTrace(_ bizTraceId: String) async throws -> DeleteBizTraceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteBizTraceWithOptions(bizTraceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCloudResourceWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCloudResourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCloudResource",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/cloudresource",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCloudResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCloudResource() async throws -> DeleteCloudResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteCloudResourceWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEntityStoreWithOptions(_ workspaceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEntityStoreResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEntityStore",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceName)) + "/entitystore",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEntityStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEntityStore(_ workspaceName: String) async throws -> DeleteEntityStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEntityStoreWithOptions(workspaceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIntegrationPolicyWithOptions(_ policyId: String, _ request: DeleteIntegrationPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIntegrationPolicyResponse {
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
            "action": "DeleteIntegrationPolicy",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIntegrationPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIntegrationPolicy(_ policyId: String, _ request: DeleteIntegrationPolicyRequest) async throws -> DeleteIntegrationPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteIntegrationPolicyWithOptions(policyId as! String, request as! DeleteIntegrationPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrometheusInstanceWithOptions(_ prometheusInstanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePrometheusInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePrometheusInstance",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(prometheusInstanceId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePrometheusInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrometheusInstance(_ prometheusInstanceId: String) async throws -> DeletePrometheusInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePrometheusInstanceWithOptions(prometheusInstanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrometheusViewWithOptions(_ prometheusViewId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePrometheusViewResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePrometheusView",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-views/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(prometheusViewId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePrometheusViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrometheusView(_ prometheusViewId: String) async throws -> DeletePrometheusViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePrometheusViewWithOptions(prometheusViewId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceWithOptions(_ workspace: String, _ serviceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteService",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/service/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteService(_ workspace: String, _ serviceId: String) async throws -> DeleteServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceWithOptions(workspace as! String, serviceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUmodelWithOptions(_ workspace: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUmodelResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUmodel",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/umodel",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUmodelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUmodel(_ workspace: String) async throws -> DeleteUmodelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteUmodelWithOptions(workspace as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUmodelCommonSchemaRefWithOptions(_ workspace: String, _ request: DeleteUmodelCommonSchemaRefRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUmodelCommonSchemaRefResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.group)) {
            query["group"] = request.group ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUmodelCommonSchemaRef",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/umodel/common-schema-ref",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUmodelCommonSchemaRefResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUmodelCommonSchemaRef(_ workspace: String, _ request: DeleteUmodelCommonSchemaRefRequest) async throws -> DeleteUmodelCommonSchemaRefResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteUmodelCommonSchemaRefWithOptions(workspace as! String, request as! DeleteUmodelCommonSchemaRefRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUmodelDataWithOptions(_ workspace: String, _ request: DeleteUmodelDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUmodelDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kind)) {
            query["kind"] = request.kind ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUmodelData",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/umodel/data",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUmodelDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUmodelData(_ workspace: String, _ request: DeleteUmodelDataRequest) async throws -> DeleteUmodelDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteUmodelDataWithOptions(workspace as! String, request as! DeleteUmodelDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceWithOptions(_ workspaceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkspaceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkspace",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspace(_ workspaceName: String) async throws -> DeleteWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteWorkspaceWithOptions(workspaceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
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
            "action": "DescribeRegions",
            "version": "2024-03-30",
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
    public func getAddonWithOptions(_ addonName: String, _ request: GetAddonRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAddonResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            query["aliyunLang"] = request.aliyunLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAddon",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/addons/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(addonName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAddonResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAddon(_ addonName: String, _ request: GetAddonRequest) async throws -> GetAddonResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAddonWithOptions(addonName as! String, request as! GetAddonRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAddonCodeTemplateWithOptions(_ addonName: String, _ request: GetAddonCodeTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAddonCodeTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            query["aliyunLang"] = request.aliyunLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentType)) {
            query["environmentType"] = request.environmentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAddonCodeTemplate",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/addons/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(addonName)) + "/alert-code-template",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAddonCodeTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAddonCodeTemplate(_ addonName: String, _ request: GetAddonCodeTemplateRequest) async throws -> GetAddonCodeTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAddonCodeTemplateWithOptions(addonName as! String, request as! GetAddonCodeTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAddonReleaseWithOptions(_ releaseName: String, _ policyId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAddonReleaseResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAddonRelease",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)) + "/addon-releases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAddonReleaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAddonRelease(_ releaseName: String, _ policyId: String) async throws -> GetAddonReleaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAddonReleaseWithOptions(releaseName as! String, policyId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAddonSchemaWithOptions(_ addonName: String, _ request: GetAddonSchemaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAddonSchemaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            query["aliyunLang"] = request.aliyunLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentType)) {
            query["environmentType"] = request.environmentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAddonSchema",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/addons/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(addonName)) + "/schema",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAddonSchemaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAddonSchema(_ addonName: String, _ request: GetAddonSchemaRequest) async throws -> GetAddonSchemaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAddonSchemaWithOptions(addonName as! String, request as! GetAddonSchemaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggTaskGroupWithOptions(_ instanceId: String, _ groupId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggTaskGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggTaskGroup",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/agg-task-groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggTaskGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggTaskGroup(_ instanceId: String, _ groupId: String) async throws -> GetAggTaskGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAggTaskGroupWithOptions(instanceId as! String, groupId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBizTraceWithOptions(_ bizTraceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBizTraceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBizTrace",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/bizTrace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(bizTraceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBizTraceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBizTrace(_ bizTraceId: String) async throws -> GetBizTraceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getBizTraceWithOptions(bizTraceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCloudResourceWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCloudResourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCloudResource",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/cloudresource",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCloudResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCloudResource() async throws -> GetCloudResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCloudResourceWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCloudResourceDataWithOptions(_ request: GetCloudResourceDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCloudResourceDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["from"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            query["to"] = request.to!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCloudResourceData",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/cloudresource/data",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCloudResourceDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCloudResourceData(_ request: GetCloudResourceDataRequest) async throws -> GetCloudResourceDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCloudResourceDataWithOptions(request as! GetCloudResourceDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCmsServiceWithOptions(_ request: GetCmsServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCmsServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.service)) {
            query["service"] = request.service ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCmsService",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/cmsservice",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCmsServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCmsService(_ request: GetCmsServiceRequest) async throws -> GetCmsServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCmsServiceWithOptions(request as! GetCmsServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEntityStoreWithOptions(_ workspaceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEntityStoreResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEntityStore",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceName)) + "/entitystore",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEntityStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEntityStore(_ workspaceName: String) async throws -> GetEntityStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEntityStoreWithOptions(workspaceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEntityStoreDataWithOptions(_ workspace: String, _ request: GetEntityStoreDataRequest, _ headers: GetEntityStoreDataHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEntityStoreDataResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.from)) {
            body["from"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            body["to"] = request.to!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.acceptEncoding)) {
            realHeaders["acceptEncoding"] = TeaUtils.Client.toJSONString(headers.acceptEncoding);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEntityStoreData",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/entitiesAndRelations",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEntityStoreDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEntityStoreData(_ workspace: String, _ request: GetEntityStoreDataRequest) async throws -> GetEntityStoreDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetEntityStoreDataHeaders = GetEntityStoreDataHeaders([:])
        return try await getEntityStoreDataWithOptions(workspace as! String, request as! GetEntityStoreDataRequest, headers as! GetEntityStoreDataHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIntegrationPolicyWithOptions(_ policyId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIntegrationPolicyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIntegrationPolicy",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIntegrationPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIntegrationPolicy(_ policyId: String) async throws -> GetIntegrationPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIntegrationPolicyWithOptions(policyId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIntegrationVersionForCSWithOptions(_ request: GetIntegrationVersionForCSRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIntegrationVersionForCSResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["clusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["clusterType"] = request.clusterType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIntegrationVersionForCS",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-version/cs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIntegrationVersionForCSResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIntegrationVersionForCS(_ request: GetIntegrationVersionForCSRequest) async throws -> GetIntegrationVersionForCSResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIntegrationVersionForCSWithOptions(request as! GetIntegrationVersionForCSRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrometheusInstanceWithOptions(_ prometheusInstanceId: String, _ request: GetPrometheusInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPrometheusInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            query["aliyunLang"] = request.aliyunLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPrometheusInstance",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(prometheusInstanceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPrometheusInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrometheusInstance(_ prometheusInstanceId: String, _ request: GetPrometheusInstanceRequest) async throws -> GetPrometheusInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPrometheusInstanceWithOptions(prometheusInstanceId as! String, request as! GetPrometheusInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrometheusUserSettingWithOptions(_ request: GetPrometheusUserSettingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPrometheusUserSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            query["aliyunLang"] = request.aliyunLang ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPrometheusUserSetting",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-user-setting",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPrometheusUserSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrometheusUserSetting(_ request: GetPrometheusUserSettingRequest) async throws -> GetPrometheusUserSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPrometheusUserSettingWithOptions(request as! GetPrometheusUserSettingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrometheusViewWithOptions(_ prometheusViewId: String, _ request: GetPrometheusViewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPrometheusViewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            query["aliyunLang"] = request.aliyunLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPrometheusView",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-views/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(prometheusViewId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPrometheusViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrometheusView(_ prometheusViewId: String, _ request: GetPrometheusViewRequest) async throws -> GetPrometheusViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPrometheusViewWithOptions(prometheusViewId as! String, request as! GetPrometheusViewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceWithOptions(_ workspace: String, _ serviceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetService",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/service/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getService(_ workspace: String, _ serviceId: String) async throws -> GetServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceWithOptions(workspace as! String, serviceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceObservabilityWithOptions(_ workspace: String, _ type: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceObservabilityResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceObservability",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/service-observability/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(type)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceObservabilityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceObservability(_ workspace: String, _ type: String) async throws -> GetServiceObservabilityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceObservabilityWithOptions(workspace as! String, type as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUmodelWithOptions(_ workspace: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUmodelResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUmodel",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/umodel",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUmodelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUmodel(_ workspace: String) async throws -> GetUmodelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUmodelWithOptions(workspace as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUmodelCommonSchemaRefWithOptions(_ workspace: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUmodelCommonSchemaRefResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUmodelCommonSchemaRef",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/umodel/common-schema-ref",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUmodelCommonSchemaRefResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUmodelCommonSchemaRef(_ workspace: String) async throws -> GetUmodelCommonSchemaRefResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUmodelCommonSchemaRefWithOptions(workspace as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUmodelDataWithOptions(_ workspace: String, _ request: GetUmodelDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUmodelDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.method)) {
            query["method"] = request.method ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUmodelData",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/umodel/graph",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUmodelDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUmodelData(_ workspace: String, _ request: GetUmodelDataRequest) async throws -> GetUmodelDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUmodelDataWithOptions(workspace as! String, request as! GetUmodelDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkspaceWithOptions(_ workspaceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkspaceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkspace",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkspace(_ workspaceName: String) async throws -> GetWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWorkspaceWithOptions(workspaceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAddonReleasesWithOptions(_ policyId: String, _ request: ListAddonReleasesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAddonReleasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addonName)) {
            query["addonName"] = request.addonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentAddonReleaseId)) {
            query["parentAddonReleaseId"] = request.parentAddonReleaseId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAddonReleases",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)) + "/addon-releases",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAddonReleasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAddonReleases(_ policyId: String, _ request: ListAddonReleasesRequest) async throws -> ListAddonReleasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAddonReleasesWithOptions(policyId as! String, request as! ListAddonReleasesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAddonsWithOptions(_ request: ListAddonsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAddonsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            query["aliyunLang"] = request.aliyunLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regexp)) {
            query["regexp"] = request.regexp!;
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["search"] = request.search ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAddons",
            "version": "2024-03-30",
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
    public func listAggTaskGroupsWithOptions(_ instanceId: String, _ tmpReq: ListAggTaskGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggTaskGroupsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAggTaskGroupsShrinkRequest = ListAggTaskGroupsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterAggTaskGroupIds)) {
            query["filterAggTaskGroupIds"] = request.filterAggTaskGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterAggTaskGroupNames)) {
            query["filterAggTaskGroupNames"] = request.filterAggTaskGroupNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPrometheusId)) {
            query["targetPrometheusId"] = request.targetPrometheusId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggTaskGroups",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/agg-task-groups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggTaskGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggTaskGroups(_ instanceId: String, _ request: ListAggTaskGroupsRequest) async throws -> ListAggTaskGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAggTaskGroupsWithOptions(instanceId as! String, request as! ListAggTaskGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertActionsWithOptions(_ tmpReq: ListAlertActionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlertActionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAlertActionsShrinkRequest = ListAlertActionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.alertActionIds)) {
            request.alertActionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.alertActionIds, "alertActionIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertActionIdsShrink)) {
            query["alertActionIds"] = request.alertActionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertActionName)) {
            query["alertActionName"] = request.alertActionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlertActions",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/alertActions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlertActionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertActions(_ request: ListAlertActionsRequest) async throws -> ListAlertActionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAlertActionsWithOptions(request as! ListAlertActionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBizTracesWithOptions(_ request: ListBizTracesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBizTracesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            query["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBizTraces",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/bizTraces",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBizTracesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBizTraces(_ request: ListBizTracesRequest) async throws -> ListBizTracesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listBizTracesWithOptions(request as! ListBizTracesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPoliciesWithOptions(_ tmpReq: ListIntegrationPoliciesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIntegrationPoliciesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListIntegrationPoliciesShrinkRequest = ListIntegrationPoliciesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addonName)) {
            query["addonName"] = request.addonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bindResourceId)) {
            query["bindResourceId"] = request.bindResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entityGroupIds)) {
            query["entityGroupIds"] = request.entityGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterRegionIds)) {
            query["filterRegionIds"] = request.filterRegionIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["policyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            query["policyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyType)) {
            query["policyType"] = request.policyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prometheusInstanceId)) {
            query["prometheusInstanceId"] = request.prometheusInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["tag"] = request.tagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            query["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIntegrationPolicies",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIntegrationPoliciesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicies(_ request: ListIntegrationPoliciesRequest) async throws -> ListIntegrationPoliciesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIntegrationPoliciesWithOptions(request as! ListIntegrationPoliciesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyAddonsWithOptions(_ policyId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIntegrationPolicyAddonsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIntegrationPolicyAddons",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)) + "/addons",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIntegrationPolicyAddonsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyAddons(_ policyId: String) async throws -> ListIntegrationPolicyAddonsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIntegrationPolicyAddonsWithOptions(policyId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyCollectorsWithOptions(_ policyId: String, _ request: ListIntegrationPolicyCollectorsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIntegrationPolicyCollectorsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addonReleaseName)) {
            query["addonReleaseName"] = request.addonReleaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.collectorType)) {
            query["collectorType"] = request.collectorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIntegrationPolicyCollectors",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)) + "/collectors",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIntegrationPolicyCollectorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyCollectors(_ policyId: String, _ request: ListIntegrationPolicyCollectorsRequest) async throws -> ListIntegrationPolicyCollectorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIntegrationPolicyCollectorsWithOptions(policyId as! String, request as! ListIntegrationPolicyCollectorsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyCustomScrapeJobRulesWithOptions(_ policyId: String, _ request: ListIntegrationPolicyCustomScrapeJobRulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIntegrationPolicyCustomScrapeJobRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addonReleaseName)) {
            query["addonReleaseName"] = request.addonReleaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptYaml)) {
            query["encryptYaml"] = request.encryptYaml!;
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIntegrationPolicyCustomScrapeJobRules",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)) + "/custom-scrape-job-rules",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIntegrationPolicyCustomScrapeJobRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyCustomScrapeJobRules(_ policyId: String, _ request: ListIntegrationPolicyCustomScrapeJobRulesRequest) async throws -> ListIntegrationPolicyCustomScrapeJobRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIntegrationPolicyCustomScrapeJobRulesWithOptions(policyId as! String, request as! ListIntegrationPolicyCustomScrapeJobRulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyDashboardsWithOptions(_ policyId: String, _ request: ListIntegrationPolicyDashboardsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIntegrationPolicyDashboardsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addonName)) {
            query["addonName"] = request.addonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            query["scene"] = request.scene ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIntegrationPolicyDashboards",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)) + "/dashboards",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIntegrationPolicyDashboardsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyDashboards(_ policyId: String, _ request: ListIntegrationPolicyDashboardsRequest) async throws -> ListIntegrationPolicyDashboardsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIntegrationPolicyDashboardsWithOptions(policyId as! String, request as! ListIntegrationPolicyDashboardsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyPodMonitorsWithOptions(_ policyId: String, _ request: ListIntegrationPolicyPodMonitorsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIntegrationPolicyPodMonitorsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addonReleaseName)) {
            query["addonReleaseName"] = request.addonReleaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptYaml)) {
            query["encryptYaml"] = request.encryptYaml!;
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIntegrationPolicyPodMonitors",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)) + "/pod-monitors",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIntegrationPolicyPodMonitorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyPodMonitors(_ policyId: String, _ request: ListIntegrationPolicyPodMonitorsRequest) async throws -> ListIntegrationPolicyPodMonitorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIntegrationPolicyPodMonitorsWithOptions(policyId as! String, request as! ListIntegrationPolicyPodMonitorsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyServiceMonitorsWithOptions(_ policyId: String, _ request: ListIntegrationPolicyServiceMonitorsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIntegrationPolicyServiceMonitorsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addonReleaseName)) {
            query["addonReleaseName"] = request.addonReleaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptYaml)) {
            query["encryptYaml"] = request.encryptYaml!;
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIntegrationPolicyServiceMonitors",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)) + "/service-monitors",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIntegrationPolicyServiceMonitorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyServiceMonitors(_ policyId: String, _ request: ListIntegrationPolicyServiceMonitorsRequest) async throws -> ListIntegrationPolicyServiceMonitorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIntegrationPolicyServiceMonitorsWithOptions(policyId as! String, request as! ListIntegrationPolicyServiceMonitorsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyStorageRequirementsWithOptions(_ policyId: String, _ request: ListIntegrationPolicyStorageRequirementsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIntegrationPolicyStorageRequirementsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addonName)) {
            query["addonName"] = request.addonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.addonReleaseName)) {
            query["addonReleaseName"] = request.addonReleaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageType)) {
            query["storageType"] = request.storageType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIntegrationPolicyStorageRequirements",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)) + "/storage-requirements",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIntegrationPolicyStorageRequirementsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationPolicyStorageRequirements(_ policyId: String, _ request: ListIntegrationPolicyStorageRequirementsRequest) async throws -> ListIntegrationPolicyStorageRequirementsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIntegrationPolicyStorageRequirementsWithOptions(policyId as! String, request as! ListIntegrationPolicyStorageRequirementsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrometheusDashboardsWithOptions(_ prometheusInstanceId: String, _ request: ListPrometheusDashboardsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPrometheusDashboardsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            query["aliyunLang"] = request.aliyunLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPrometheusDashboards",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(prometheusInstanceId)) + "/dashboards",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPrometheusDashboardsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrometheusDashboards(_ prometheusInstanceId: String, _ request: ListPrometheusDashboardsRequest) async throws -> ListPrometheusDashboardsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPrometheusDashboardsWithOptions(prometheusInstanceId as! String, request as! ListPrometheusDashboardsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrometheusInstancesWithOptions(_ tmpReq: ListPrometheusInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPrometheusInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListPrometheusInstancesShrinkRequest = ListPrometheusInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterRegionIds)) {
            query["filterRegionIds"] = request.filterRegionIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prometheusInstanceIds)) {
            query["prometheusInstanceIds"] = request.prometheusInstanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prometheusInstanceName)) {
            query["prometheusInstanceName"] = request.prometheusInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["tag"] = request.tagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPrometheusInstances",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPrometheusInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrometheusInstances(_ request: ListPrometheusInstancesRequest) async throws -> ListPrometheusInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPrometheusInstancesWithOptions(request as! ListPrometheusInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrometheusViewsWithOptions(_ tmpReq: ListPrometheusViewsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPrometheusViewsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListPrometheusViewsShrinkRequest = ListPrometheusViewsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterRegionIds)) {
            query["filterRegionIds"] = request.filterRegionIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prometheusViewIds)) {
            query["prometheusViewIds"] = request.prometheusViewIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prometheusViewName)) {
            query["prometheusViewName"] = request.prometheusViewName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["tag"] = request.tagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            query["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPrometheusViews",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-views",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPrometheusViewsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrometheusViews(_ request: ListPrometheusViewsRequest) async throws -> ListPrometheusViewsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPrometheusViewsWithOptions(request as! ListPrometheusViewsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrometheusVirtualInstancesWithOptions(_ request: ListPrometheusVirtualInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPrometheusVirtualInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPrometheusVirtualInstances",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/virtual-instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPrometheusVirtualInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrometheusVirtualInstances(_ request: ListPrometheusVirtualInstancesRequest) async throws -> ListPrometheusVirtualInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPrometheusVirtualInstancesWithOptions(request as! ListPrometheusVirtualInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServicesWithOptions(_ workspace: String, _ request: ListServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["serviceType"] = request.serviceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServices",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/services",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServices(_ workspace: String, _ request: ListServicesRequest) async throws -> ListServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServicesWithOptions(workspace as! String, request as! ListServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspacesWithOptions(_ tmpReq: ListWorkspacesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkspacesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListWorkspacesShrinkRequest = ListWorkspacesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.workspaceNameList)) {
            request.workspaceNameListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.workspaceNameList, "workspaceNameList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceName)) {
            query["workspaceName"] = request.workspaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceNameListShrink)) {
            query["workspaceNameList"] = request.workspaceNameListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkspaces",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkspacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaces(_ request: ListWorkspacesRequest) async throws -> ListWorkspacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkspacesWithOptions(request as! ListWorkspacesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putWorkspaceWithOptions(_ workspaceName: String, _ request: PutWorkspaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PutWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsProject)) {
            body["slsProject"] = request.slsProject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutWorkspace",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceName)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putWorkspace(_ workspaceName: String, _ request: PutWorkspaceRequest) async throws -> PutWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await putWorkspaceWithOptions(workspaceName as! String, request as! PutWorkspaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAddonReleaseWithOptions(_ releaseName: String, _ policyId: String, _ request: UpdateAddonReleaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAddonReleaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addonVersion)) {
            body["addonVersion"] = request.addonVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            body["dryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.entityRules)) {
            body["entityRules"] = request.entityRules!;
        }
        if (!TeaUtils.Client.isUnset(request.values)) {
            body["values"] = request.values ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAddonRelease",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)) + "/addon-releases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAddonReleaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAddonRelease(_ releaseName: String, _ policyId: String, _ request: UpdateAddonReleaseRequest) async throws -> UpdateAddonReleaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAddonReleaseWithOptions(releaseName as! String, policyId as! String, request as! UpdateAddonReleaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggTaskGroupWithOptions(_ instanceId: String, _ groupId: String, _ request: UpdateAggTaskGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAggTaskGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggTaskGroupConfig)) {
            body["aggTaskGroupConfig"] = request.aggTaskGroupConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aggTaskGroupConfigType)) {
            body["aggTaskGroupConfigType"] = request.aggTaskGroupConfigType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aggTaskGroupName)) {
            body["aggTaskGroupName"] = request.aggTaskGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cronExpr)) {
            body["cronExpr"] = request.cronExpr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delay)) {
            body["delay"] = request.delay!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromTime)) {
            body["fromTime"] = request.fromTime!;
        }
        if (!TeaUtils.Client.isUnset(request.maxRetries)) {
            body["maxRetries"] = request.maxRetries!;
        }
        if (!TeaUtils.Client.isUnset(request.maxRunTimeInSeconds)) {
            body["maxRunTimeInSeconds"] = request.maxRunTimeInSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.precheckString)) {
            body["precheckString"] = request.precheckString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleMode)) {
            body["scheduleMode"] = request.scheduleMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTimeExpr)) {
            body["scheduleTimeExpr"] = request.scheduleTimeExpr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.targetPrometheusId)) {
            body["targetPrometheusId"] = request.targetPrometheusId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toTime)) {
            body["toTime"] = request.toTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAggTaskGroup",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/agg-task-groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAggTaskGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggTaskGroup(_ instanceId: String, _ groupId: String, _ request: UpdateAggTaskGroupRequest) async throws -> UpdateAggTaskGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAggTaskGroupWithOptions(instanceId as! String, groupId as! String, request as! UpdateAggTaskGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggTaskGroupStatusWithOptions(_ instanceId: String, _ groupId: String, _ request: UpdateAggTaskGroupStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAggTaskGroupStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAggTaskGroupStatus",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/agg-task-groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/status",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAggTaskGroupStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggTaskGroupStatus(_ instanceId: String, _ groupId: String, _ request: UpdateAggTaskGroupStatusRequest) async throws -> UpdateAggTaskGroupStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAggTaskGroupStatusWithOptions(instanceId as! String, groupId as! String, request as! UpdateAggTaskGroupStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBizTraceWithOptions(_ bizTraceId: String, _ request: UpdateBizTraceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateBizTraceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.advancedConfig)) {
            body["advancedConfig"] = request.advancedConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizTraceName)) {
            body["bizTraceName"] = request.bizTraceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleConfig)) {
            body["ruleConfig"] = request.ruleConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            body["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateBizTrace",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/bizTrace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(bizTraceId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateBizTraceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBizTrace(_ bizTraceId: String, _ request: UpdateBizTraceRequest) async throws -> UpdateBizTraceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateBizTraceWithOptions(bizTraceId as! String, request as! UpdateBizTraceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIntegrationPolicyWithOptions(_ integrationPolicyId: String, _ request: UpdateIntegrationPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIntegrationPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.feePackage)) {
            body["feePackage"] = request.feePackage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            body["policyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIntegrationPolicy",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/integration-policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(integrationPolicyId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIntegrationPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIntegrationPolicy(_ integrationPolicyId: String, _ request: UpdateIntegrationPolicyRequest) async throws -> UpdateIntegrationPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateIntegrationPolicyWithOptions(integrationPolicyId as! String, request as! UpdateIntegrationPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNotifyStrategyWithOptions(_ notifyStrategyId: String, _ request: UpdateNotifyStrategyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNotifyStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            query["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNotifyStrategy",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/notifyStrategies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(notifyStrategyId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNotifyStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNotifyStrategy(_ notifyStrategyId: String, _ request: UpdateNotifyStrategyRequest) async throws -> UpdateNotifyStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateNotifyStrategyWithOptions(notifyStrategyId as! String, request as! UpdateNotifyStrategyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrometheusInstanceWithOptions(_ prometheusInstanceId: String, _ request: UpdatePrometheusInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePrometheusInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.archiveDuration)) {
            body["archiveDuration"] = request.archiveDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.authFreeReadPolicy)) {
            body["authFreeReadPolicy"] = request.authFreeReadPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authFreeWritePolicy)) {
            body["authFreeWritePolicy"] = request.authFreeWritePolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAuthFreeRead)) {
            body["enableAuthFreeRead"] = request.enableAuthFreeRead!;
        }
        if (!TeaUtils.Client.isUnset(request.enableAuthFreeWrite)) {
            body["enableAuthFreeWrite"] = request.enableAuthFreeWrite!;
        }
        if (!TeaUtils.Client.isUnset(request.enableAuthToken)) {
            body["enableAuthToken"] = request.enableAuthToken!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            body["paymentType"] = request.paymentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prometheusInstanceName)) {
            body["prometheusInstanceName"] = request.prometheusInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageDuration)) {
            body["storageDuration"] = request.storageDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            body["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePrometheusInstance",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(prometheusInstanceId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePrometheusInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrometheusInstance(_ prometheusInstanceId: String, _ request: UpdatePrometheusInstanceRequest) async throws -> UpdatePrometheusInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePrometheusInstanceWithOptions(prometheusInstanceId as! String, request as! UpdatePrometheusInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrometheusUserSettingWithOptions(_ settingKey: String, _ request: UpdatePrometheusUserSettingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePrometheusUserSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.settingValue)) {
            query["settingValue"] = request.settingValue ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePrometheusUserSetting",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-user-setting/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(settingKey)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePrometheusUserSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrometheusUserSetting(_ settingKey: String, _ request: UpdatePrometheusUserSettingRequest) async throws -> UpdatePrometheusUserSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePrometheusUserSettingWithOptions(settingKey as! String, request as! UpdatePrometheusUserSettingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrometheusViewWithOptions(_ prometheusViewId: String, _ request: UpdatePrometheusViewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePrometheusViewResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authFreeReadPolicy)) {
            body["authFreeReadPolicy"] = request.authFreeReadPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAuthFreeRead)) {
            body["enableAuthFreeRead"] = request.enableAuthFreeRead!;
        }
        if (!TeaUtils.Client.isUnset(request.enableAuthToken)) {
            body["enableAuthToken"] = request.enableAuthToken!;
        }
        if (!TeaUtils.Client.isUnset(request.prometheusInstances)) {
            body["prometheusInstances"] = request.prometheusInstances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.prometheusViewName)) {
            body["prometheusViewName"] = request.prometheusViewName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            body["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePrometheusView",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/prometheus-views/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(prometheusViewId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePrometheusViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrometheusView(_ prometheusViewId: String, _ request: UpdatePrometheusViewRequest) async throws -> UpdatePrometheusViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePrometheusViewWithOptions(prometheusViewId as! String, request as! UpdatePrometheusViewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceWithOptions(_ workspace: String, _ serviceId: String, _ request: UpdateServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributes)) {
            body["attributes"] = request.attributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceStatus)) {
            body["serviceStatus"] = request.serviceStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateService",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/service/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateService(_ workspace: String, _ serviceId: String, _ request: UpdateServiceRequest) async throws -> UpdateServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceWithOptions(workspace as! String, serviceId as! String, request as! UpdateServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSubscriptionWithOptions(_ subscriptionId: String, _ request: UpdateSubscriptionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspace)) {
            query["workspace"] = request.workspace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSubscription",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/subscriptions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(subscriptionId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSubscription(_ subscriptionId: String, _ request: UpdateSubscriptionRequest) async throws -> UpdateSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSubscriptionWithOptions(subscriptionId as! String, request as! UpdateSubscriptionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUmodelWithOptions(_ workspace: String, _ request: UpdateUmodelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUmodelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUmodel",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/umodel",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUmodelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUmodel(_ workspace: String, _ request: UpdateUmodelRequest) async throws -> UpdateUmodelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateUmodelWithOptions(workspace as! String, request as! UpdateUmodelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upsertUmodelCommonSchemaRefWithOptions(_ workspace: String, _ request: UpsertUmodelCommonSchemaRefRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpsertUmodelCommonSchemaRefResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.group)) {
            query["group"] = request.group ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpsertUmodelCommonSchemaRef",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/umodel/common-schema-ref",
            "method": "PATCH",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpsertUmodelCommonSchemaRefResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upsertUmodelCommonSchemaRef(_ workspace: String, _ request: UpsertUmodelCommonSchemaRefRequest) async throws -> UpsertUmodelCommonSchemaRefResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await upsertUmodelCommonSchemaRefWithOptions(workspace as! String, request as! UpsertUmodelCommonSchemaRefRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upsertUmodelDataWithOptions(_ workspace: String, _ request: UpsertUmodelDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpsertUmodelDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.method)) {
            query["method"] = request.method ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.elements)) {
            body["elements"] = request.elements ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpsertUmodelData",
            "version": "2024-03-30",
            "protocol": "HTTPS",
            "pathname": "/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspace)) + "/umodel/data",
            "method": "PATCH",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpsertUmodelDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upsertUmodelData(_ workspace: String, _ request: UpsertUmodelDataRequest) async throws -> UpsertUmodelDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await upsertUmodelDataWithOptions(workspace as! String, request as! UpsertUmodelDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
