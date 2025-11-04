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
        self._endpoint = try getEndpoint("sae", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/changeorder/AbortAndRollbackChangeOrder",
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
        if (!TeaUtils.Client.isUnset(request.rollback)) {
            query["Rollback"] = request.rollback!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AbortChangeOrder",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/changeorder/AbortChangeOrder",
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
    public func batchRestartApplicationsWithOptions(_ request: BatchRestartApplicationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchRestartApplicationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIds)) {
            query["AppIds"] = request.appIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchRestartApplications",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/batchRestartApplications",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchRestartApplicationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchRestartApplications(_ request: BatchRestartApplicationsRequest) async throws -> BatchRestartApplicationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchRestartApplicationsWithOptions(request as! BatchRestartApplicationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchStartApplicationsWithOptions(_ request: BatchStartApplicationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchStartApplicationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIds)) {
            query["AppIds"] = request.appIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["Version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchStartApplications",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/batchStartApplications",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchStartApplicationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchStartApplications(_ request: BatchStartApplicationsRequest) async throws -> BatchStartApplicationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchStartApplicationsWithOptions(request as! BatchStartApplicationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchStopApplicationsWithOptions(_ request: BatchStopApplicationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchStopApplicationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIds)) {
            query["AppIds"] = request.appIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["Version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchStopApplications",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/batchStopApplications",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchStopApplicationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchStopApplications(_ request: BatchStopApplicationsRequest) async throws -> BatchStopApplicationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchStopApplicationsWithOptions(request as! BatchStopApplicationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindNlbWithOptions(_ request: BindNlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BindNlbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressType)) {
            query["AddressType"] = request.addressType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listeners)) {
            query["Listeners"] = request.listeners ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nlbId)) {
            query["NlbId"] = request.nlbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneMappings)) {
            query["ZoneMappings"] = request.zoneMappings ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindNlb",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/nlb",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindNlbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindNlb(_ request: BindNlbRequest) async throws -> BindNlbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await bindNlbWithOptions(request as! BindNlbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindSlbWithOptions(_ request: BindSlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BindSlbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internet)) {
            query["Internet"] = request.internet ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetSlbChargeType)) {
            query["InternetSlbChargeType"] = request.internetSlbChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetSlbId)) {
            query["InternetSlbId"] = request.internetSlbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intranet)) {
            query["Intranet"] = request.intranet ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intranetSlbChargeType)) {
            query["IntranetSlbChargeType"] = request.intranetSlbChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intranetSlbId)) {
            query["IntranetSlbId"] = request.intranetSlbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindSlb",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/slb",
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
    public func confirmPipelineBatchWithOptions(_ request: ConfirmPipelineBatchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmPipelineBatchResponse {
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
            "action": "ConfirmPipelineBatch",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/changeorder/ConfirmPipelineBatch",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmPipelineBatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmPipelineBatch(_ request: ConfirmPipelineBatchRequest) async throws -> ConfirmPipelineBatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await confirmPipelineBatchWithOptions(request as! ConfirmPipelineBatchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplicationWithOptions(_ tmpReq: CreateApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApplicationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateApplicationShrinkRequest = CreateApplicationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.initContainersConfig)) {
            request.initContainersConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.initContainersConfig, "InitContainersConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sidecarContainersConfig)) {
            request.sidecarContainersConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sidecarContainersConfig, "SidecarContainersConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrAssumeRoleArn)) {
            query["AcrAssumeRoleArn"] = request.acrAssumeRoleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentVersion)) {
            query["AgentVersion"] = request.agentVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appDescription)) {
            query["AppDescription"] = request.appDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appSource)) {
            query["AppSource"] = request.appSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoConfig)) {
            query["AutoConfig"] = request.autoConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.command)) {
            query["Command"] = request.command ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commandArgs)) {
            query["CommandArgs"] = request.commandArgs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            query["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.customHostAlias)) {
            query["CustomHostAlias"] = request.customHostAlias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customImageNetworkType)) {
            query["CustomImageNetworkType"] = request.customImageNetworkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deploy)) {
            query["Deploy"] = request.deploy!;
        }
        if (!TeaUtils.Client.isUnset(request.diskSize)) {
            query["DiskSize"] = request.diskSize!;
        }
        if (!TeaUtils.Client.isUnset(request.dotnet)) {
            query["Dotnet"] = request.dotnet ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.edasContainerVersion)) {
            query["EdasContainerVersion"] = request.edasContainerVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableCpuBurst)) {
            query["EnableCpuBurst"] = request.enableCpuBurst!;
        }
        if (!TeaUtils.Client.isUnset(request.enableEbpf)) {
            query["EnableEbpf"] = request.enableEbpf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableNamespaceAgentVersion)) {
            query["EnableNamespaceAgentVersion"] = request.enableNamespaceAgentVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.enableNamespaceSlsConfig)) {
            query["EnableNamespaceSlsConfig"] = request.enableNamespaceSlsConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.enableNewArms)) {
            query["EnableNewArms"] = request.enableNewArms!;
        }
        if (!TeaUtils.Client.isUnset(request.enablePrometheus)) {
            query["EnablePrometheus"] = request.enablePrometheus!;
        }
        if (!TeaUtils.Client.isUnset(request.envs)) {
            query["Envs"] = request.envs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gpuConfig)) {
            query["GpuConfig"] = request.gpuConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.headlessPvtzDiscoverySvc)) {
            query["HeadlessPvtzDiscoverySvc"] = request.headlessPvtzDiscoverySvc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.html)) {
            query["Html"] = request.html ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imagePullSecrets)) {
            query["ImagePullSecrets"] = request.imagePullSecrets ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isStateful)) {
            query["IsStateful"] = request.isStateful!;
        }
        if (!TeaUtils.Client.isUnset(request.jarStartArgs)) {
            query["JarStartArgs"] = request.jarStartArgs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jarStartOptions)) {
            query["JarStartOptions"] = request.jarStartOptions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jdk)) {
            query["Jdk"] = request.jdk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kafkaConfigs)) {
            query["KafkaConfigs"] = request.kafkaConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.liveness)) {
            query["Liveness"] = request.liveness ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            query["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.microRegistration)) {
            query["MicroRegistration"] = request.microRegistration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.microserviceEngineConfig)) {
            query["MicroserviceEngineConfig"] = request.microserviceEngineConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountDesc)) {
            query["MountDesc"] = request.mountDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountHost)) {
            query["MountHost"] = request.mountHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nasConfigs)) {
            query["NasConfigs"] = request.nasConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nasId)) {
            query["NasId"] = request.nasId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newSaeVersion)) {
            query["NewSaeVersion"] = request.newSaeVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oidcRoleName)) {
            query["OidcRoleName"] = request.oidcRoleName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.phpArmsConfigLocation)) {
            query["PhpArmsConfigLocation"] = request.phpArmsConfigLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phpConfigLocation)) {
            query["PhpConfigLocation"] = request.phpConfigLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postStart)) {
            query["PostStart"] = request.postStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preStop)) {
            query["PreStop"] = request.preStop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.programmingLanguage)) {
            query["ProgrammingLanguage"] = request.programmingLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pvtzDiscoverySvc)) {
            query["PvtzDiscoverySvc"] = request.pvtzDiscoverySvc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.python)) {
            query["Python"] = request.python ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pythonModules)) {
            query["PythonModules"] = request.pythonModules ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readiness)) {
            query["Readiness"] = request.readiness ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            query["Replicas"] = request.replicas!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saeVersion)) {
            query["SaeVersion"] = request.saeVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretMountDesc)) {
            query["SecretMountDesc"] = request.secretMountDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsConfigs)) {
            query["SlsConfigs"] = request.slsConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startupProbe)) {
            query["StartupProbe"] = request.startupProbe ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminationGracePeriodSeconds)) {
            query["TerminationGracePeriodSeconds"] = request.terminationGracePeriodSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.timezone)) {
            query["Timezone"] = request.timezone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tomcatConfig)) {
            query["TomcatConfig"] = request.tomcatConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warStartOptions)) {
            query["WarStartOptions"] = request.warStartOptions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webContainer)) {
            query["WebContainer"] = request.webContainer ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrInstanceId)) {
            body["AcrInstanceId"] = request.acrInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.associateEip)) {
            body["AssociateEip"] = request.associateEip!;
        }
        if (!TeaUtils.Client.isUnset(request.baseAppId)) {
            body["BaseAppId"] = request.baseAppId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configMapMountDesc)) {
            body["ConfigMapMountDesc"] = request.configMapMountDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emptyDirDesc)) {
            body["EmptyDirDesc"] = request.emptyDirDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSidecarResourceIsolated)) {
            body["EnableSidecarResourceIsolated"] = request.enableSidecarResourceIsolated!;
        }
        if (!TeaUtils.Client.isUnset(request.initContainersConfigShrink)) {
            body["InitContainersConfig"] = request.initContainersConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.microRegistrationConfig)) {
            body["MicroRegistrationConfig"] = request.microRegistrationConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossAkId)) {
            body["OssAkId"] = request.ossAkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossAkSecret)) {
            body["OssAkSecret"] = request.ossAkSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossMountDescs)) {
            body["OssMountDescs"] = request.ossMountDescs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.php)) {
            body["Php"] = request.php ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phpConfig)) {
            body["PhpConfig"] = request.phpConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceTags)) {
            body["ServiceTags"] = request.serviceTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarContainersConfigShrink)) {
            body["SidecarContainersConfig"] = request.sidecarContainersConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/createApplication",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplication(_ request: CreateApplicationRequest) async throws -> CreateApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createApplicationWithOptions(request as! CreateApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplicationScalingRuleWithOptions(_ request: CreateApplicationScalingRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApplicationScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableIdle)) {
            query["EnableIdle"] = request.enableIdle!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstanceRatio)) {
            query["MinReadyInstanceRatio"] = request.minReadyInstanceRatio!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstances)) {
            query["MinReadyInstances"] = request.minReadyInstances!;
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
        if (!TeaUtils.Client.isUnset(request.scalingRuleType)) {
            query["ScalingRuleType"] = request.scalingRuleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApplicationScalingRule",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/scale/applicationScalingRule",
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
    public func createConfigMapWithOptions(_ request: CreateConfigMapRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConfigMapResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConfigMap",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/configmap/configMap",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConfigMapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConfigMap(_ request: CreateConfigMapRequest) async throws -> CreateConfigMapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createConfigMapWithOptions(request as! CreateConfigMapRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGreyTagRouteWithOptions(_ request: CreateGreyTagRouteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGreyTagRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.albRules)) {
            query["AlbRules"] = request.albRules ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dubboRules)) {
            query["DubboRules"] = request.dubboRules ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scRules)) {
            query["ScRules"] = request.scRules ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGreyTagRoute",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/tagroute/greyTagRoute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGreyTagRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGreyTagRoute(_ request: CreateGreyTagRouteRequest) async throws -> CreateGreyTagRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createGreyTagRouteWithOptions(request as! CreateGreyTagRouteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIngressWithOptions(_ request: CreateIngressRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIngressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressType)) {
            query["AddressType"] = request.addressType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certId)) {
            query["CertId"] = request.certId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certIds)) {
            query["CertIds"] = request.certIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corsConfig)) {
            query["CorsConfig"] = request.corsConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultRule)) {
            query["DefaultRule"] = request.defaultRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableGzip)) {
            query["EnableGzip"] = request.enableGzip!;
        }
        if (!TeaUtils.Client.isUnset(request.enableXForwardedFor)) {
            query["EnableXForwardedFor"] = request.enableXForwardedFor!;
        }
        if (!TeaUtils.Client.isUnset(request.enableXForwardedForClientSrcPort)) {
            query["EnableXForwardedForClientSrcPort"] = request.enableXForwardedForClientSrcPort!;
        }
        if (!TeaUtils.Client.isUnset(request.enableXForwardedForProto)) {
            query["EnableXForwardedForProto"] = request.enableXForwardedForProto!;
        }
        if (!TeaUtils.Client.isUnset(request.enableXForwardedForSlbId)) {
            query["EnableXForwardedForSlbId"] = request.enableXForwardedForSlbId!;
        }
        if (!TeaUtils.Client.isUnset(request.enableXForwardedForSlbPort)) {
            query["EnableXForwardedForSlbPort"] = request.enableXForwardedForSlbPort!;
        }
        if (!TeaUtils.Client.isUnset(request.idleTimeout)) {
            query["IdleTimeout"] = request.idleTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerProtocol)) {
            query["ListenerProtocol"] = request.listenerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalanceType)) {
            query["LoadBalanceType"] = request.loadBalanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerEdition)) {
            query["LoadBalancerEdition"] = request.loadBalancerEdition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestTimeout)) {
            query["RequestTimeout"] = request.requestTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.securityPolicyId)) {
            query["SecurityPolicyId"] = request.securityPolicyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slbId)) {
            query["SlbId"] = request.slbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneMappings)) {
            query["ZoneMappings"] = request.zoneMappings ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rules)) {
            body["Rules"] = request.rules ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIngress",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/ingress/Ingress",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIngressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIngress(_ request: CreateIngressRequest) async throws -> CreateIngressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createIngressWithOptions(request as! CreateIngressRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createJobWithOptions(_ request: CreateJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrAssumeRoleArn)) {
            query["AcrAssumeRoleArn"] = request.acrAssumeRoleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appDescription)) {
            query["AppDescription"] = request.appDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoConfig)) {
            query["AutoConfig"] = request.autoConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.backoffLimit)) {
            query["BackoffLimit"] = request.backoffLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.bestEffortType)) {
            query["BestEffortType"] = request.bestEffortType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.command)) {
            query["Command"] = request.command ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commandArgs)) {
            query["CommandArgs"] = request.commandArgs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.concurrencyPolicy)) {
            query["ConcurrencyPolicy"] = request.concurrencyPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            query["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.customHostAlias)) {
            query["CustomHostAlias"] = request.customHostAlias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.edasContainerVersion)) {
            query["EdasContainerVersion"] = request.edasContainerVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envs)) {
            query["Envs"] = request.envs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imagePullSecrets)) {
            query["ImagePullSecrets"] = request.imagePullSecrets ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jarStartArgs)) {
            query["JarStartArgs"] = request.jarStartArgs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jarStartOptions)) {
            query["JarStartOptions"] = request.jarStartOptions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jdk)) {
            query["Jdk"] = request.jdk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            query["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.mountDesc)) {
            query["MountDesc"] = request.mountDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountHost)) {
            query["MountHost"] = request.mountHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nasConfigs)) {
            query["NasConfigs"] = request.nasConfigs ?? "";
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
        if (!TeaUtils.Client.isUnset(request.phpConfigLocation)) {
            query["PhpConfigLocation"] = request.phpConfigLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postStart)) {
            query["PostStart"] = request.postStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preStop)) {
            query["PreStop"] = request.preStop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.programmingLanguage)) {
            query["ProgrammingLanguage"] = request.programmingLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.python)) {
            query["Python"] = request.python ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pythonModules)) {
            query["PythonModules"] = request.pythonModules ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refAppId)) {
            query["RefAppId"] = request.refAppId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            query["Replicas"] = request.replicas!;
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slice)) {
            query["Slice"] = request.slice!;
        }
        if (!TeaUtils.Client.isUnset(request.sliceEnvs)) {
            query["SliceEnvs"] = request.sliceEnvs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsConfigs)) {
            query["SlsConfigs"] = request.slsConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminationGracePeriodSeconds)) {
            query["TerminationGracePeriodSeconds"] = request.terminationGracePeriodSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.timezone)) {
            query["Timezone"] = request.timezone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tomcatConfig)) {
            query["TomcatConfig"] = request.tomcatConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerConfig)) {
            query["TriggerConfig"] = request.triggerConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warStartOptions)) {
            query["WarStartOptions"] = request.warStartOptions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webContainer)) {
            query["WebContainer"] = request.webContainer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workload)) {
            query["Workload"] = request.workload ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrInstanceId)) {
            body["AcrInstanceId"] = request.acrInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configMapMountDesc)) {
            body["ConfigMapMountDesc"] = request.configMapMountDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableImageAccl)) {
            body["EnableImageAccl"] = request.enableImageAccl!;
        }
        if (!TeaUtils.Client.isUnset(request.ossAkId)) {
            body["OssAkId"] = request.ossAkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossAkSecret)) {
            body["OssAkSecret"] = request.ossAkSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossMountDescs)) {
            body["OssMountDescs"] = request.ossMountDescs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phpConfig)) {
            body["PhpConfig"] = request.phpConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateJob",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/job/createJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createJob(_ request: CreateJobRequest) async throws -> CreateJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createJobWithOptions(request as! CreateJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNamespaceWithOptions(_ request: CreateNamespaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableMicroRegistration)) {
            query["EnableMicroRegistration"] = request.enableMicroRegistration!;
        }
        if (!TeaUtils.Client.isUnset(request.nameSpaceShortId)) {
            query["NameSpaceShortId"] = request.nameSpaceShortId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceDescription)) {
            query["NamespaceDescription"] = request.namespaceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNamespace",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/paas/namespace",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNamespace(_ request: CreateNamespaceRequest) async throws -> CreateNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createNamespaceWithOptions(request as! CreateNamespaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrUpdateSwimmingLaneWithOptions(_ tmpReq: CreateOrUpdateSwimmingLaneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrUpdateSwimmingLaneResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateOrUpdateSwimmingLaneShrinkRequest = CreateOrUpdateSwimmingLaneShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.appEntryRule)) {
            request.appEntryRuleShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.appEntryRule, "AppEntryRule", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.mseGatewayEntryRule)) {
            request.mseGatewayEntryRuleShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.mseGatewayEntryRule, "MseGatewayEntryRule", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appEntryRuleShrink)) {
            query["AppEntryRule"] = request.appEntryRuleShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.canaryModel)) {
            query["CanaryModel"] = request.canaryModel!;
        }
        if (!TeaUtils.Client.isUnset(request.enable)) {
            query["Enable"] = request.enable!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.laneId)) {
            query["LaneId"] = request.laneId!;
        }
        if (!TeaUtils.Client.isUnset(request.laneName)) {
            query["LaneName"] = request.laneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.laneTag)) {
            query["LaneTag"] = request.laneTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mseGatewayEntryRuleShrink)) {
            query["MseGatewayEntryRule"] = request.mseGatewayEntryRuleShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOrUpdateSwimmingLane",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/cas/gray/createOrUpdateSwimmingLane",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOrUpdateSwimmingLaneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrUpdateSwimmingLane(_ request: CreateOrUpdateSwimmingLaneRequest) async throws -> CreateOrUpdateSwimmingLaneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createOrUpdateSwimmingLaneWithOptions(request as! CreateOrUpdateSwimmingLaneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrUpdateSwimmingLaneGroupWithOptions(_ tmpReq: CreateOrUpdateSwimmingLaneGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrUpdateSwimmingLaneGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateOrUpdateSwimmingLaneGroupShrinkRequest = CreateOrUpdateSwimmingLaneGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.appIds)) {
            request.appIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.appIds, "AppIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIdsShrink)) {
            query["AppIds"] = request.appIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entryAppId)) {
            query["EntryAppId"] = request.entryAppId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entryAppType)) {
            query["EntryAppType"] = request.entryAppType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.swimVersion)) {
            query["SwimVersion"] = request.swimVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOrUpdateSwimmingLaneGroup",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/cas/gray/createOrUpdateSwimmingLaneGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOrUpdateSwimmingLaneGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrUpdateSwimmingLaneGroup(_ request: CreateOrUpdateSwimmingLaneGroupRequest) async throws -> CreateOrUpdateSwimmingLaneGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createOrUpdateSwimmingLaneGroupWithOptions(request as! CreateOrUpdateSwimmingLaneGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSecretWithOptions(_ tmpReq: CreateSecretRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSecretResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSecretShrinkRequest = CreateSecretShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.secretData)) {
            request.secretDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.secretData, "SecretData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretDataShrink)) {
            query["SecretData"] = request.secretDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretName)) {
            query["SecretName"] = request.secretName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretType)) {
            query["SecretType"] = request.secretType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSecret",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/secret/secret",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSecretResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSecret(_ request: CreateSecretRequest) async throws -> CreateSecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSecretWithOptions(request as! CreateSecretRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWebApplicationWithOptions(_ request: CreateWebApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWebApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWebApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/applications",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWebApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWebApplication(_ request: CreateWebApplicationRequest) async throws -> CreateWebApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWebApplicationWithOptions(request as! CreateWebApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWebCustomDomainWithOptions(_ request: CreateWebCustomDomainRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWebCustomDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWebCustomDomain",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/custom-domains",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWebCustomDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWebCustomDomain(_ request: CreateWebCustomDomainRequest) async throws -> CreateWebCustomDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWebCustomDomainWithOptions(request as! CreateWebCustomDomainRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/deleteApplication",
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
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/scale/applicationScalingRule",
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
    public func deleteConfigMapWithOptions(_ request: DeleteConfigMapRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConfigMapResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configMapId)) {
            query["ConfigMapId"] = request.configMapId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConfigMap",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/configmap/configMap",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConfigMapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConfigMap(_ request: DeleteConfigMapRequest) async throws -> DeleteConfigMapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteConfigMapWithOptions(request as! DeleteConfigMapRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGreyTagRouteWithOptions(_ request: DeleteGreyTagRouteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGreyTagRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.greyTagRouteId)) {
            query["GreyTagRouteId"] = request.greyTagRouteId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGreyTagRoute",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/tagroute/greyTagRoute",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGreyTagRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGreyTagRoute(_ request: DeleteGreyTagRouteRequest) async throws -> DeleteGreyTagRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteGreyTagRouteWithOptions(request as! DeleteGreyTagRouteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHistoryJobWithOptions(_ request: DeleteHistoryJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHistoryJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHistoryJob",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/job/deleteHistoryJob",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHistoryJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHistoryJob(_ request: DeleteHistoryJobRequest) async throws -> DeleteHistoryJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteHistoryJobWithOptions(request as! DeleteHistoryJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIngressWithOptions(_ request: DeleteIngressRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIngressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ingressId)) {
            query["IngressId"] = request.ingressId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIngress",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/ingress/Ingress",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIngressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIngress(_ request: DeleteIngressRequest) async throws -> DeleteIngressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteIngressWithOptions(request as! DeleteIngressRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstancesWithOptions(_ request: DeleteInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInstances",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/deleteInstances",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstances(_ request: DeleteInstancesRequest) async throws -> DeleteInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteInstancesWithOptions(request as! DeleteInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteJobWithOptions(_ request: DeleteJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteJobResponse {
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
            "action": "DeleteJob",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/job/deleteJob",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteJob(_ request: DeleteJobRequest) async throws -> DeleteJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteJobWithOptions(request as! DeleteJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNamespaceWithOptions(_ request: DeleteNamespaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nameSpaceShortId)) {
            query["NameSpaceShortId"] = request.nameSpaceShortId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNamespace",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/paas/namespace",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNamespace(_ request: DeleteNamespaceRequest) async throws -> DeleteNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteNamespaceWithOptions(request as! DeleteNamespaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecretWithOptions(_ request: DeleteSecretRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSecretResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretId)) {
            query["SecretId"] = request.secretId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSecret",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/secret/secret",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSecretResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecret(_ request: DeleteSecretRequest) async throws -> DeleteSecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSecretWithOptions(request as! DeleteSecretRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSwimmingLaneGroupWithOptions(_ request: DeleteSwimmingLaneGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSwimmingLaneGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSwimmingLaneGroup",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/cas/gray/deleteSwimmingLaneGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSwimmingLaneGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSwimmingLaneGroup(_ request: DeleteSwimmingLaneGroupRequest) async throws -> DeleteSwimmingLaneGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSwimmingLaneGroupWithOptions(request as! DeleteSwimmingLaneGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWebApplicationWithOptions(_ ApplicationId: String, _ request: DeleteWebApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWebApplicationResponse {
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
            "action": "DeleteWebApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/applications/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWebApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWebApplication(_ ApplicationId: String, _ request: DeleteWebApplicationRequest) async throws -> DeleteWebApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteWebApplicationWithOptions(ApplicationId as! String, request as! DeleteWebApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWebApplicationRevisionWithOptions(_ ApplicationId: String, _ RevisionId: String, _ request: DeleteWebApplicationRevisionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWebApplicationRevisionResponse {
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
            "action": "DeleteWebApplicationRevision",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/application-revisions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)) + "/revisions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RevisionId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWebApplicationRevisionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWebApplicationRevision(_ ApplicationId: String, _ RevisionId: String, _ request: DeleteWebApplicationRevisionRequest) async throws -> DeleteWebApplicationRevisionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteWebApplicationRevisionWithOptions(ApplicationId as! String, RevisionId as! String, request as! DeleteWebApplicationRevisionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWebCustomDomainWithOptions(_ DomainName: String, _ request: DeleteWebCustomDomainRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWebCustomDomainResponse {
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
            "action": "DeleteWebCustomDomain",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/custom-domains/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DomainName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWebCustomDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWebCustomDomain(_ DomainName: String, _ request: DeleteWebCustomDomainRequest) async throws -> DeleteWebCustomDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteWebCustomDomainWithOptions(DomainName as! String, request as! DeleteWebCustomDomainRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployApplicationWithOptions(_ tmpReq: DeployApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployApplicationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeployApplicationShrinkRequest = DeployApplicationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.initContainersConfig)) {
            request.initContainersConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.initContainersConfig, "InitContainersConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sidecarContainersConfig)) {
            request.sidecarContainersConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sidecarContainersConfig, "SidecarContainersConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrAssumeRoleArn)) {
            query["AcrAssumeRoleArn"] = request.acrAssumeRoleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentVersion)) {
            query["AgentVersion"] = request.agentVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.albIngressReadinessGate)) {
            query["AlbIngressReadinessGate"] = request.albIngressReadinessGate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoEnableApplicationScalingRule)) {
            query["AutoEnableApplicationScalingRule"] = request.autoEnableApplicationScalingRule!;
        }
        if (!TeaUtils.Client.isUnset(request.batchWaitTime)) {
            query["BatchWaitTime"] = request.batchWaitTime!;
        }
        if (!TeaUtils.Client.isUnset(request.changeOrderDesc)) {
            query["ChangeOrderDesc"] = request.changeOrderDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.command)) {
            query["Command"] = request.command ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commandArgs)) {
            query["CommandArgs"] = request.commandArgs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            query["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.customHostAlias)) {
            query["CustomHostAlias"] = request.customHostAlias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customImageNetworkType)) {
            query["CustomImageNetworkType"] = request.customImageNetworkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deploy)) {
            query["Deploy"] = request.deploy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dotnet)) {
            query["Dotnet"] = request.dotnet ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.edasContainerVersion)) {
            query["EdasContainerVersion"] = request.edasContainerVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAhas)) {
            query["EnableAhas"] = request.enableAhas ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableCpuBurst)) {
            query["EnableCpuBurst"] = request.enableCpuBurst!;
        }
        if (!TeaUtils.Client.isUnset(request.enableGreyTagRoute)) {
            query["EnableGreyTagRoute"] = request.enableGreyTagRoute!;
        }
        if (!TeaUtils.Client.isUnset(request.enableNamespaceAgentVersion)) {
            query["EnableNamespaceAgentVersion"] = request.enableNamespaceAgentVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.enableNewArms)) {
            query["EnableNewArms"] = request.enableNewArms!;
        }
        if (!TeaUtils.Client.isUnset(request.enablePrometheus)) {
            query["EnablePrometheus"] = request.enablePrometheus!;
        }
        if (!TeaUtils.Client.isUnset(request.envs)) {
            query["Envs"] = request.envs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gpuConfig)) {
            query["GpuConfig"] = request.gpuConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.html)) {
            query["Html"] = request.html ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imagePullSecrets)) {
            query["ImagePullSecrets"] = request.imagePullSecrets ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jarStartArgs)) {
            query["JarStartArgs"] = request.jarStartArgs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jarStartOptions)) {
            query["JarStartOptions"] = request.jarStartOptions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jdk)) {
            query["Jdk"] = request.jdk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kafkaConfigs)) {
            query["KafkaConfigs"] = request.kafkaConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.liveness)) {
            query["Liveness"] = request.liveness ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxSurgeInstanceRatio)) {
            query["MaxSurgeInstanceRatio"] = request.maxSurgeInstanceRatio!;
        }
        if (!TeaUtils.Client.isUnset(request.maxSurgeInstances)) {
            query["MaxSurgeInstances"] = request.maxSurgeInstances!;
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            query["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.microRegistration)) {
            query["MicroRegistration"] = request.microRegistration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.microserviceEngineConfig)) {
            query["MicroserviceEngineConfig"] = request.microserviceEngineConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstanceRatio)) {
            query["MinReadyInstanceRatio"] = request.minReadyInstanceRatio!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstances)) {
            query["MinReadyInstances"] = request.minReadyInstances!;
        }
        if (!TeaUtils.Client.isUnset(request.mountDesc)) {
            query["MountDesc"] = request.mountDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountHost)) {
            query["MountHost"] = request.mountHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nasConfigs)) {
            query["NasConfigs"] = request.nasConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nasId)) {
            query["NasId"] = request.nasId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newSaeVersion)) {
            query["NewSaeVersion"] = request.newSaeVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oidcRoleName)) {
            query["OidcRoleName"] = request.oidcRoleName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.phpArmsConfigLocation)) {
            query["PhpArmsConfigLocation"] = request.phpArmsConfigLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phpConfigLocation)) {
            query["PhpConfigLocation"] = request.phpConfigLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postStart)) {
            query["PostStart"] = request.postStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preStop)) {
            query["PreStop"] = request.preStop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pvtzDiscoverySvc)) {
            query["PvtzDiscoverySvc"] = request.pvtzDiscoverySvc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.python)) {
            query["Python"] = request.python ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pythonModules)) {
            query["PythonModules"] = request.pythonModules ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readiness)) {
            query["Readiness"] = request.readiness ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            query["Replicas"] = request.replicas!;
        }
        if (!TeaUtils.Client.isUnset(request.secretMountDesc)) {
            query["SecretMountDesc"] = request.secretMountDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsConfigs)) {
            query["SlsConfigs"] = request.slsConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startupProbe)) {
            query["StartupProbe"] = request.startupProbe ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminationGracePeriodSeconds)) {
            query["TerminationGracePeriodSeconds"] = request.terminationGracePeriodSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.timezone)) {
            query["Timezone"] = request.timezone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tomcatConfig)) {
            query["TomcatConfig"] = request.tomcatConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStrategy)) {
            query["UpdateStrategy"] = request.updateStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warStartOptions)) {
            query["WarStartOptions"] = request.warStartOptions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webContainer)) {
            query["WebContainer"] = request.webContainer ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrInstanceId)) {
            body["AcrInstanceId"] = request.acrInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.associateEip)) {
            body["AssociateEip"] = request.associateEip!;
        }
        if (!TeaUtils.Client.isUnset(request.configMapMountDesc)) {
            body["ConfigMapMountDesc"] = request.configMapMountDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emptyDirDesc)) {
            body["EmptyDirDesc"] = request.emptyDirDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSidecarResourceIsolated)) {
            body["EnableSidecarResourceIsolated"] = request.enableSidecarResourceIsolated!;
        }
        if (!TeaUtils.Client.isUnset(request.initContainersConfigShrink)) {
            body["InitContainersConfig"] = request.initContainersConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.microRegistrationConfig)) {
            body["MicroRegistrationConfig"] = request.microRegistrationConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossAkId)) {
            body["OssAkId"] = request.ossAkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossAkSecret)) {
            body["OssAkSecret"] = request.ossAkSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossMountDescs)) {
            body["OssMountDescs"] = request.ossMountDescs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.php)) {
            body["Php"] = request.php ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phpConfig)) {
            body["PhpConfig"] = request.phpConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceTags)) {
            body["ServiceTags"] = request.serviceTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarContainersConfigShrink)) {
            body["SidecarContainersConfig"] = request.sidecarContainersConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.swimlanePvtzDiscoverySvc)) {
            body["SwimlanePvtzDiscoverySvc"] = request.swimlanePvtzDiscoverySvc ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeployApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/deployApplication",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
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
    public func describeAppServiceDetailWithOptions(_ request: DescribeAppServiceDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppServiceDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nacosInstanceId)) {
            query["NacosInstanceId"] = request.nacosInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nacosNamespaceId)) {
            query["NacosNamespaceId"] = request.nacosNamespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroup)) {
            query["ServiceGroup"] = request.serviceGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["ServiceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceVersion)) {
            query["ServiceVersion"] = request.serviceVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAppServiceDetail",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/service/describeAppServiceDetail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppServiceDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppServiceDetail(_ request: DescribeAppServiceDetailRequest) async throws -> DescribeAppServiceDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeAppServiceDetailWithOptions(request as! DescribeAppServiceDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationConfigWithOptions(_ request: DescribeApplicationConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApplicationConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApplicationConfig",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/describeApplicationConfig",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApplicationConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationConfig(_ request: DescribeApplicationConfigRequest) async throws -> DescribeApplicationConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeApplicationConfigWithOptions(request as! DescribeApplicationConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationGroupsWithOptions(_ request: DescribeApplicationGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApplicationGroupsResponse {
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApplicationGroups",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/describeApplicationGroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApplicationGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationGroups(_ request: DescribeApplicationGroupsRequest) async throws -> DescribeApplicationGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeApplicationGroupsWithOptions(request as! DescribeApplicationGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationImageWithOptions(_ request: DescribeApplicationImageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApplicationImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApplicationImage",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/container/describeApplicationImage",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApplicationImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationImage(_ request: DescribeApplicationImageRequest) async throws -> DescribeApplicationImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeApplicationImageWithOptions(request as! DescribeApplicationImageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationInstancesWithOptions(_ request: DescribeApplicationInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApplicationInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pipelineId)) {
            query["PipelineId"] = request.pipelineId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reverse)) {
            query["Reverse"] = request.reverse!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApplicationInstances",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/describeApplicationInstances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApplicationInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationInstances(_ request: DescribeApplicationInstancesRequest) async throws -> DescribeApplicationInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeApplicationInstancesWithOptions(request as! DescribeApplicationInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationMseServiceWithOptions(_ request: DescribeApplicationMseServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApplicationMseServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAhas)) {
            query["EnableAhas"] = request.enableAhas!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApplicationMseService",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/applicationMseService",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApplicationMseServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationMseService(_ request: DescribeApplicationMseServiceRequest) async throws -> DescribeApplicationMseServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeApplicationMseServiceWithOptions(request as! DescribeApplicationMseServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationNlbsWithOptions(_ request: DescribeApplicationNlbsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApplicationNlbsResponse {
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
            "action": "DescribeApplicationNlbs",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/nlb",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApplicationNlbsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationNlbs(_ request: DescribeApplicationNlbsRequest) async throws -> DescribeApplicationNlbsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeApplicationNlbsWithOptions(request as! DescribeApplicationNlbsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationScalingRuleWithOptions(_ request: DescribeApplicationScalingRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApplicationScalingRuleResponse {
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
            "action": "DescribeApplicationScalingRule",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/scale/applicationScalingRule",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApplicationScalingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationScalingRule(_ request: DescribeApplicationScalingRuleRequest) async throws -> DescribeApplicationScalingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeApplicationScalingRuleWithOptions(request as! DescribeApplicationScalingRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/scale/applicationScalingRules",
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
    public func describeApplicationSlbsWithOptions(_ request: DescribeApplicationSlbsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApplicationSlbsResponse {
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
            "action": "DescribeApplicationSlbs",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/slb",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApplicationSlbsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationSlbs(_ request: DescribeApplicationSlbsRequest) async throws -> DescribeApplicationSlbsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeApplicationSlbsWithOptions(request as! DescribeApplicationSlbsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationStatusWithOptions(_ request: DescribeApplicationStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApplicationStatusResponse {
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
            "action": "DescribeApplicationStatus",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/describeApplicationStatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApplicationStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationStatus(_ request: DescribeApplicationStatusRequest) async throws -> DescribeApplicationStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeApplicationStatusWithOptions(request as! DescribeApplicationStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChangeOrderWithOptions(_ request: DescribeChangeOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeChangeOrderResponse {
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
            "action": "DescribeChangeOrder",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/changeorder/DescribeChangeOrder",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeChangeOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChangeOrder(_ request: DescribeChangeOrderRequest) async throws -> DescribeChangeOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeChangeOrderWithOptions(request as! DescribeChangeOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeComponentsWithOptions(_ request: DescribeComponentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeComponentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeComponents",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/resource/components",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeComponentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeComponents(_ request: DescribeComponentsRequest) async throws -> DescribeComponentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeComponentsWithOptions(request as! DescribeComponentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeConfigMapWithOptions(_ request: DescribeConfigMapRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeConfigMapResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configMapId)) {
            query["ConfigMapId"] = request.configMapId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeConfigMap",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/configmap/configMap",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeConfigMapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeConfigMap(_ request: DescribeConfigMapRequest) async throws -> DescribeConfigMapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeConfigMapWithOptions(request as! DescribeConfigMapRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeConfigurationPriceWithOptions(_ request: DescribeConfigurationPriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeConfigurationPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bestEffortType)) {
            query["BestEffortType"] = request.bestEffortType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            query["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            query["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.newSaeVersion)) {
            query["NewSaeVersion"] = request.newSaeVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workload)) {
            query["Workload"] = request.workload ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeConfigurationPrice",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/paas/configurationPrice",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeConfigurationPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeConfigurationPrice(_ request: DescribeConfigurationPriceRequest) async throws -> DescribeConfigurationPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeConfigurationPriceWithOptions(request as! DescribeConfigurationPriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEdasContainersWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEdasContainersResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEdasContainers",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/resource/edasContainers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEdasContainersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEdasContainers() async throws -> DescribeEdasContainersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeEdasContainersWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGreyTagRouteWithOptions(_ request: DescribeGreyTagRouteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGreyTagRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.greyTagRouteId)) {
            query["GreyTagRouteId"] = request.greyTagRouteId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGreyTagRoute",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/tagroute/greyTagRoute",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGreyTagRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGreyTagRoute(_ request: DescribeGreyTagRouteRequest) async throws -> DescribeGreyTagRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeGreyTagRouteWithOptions(request as! DescribeGreyTagRouteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIngressWithOptions(_ request: DescribeIngressRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIngressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ingressId)) {
            query["IngressId"] = request.ingressId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIngress",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/ingress/Ingress",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIngressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIngress(_ request: DescribeIngressRequest) async throws -> DescribeIngressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeIngressWithOptions(request as! DescribeIngressRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceLogWithOptions(_ request: DescribeInstanceLogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.containerId)) {
            query["ContainerId"] = request.containerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.previous)) {
            query["Previous"] = request.previous ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceLog",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/instance/describeInstanceLog",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceLog(_ request: DescribeInstanceLogRequest) async throws -> DescribeInstanceLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeInstanceLogWithOptions(request as! DescribeInstanceLogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceSpecificationsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceSpecificationsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceSpecifications",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/paas/quota/instanceSpecifications",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceSpecificationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceSpecifications() async throws -> DescribeInstanceSpecificationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeInstanceSpecificationsWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeJobWithOptions(_ request: DescribeJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeJob",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/job/describeJob",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeJob(_ request: DescribeJobRequest) async throws -> DescribeJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeJobWithOptions(request as! DescribeJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeJobHistoryWithOptions(_ request: DescribeJobHistoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeJobHistoryResponse {
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
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeJobHistory",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/job/describeJobHistory",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeJobHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeJobHistory(_ request: DescribeJobHistoryRequest) async throws -> DescribeJobHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeJobHistoryWithOptions(request as! DescribeJobHistoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeJobStatusWithOptions(_ request: DescribeJobStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeJobStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeJobStatus",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/job/describeJobStatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeJobStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeJobStatus(_ request: DescribeJobStatusRequest) async throws -> DescribeJobStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeJobStatusWithOptions(request as! DescribeJobStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNamespaceWithOptions(_ request: DescribeNamespaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nameSpaceShortId)) {
            query["NameSpaceShortId"] = request.nameSpaceShortId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNamespace",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/paas/namespace",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNamespace(_ request: DescribeNamespaceRequest) async throws -> DescribeNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeNamespaceWithOptions(request as! DescribeNamespaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNamespaceListWithOptions(_ request: DescribeNamespaceListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNamespaceListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.containCustom)) {
            query["ContainCustom"] = request.containCustom!;
        }
        if (!TeaUtils.Client.isUnset(request.hybridCloudExclude)) {
            query["HybridCloudExclude"] = request.hybridCloudExclude!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNamespaceList",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/namespace/describeNamespaceList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNamespaceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNamespaceList(_ request: DescribeNamespaceListRequest) async throws -> DescribeNamespaceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeNamespaceListWithOptions(request as! DescribeNamespaceListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNamespaceResourcesWithOptions(_ request: DescribeNamespaceResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNamespaceResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nameSpaceShortId)) {
            query["NameSpaceShortId"] = request.nameSpaceShortId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNamespaceResources",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/namespace/describeNamespaceResources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNamespaceResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNamespaceResources(_ request: DescribeNamespaceResourcesRequest) async throws -> DescribeNamespaceResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeNamespaceResourcesWithOptions(request as! DescribeNamespaceResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNamespacesWithOptions(_ request: DescribeNamespacesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNamespacesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNamespaces",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/paas/namespaces",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNamespacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNamespaces(_ request: DescribeNamespacesRequest) async throws -> DescribeNamespacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeNamespacesWithOptions(request as! DescribeNamespacesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePipelineWithOptions(_ request: DescribePipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pipelineId)) {
            query["PipelineId"] = request.pipelineId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePipeline",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/changeorder/DescribePipeline",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePipeline(_ request: DescribePipelineRequest) async throws -> DescribePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describePipelineWithOptions(request as! DescribePipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/paas/regionConfig",
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
    public func describeRegions() async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeRegionsWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecretWithOptions(_ request: DescribeSecretRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecretResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretId)) {
            query["SecretId"] = request.secretId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecret",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/secret/secret",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecretResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecret(_ request: DescribeSecretRequest) async throws -> DescribeSecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeSecretWithOptions(request as! DescribeSecretRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSwimmingLaneWithOptions(_ request: DescribeSwimmingLaneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSwimmingLaneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.laneId)) {
            query["LaneId"] = request.laneId!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSwimmingLane",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/cas/gray/describeSwimmingLane",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSwimmingLaneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSwimmingLane(_ request: DescribeSwimmingLaneRequest) async throws -> DescribeSwimmingLaneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeSwimmingLaneWithOptions(request as! DescribeSwimmingLaneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebApplicationWithOptions(_ ApplicationId: String, _ request: DescribeWebApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWebApplicationResponse {
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
            "action": "DescribeWebApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/applications/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWebApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebApplication(_ ApplicationId: String, _ request: DescribeWebApplicationRequest) async throws -> DescribeWebApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeWebApplicationWithOptions(ApplicationId as! String, request as! DescribeWebApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebApplicationResourceStaticsWithOptions(_ ApplicationId: String, _ request: DescribeWebApplicationResourceStaticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWebApplicationResourceStaticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeWebApplicationResourceStatics",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/applications-observability/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)) + "/resource",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWebApplicationResourceStaticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebApplicationResourceStatics(_ ApplicationId: String, _ request: DescribeWebApplicationResourceStaticsRequest) async throws -> DescribeWebApplicationResourceStaticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeWebApplicationResourceStaticsWithOptions(ApplicationId as! String, request as! DescribeWebApplicationResourceStaticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebApplicationRevisionWithOptions(_ ApplicationId: String, _ RevisionId: String, _ request: DescribeWebApplicationRevisionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWebApplicationRevisionResponse {
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
            "action": "DescribeWebApplicationRevision",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/application-revisions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)) + "/revisions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RevisionId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWebApplicationRevisionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebApplicationRevision(_ ApplicationId: String, _ RevisionId: String, _ request: DescribeWebApplicationRevisionRequest) async throws -> DescribeWebApplicationRevisionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeWebApplicationRevisionWithOptions(ApplicationId as! String, RevisionId as! String, request as! DescribeWebApplicationRevisionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebApplicationScalingConfigWithOptions(_ ApplicationId: String, _ request: DescribeWebApplicationScalingConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWebApplicationScalingConfigResponse {
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
            "action": "DescribeWebApplicationScalingConfig",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/application-scaling/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWebApplicationScalingConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebApplicationScalingConfig(_ ApplicationId: String, _ request: DescribeWebApplicationScalingConfigRequest) async throws -> DescribeWebApplicationScalingConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeWebApplicationScalingConfigWithOptions(ApplicationId as! String, request as! DescribeWebApplicationScalingConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebApplicationTrafficConfigWithOptions(_ ApplicationId: String, _ request: DescribeWebApplicationTrafficConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWebApplicationTrafficConfigResponse {
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
            "action": "DescribeWebApplicationTrafficConfig",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/application-traffic/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWebApplicationTrafficConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebApplicationTrafficConfig(_ ApplicationId: String, _ request: DescribeWebApplicationTrafficConfigRequest) async throws -> DescribeWebApplicationTrafficConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeWebApplicationTrafficConfigWithOptions(ApplicationId as! String, request as! DescribeWebApplicationTrafficConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebCustomDomainWithOptions(_ DomainName: String, _ request: DescribeWebCustomDomainRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWebCustomDomainResponse {
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
            "action": "DescribeWebCustomDomain",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/custom-domains/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DomainName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWebCustomDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebCustomDomain(_ DomainName: String, _ request: DescribeWebCustomDomainRequest) async throws -> DescribeWebCustomDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeWebCustomDomainWithOptions(DomainName as! String, request as! DescribeWebCustomDomainRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebInstanceLogsWithOptions(_ ApplicationId: String, _ InstanceId: String, _ request: DescribeWebInstanceLogsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWebInstanceLogsResponse {
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
            "action": "DescribeWebInstanceLogs",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/applications-observability/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)) + "/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId)) + "/logs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWebInstanceLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWebInstanceLogs(_ ApplicationId: String, _ InstanceId: String, _ request: DescribeWebInstanceLogsRequest) async throws -> DescribeWebInstanceLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeWebInstanceLogsWithOptions(ApplicationId as! String, InstanceId as! String, request as! DescribeWebInstanceLogsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/scale/disableApplicationScalingRule",
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
    public func downgradeApplicationApmServiceWithOptions(_ request: DowngradeApplicationApmServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DowngradeApplicationApmServiceResponse {
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
            "action": "DowngradeApplicationApmService",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/applicationApmService",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DowngradeApplicationApmServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downgradeApplicationApmService(_ request: DowngradeApplicationApmServiceRequest) async throws -> DowngradeApplicationApmServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await downgradeApplicationApmServiceWithOptions(request as! DowngradeApplicationApmServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/scale/enableApplicationScalingRule",
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
    public func execJobWithOptions(_ request: ExecJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.command)) {
            query["Command"] = request.command ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commandArgs)) {
            query["CommandArgs"] = request.commandArgs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envs)) {
            query["Envs"] = request.envs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            query["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jarStartArgs)) {
            query["JarStartArgs"] = request.jarStartArgs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jarStartOptions)) {
            query["JarStartOptions"] = request.jarStartOptions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            query["Replicas"] = request.replicas ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.time)) {
            query["Time"] = request.time ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warStartOptions)) {
            query["WarStartOptions"] = request.warStartOptions ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecJob",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/job/execJob",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execJob(_ request: ExecJobRequest) async throws -> ExecJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execJobWithOptions(request as! ExecJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApplicationWithOptions(_ request: GetApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/getApplication",
            "method": "GET",
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
    public func getArmsTopNMetricWithOptions(_ request: GetArmsTopNMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetArmsTopNMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appSource)) {
            query["AppSource"] = request.appSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpuStrategy)) {
            query["CpuStrategy"] = request.cpuStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetArmsTopNMetric",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/getArmsTopNMetric",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetArmsTopNMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArmsTopNMetric(_ request: GetArmsTopNMetricRequest) async throws -> GetArmsTopNMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getArmsTopNMetricWithOptions(request as! GetArmsTopNMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAvailabilityMetricWithOptions(_ request: GetAvailabilityMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAvailabilityMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appSource)) {
            query["AppSource"] = request.appSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpuStrategy)) {
            query["CpuStrategy"] = request.cpuStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAvailabilityMetric",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/getAvailabilityMetric",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAvailabilityMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAvailabilityMetric(_ request: GetAvailabilityMetricRequest) async throws -> GetAvailabilityMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAvailabilityMetricWithOptions(request as! GetAvailabilityMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChangeOrderMetricWithOptions(_ request: GetChangeOrderMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChangeOrderMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appSource)) {
            query["AppSource"] = request.appSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.coType)) {
            query["CoType"] = request.coType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpuStrategy)) {
            query["CpuStrategy"] = request.cpuStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTime)) {
            query["CreateTime"] = request.createTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChangeOrderMetric",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/getChangeOrderMetric",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChangeOrderMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChangeOrderMetric(_ request: GetChangeOrderMetricRequest) async throws -> GetChangeOrderMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getChangeOrderMetricWithOptions(request as! GetChangeOrderMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScaleAppMetricWithOptions(_ request: GetScaleAppMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetScaleAppMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appSource)) {
            query["AppSource"] = request.appSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpuStrategy)) {
            query["CpuStrategy"] = request.cpuStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetScaleAppMetric",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/getScaleAppMetric",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetScaleAppMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScaleAppMetric(_ request: GetScaleAppMetricRequest) async throws -> GetScaleAppMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getScaleAppMetricWithOptions(request as! GetScaleAppMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWarningEventMetricWithOptions(_ request: GetWarningEventMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWarningEventMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appSource)) {
            query["AppSource"] = request.appSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpuStrategy)) {
            query["CpuStrategy"] = request.cpuStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWarningEventMetric",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/getWarningEventMetric",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWarningEventMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWarningEventMetric(_ request: GetWarningEventMetricRequest) async throws -> GetWarningEventMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWarningEventMetricWithOptions(request as! GetWarningEventMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWebshellTokenWithOptions(_ request: GetWebshellTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWebshellTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerName)) {
            query["ContainerName"] = request.containerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.podName)) {
            query["PodName"] = request.podName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWebshellToken",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/instance/webshellToken",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWebshellTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWebshellToken(_ request: GetWebshellTokenRequest) async throws -> GetWebshellTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWebshellTokenWithOptions(request as! GetWebshellTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAllSwimmingLaneGroupsWithOptions(_ request: ListAllSwimmingLaneGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAllSwimmingLaneGroupsResponse {
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
            "action": "ListAllSwimmingLaneGroups",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/cas/gray/listSwimmingLaneGroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAllSwimmingLaneGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAllSwimmingLaneGroups(_ request: ListAllSwimmingLaneGroupsRequest) async throws -> ListAllSwimmingLaneGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAllSwimmingLaneGroupsWithOptions(request as! ListAllSwimmingLaneGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAllSwimmingLanesWithOptions(_ request: ListAllSwimmingLanesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAllSwimmingLanesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAllSwimmingLanes",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/cas/gray/listSwimmingLanes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAllSwimmingLanesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAllSwimmingLanes(_ request: ListAllSwimmingLanesRequest) async throws -> ListAllSwimmingLanesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAllSwimmingLanesWithOptions(request as! ListAllSwimmingLanesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppEventsWithOptions(_ request: ListAppEventsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAppEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.eventType)) {
            query["EventType"] = request.eventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectKind)) {
            query["ObjectKind"] = request.objectKind ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectName)) {
            query["ObjectName"] = request.objectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            query["Reason"] = request.reason ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAppEvents",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/listAppEvents",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAppEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppEvents(_ request: ListAppEventsRequest) async throws -> ListAppEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAppEventsWithOptions(request as! ListAppEventsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppServicesWithOptions(_ request: ListAppServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAppServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nacosInstanceId)) {
            query["NacosInstanceId"] = request.nacosInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nacosNamespaceId)) {
            query["NacosNamespaceId"] = request.nacosNamespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.registryType)) {
            query["RegistryType"] = request.registryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["ServiceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAppServices",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/service/listAppServices",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAppServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppServices(_ request: ListAppServicesRequest) async throws -> ListAppServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAppServicesWithOptions(request as! ListAppServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppServicesPageWithOptions(_ request: ListAppServicesPageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAppServicesPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["ServiceType"] = request.serviceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAppServicesPage",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/service/listAppServicesPage",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAppServicesPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppServicesPage(_ request: ListAppServicesPageRequest) async throws -> ListAppServicesPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAppServicesPageWithOptions(request as! ListAppServicesPageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppVersionsWithOptions(_ request: ListAppVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAppVersionsResponse {
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
            "action": "ListAppVersions",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/listAppVersions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAppVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppVersions(_ request: ListAppVersionsRequest) async throws -> ListAppVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAppVersionsWithOptions(request as! ListAppVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationsWithOptions(_ request: ListApplicationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApplicationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appSource)) {
            query["AppSource"] = request.appSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.fieldType)) {
            query["FieldType"] = request.fieldType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fieldValue)) {
            query["FieldValue"] = request.fieldValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isStateful)) {
            query["IsStateful"] = request.isStateful ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.reverse)) {
            query["Reverse"] = request.reverse!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApplications",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/listApplications",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApplicationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplications(_ request: ListApplicationsRequest) async throws -> ListApplicationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listApplicationsWithOptions(request as! ListApplicationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationsForSwimmingLaneWithOptions(_ request: ListApplicationsForSwimmingLaneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApplicationsForSwimmingLaneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApplicationsForSwimmingLane",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/cas/gray/listApplicationsForSwimmingLane",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApplicationsForSwimmingLaneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationsForSwimmingLane(_ request: ListApplicationsForSwimmingLaneRequest) async throws -> ListApplicationsForSwimmingLaneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listApplicationsForSwimmingLaneWithOptions(request as! ListApplicationsForSwimmingLaneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChangeOrdersWithOptions(_ request: ListChangeOrdersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChangeOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.coStatus)) {
            query["CoStatus"] = request.coStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.coType)) {
            query["CoType"] = request.coType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.reverse)) {
            query["Reverse"] = request.reverse!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChangeOrders",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/changeorder/ListChangeOrders",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChangeOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChangeOrders(_ request: ListChangeOrdersRequest) async throws -> ListChangeOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listChangeOrdersWithOptions(request as! ListChangeOrdersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/service/listConsumedServices",
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
    public func listGreyTagRouteWithOptions(_ request: ListGreyTagRouteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGreyTagRouteResponse {
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
            "action": "ListGreyTagRoute",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/tagroute/greyTagRouteList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGreyTagRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGreyTagRoute(_ request: ListGreyTagRouteRequest) async throws -> ListGreyTagRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGreyTagRouteWithOptions(request as! ListGreyTagRouteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIngressesWithOptions(_ request: ListIngressesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIngressesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIngresses",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/ingress/IngressList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIngressesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIngresses(_ request: ListIngressesRequest) async throws -> ListIngressesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIngressesWithOptions(request as! ListIngressesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobsWithOptions(_ request: ListJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.fieldType)) {
            query["FieldType"] = request.fieldType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fieldValue)) {
            query["FieldValue"] = request.fieldValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.reverse)) {
            query["Reverse"] = request.reverse!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workload)) {
            query["Workload"] = request.workload ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobs",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/job/listJobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobs(_ request: ListJobsRequest) async throws -> ListJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listJobsWithOptions(request as! ListJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogConfigsWithOptions(_ request: ListLogConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLogConfigsResponse {
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLogConfigs",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/log/listLogConfigs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLogConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogConfigs(_ request: ListLogConfigsRequest) async throws -> ListLogConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listLogConfigsWithOptions(request as! ListLogConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNamespaceChangeOrdersWithOptions(_ request: ListNamespaceChangeOrdersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNamespaceChangeOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coStatus)) {
            query["CoStatus"] = request.coStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.coType)) {
            query["CoType"] = request.coType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNamespaceChangeOrders",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/changeorder/listNamespaceChangeOrders",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNamespaceChangeOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNamespaceChangeOrders(_ request: ListNamespaceChangeOrdersRequest) async throws -> ListNamespaceChangeOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listNamespaceChangeOrdersWithOptions(request as! ListNamespaceChangeOrdersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNamespacedConfigMapsWithOptions(_ request: ListNamespacedConfigMapsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNamespacedConfigMapsResponse {
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
            "action": "ListNamespacedConfigMaps",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/configmap/listNamespacedConfigMaps",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNamespacedConfigMapsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNamespacedConfigMaps(_ request: ListNamespacedConfigMapsRequest) async throws -> ListNamespacedConfigMapsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listNamespacedConfigMapsWithOptions(request as! ListNamespacedConfigMapsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/service/listPublishedServices",
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
    public func listSecretsWithOptions(_ request: ListSecretsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSecretsResponse {
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
            "action": "ListSecrets",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/secret/secrets",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSecretsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSecrets(_ request: ListSecretsRequest) async throws -> ListSecretsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSecretsWithOptions(request as! ListSecretsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSwimmingLaneGatewayRoutesWithOptions(_ request: ListSwimmingLaneGatewayRoutesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSwimmingLaneGatewayRoutesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayUniqueId)) {
            query["GatewayUniqueId"] = request.gatewayUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSwimmingLaneGatewayRoutes",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/cas/gray/listSwimmingLaneGatewayRoutes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSwimmingLaneGatewayRoutesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSwimmingLaneGatewayRoutes(_ request: ListSwimmingLaneGatewayRoutesRequest) async throws -> ListSwimmingLaneGatewayRoutesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSwimmingLaneGatewayRoutesWithOptions(request as! ListSwimmingLaneGatewayRoutesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSwimmingLaneGroupTagsWithOptions(_ request: ListSwimmingLaneGroupTagsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSwimmingLaneGroupTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSwimmingLaneGroupTags",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/cas/gray/listSwimmingLaneGroupTags",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSwimmingLaneGroupTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSwimmingLaneGroupTags(_ request: ListSwimmingLaneGroupTagsRequest) async throws -> ListSwimmingLaneGroupTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSwimmingLaneGroupTagsWithOptions(request as! ListSwimmingLaneGroupTagsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? "";
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
            "action": "ListTagResources",
            "version": "2019-05-06",
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
    public func listWebApplicationInstancesWithOptions(_ ApplicationId: String, _ tmpReq: ListWebApplicationInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWebApplicationInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListWebApplicationInstancesShrinkRequest = ListWebApplicationInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.statuses)) {
            request.statusesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.statuses, "Statuses", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.versionIds)) {
            request.versionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.versionIds, "VersionIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.statusesShrink)) {
            query["Statuses"] = request.statusesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionIdsShrink)) {
            query["VersionIds"] = request.versionIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWebApplicationInstances",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/applications-observability/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)) + "/instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWebApplicationInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWebApplicationInstances(_ ApplicationId: String, _ request: ListWebApplicationInstancesRequest) async throws -> ListWebApplicationInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWebApplicationInstancesWithOptions(ApplicationId as! String, request as! ListWebApplicationInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWebApplicationRevisionsWithOptions(_ ApplicationId: String, _ request: ListWebApplicationRevisionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWebApplicationRevisionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWebApplicationRevisions",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/application-revisions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)) + "/revisions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWebApplicationRevisionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWebApplicationRevisions(_ ApplicationId: String, _ request: ListWebApplicationRevisionsRequest) async throws -> ListWebApplicationRevisionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWebApplicationRevisionsWithOptions(ApplicationId as! String, request as! ListWebApplicationRevisionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWebApplicationsWithOptions(_ request: ListWebApplicationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWebApplicationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["Prefix"] = request.prefix_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWebApplications",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/applications",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWebApplicationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWebApplications(_ request: ListWebApplicationsRequest) async throws -> ListWebApplicationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWebApplicationsWithOptions(request as! ListWebApplicationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWebCustomDomainsWithOptions(_ request: ListWebCustomDomainsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWebCustomDomainsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationId)) {
            query["ApplicationId"] = request.applicationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["Prefix"] = request.prefix_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWebCustomDomains",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/custom-domains",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWebCustomDomainsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWebCustomDomains(_ request: ListWebCustomDomainsRequest) async throws -> ListWebCustomDomainsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWebCustomDomainsWithOptions(request as! ListWebCustomDomainsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openSaeServiceWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OpenSaeServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenSaeService",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/service/open",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenSaeServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openSaeService() async throws -> OpenSaeServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await openSaeServiceWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishWebApplicationRevisionWithOptions(_ ApplicationId: String, _ request: PublishWebApplicationRevisionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishWebApplicationRevisionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishWebApplicationRevision",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/application-revisions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)) + "/revisions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishWebApplicationRevisionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishWebApplicationRevision(_ ApplicationId: String, _ request: PublishWebApplicationRevisionRequest) async throws -> PublishWebApplicationRevisionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await publishWebApplicationRevisionWithOptions(ApplicationId as! String, request as! PublishWebApplicationRevisionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryArmsEnableWithOptions(_ request: QueryArmsEnableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryArmsEnableResponse {
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
            "action": "QueryArmsEnable",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/arms/queryArms",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryArmsEnableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryArmsEnable(_ request: QueryArmsEnableRequest) async throws -> QueryArmsEnableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryArmsEnableWithOptions(request as! QueryArmsEnableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryResourceStaticsWithOptions(_ request: QueryResourceStaticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryResourceStaticsResponse {
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
            "action": "QueryResourceStatics",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/paas/quota/queryResourceStatics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryResourceStaticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryResourceStatics(_ request: QueryResourceStaticsRequest) async throws -> QueryResourceStaticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryResourceStaticsWithOptions(request as! QueryResourceStaticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reduceApplicationCapacityByInstanceIdsWithOptions(_ request: ReduceApplicationCapacityByInstanceIdsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReduceApplicationCapacityByInstanceIdsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReduceApplicationCapacityByInstanceIds",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/ScaleInApplicationWithInstanceIds",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReduceApplicationCapacityByInstanceIdsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reduceApplicationCapacityByInstanceIds(_ request: ReduceApplicationCapacityByInstanceIdsRequest) async throws -> ReduceApplicationCapacityByInstanceIdsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await reduceApplicationCapacityByInstanceIdsWithOptions(request as! ReduceApplicationCapacityByInstanceIdsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rescaleApplicationWithOptions(_ request: RescaleApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RescaleApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoEnableApplicationScalingRule)) {
            query["AutoEnableApplicationScalingRule"] = request.autoEnableApplicationScalingRule!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstanceRatio)) {
            query["MinReadyInstanceRatio"] = request.minReadyInstanceRatio!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstances)) {
            query["MinReadyInstances"] = request.minReadyInstances!;
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            query["Replicas"] = request.replicas!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RescaleApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/rescaleApplication",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RescaleApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rescaleApplication(_ request: RescaleApplicationRequest) async throws -> RescaleApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await rescaleApplicationWithOptions(request as! RescaleApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rescaleApplicationVerticallyWithOptions(_ request: RescaleApplicationVerticallyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RescaleApplicationVerticallyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            query["Cpu"] = request.cpu ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskSize)) {
            query["DiskSize"] = request.diskSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            query["Memory"] = request.memory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoEnableApplicationScalingRule)) {
            query["autoEnableApplicationScalingRule"] = request.autoEnableApplicationScalingRule!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstanceRatio)) {
            query["minReadyInstanceRatio"] = request.minReadyInstanceRatio!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstances)) {
            query["minReadyInstances"] = request.minReadyInstances!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RescaleApplicationVertically",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/rescaleApplicationVertically",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RescaleApplicationVerticallyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rescaleApplicationVertically(_ request: RescaleApplicationVerticallyRequest) async throws -> RescaleApplicationVerticallyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await rescaleApplicationVerticallyWithOptions(request as! RescaleApplicationVerticallyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartApplicationWithOptions(_ request: RestartApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoEnableApplicationScalingRule)) {
            query["AutoEnableApplicationScalingRule"] = request.autoEnableApplicationScalingRule!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstanceRatio)) {
            query["MinReadyInstanceRatio"] = request.minReadyInstanceRatio!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstances)) {
            query["MinReadyInstances"] = request.minReadyInstances!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/restartApplication",
            "method": "PUT",
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
    public func restartInstancesWithOptions(_ request: RestartInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartInstances",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/restartInstances",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartInstances(_ request: RestartInstancesRequest) async throws -> RestartInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await restartInstancesWithOptions(request as! RestartInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackApplicationWithOptions(_ request: RollbackApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RollbackApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoEnableApplicationScalingRule)) {
            query["AutoEnableApplicationScalingRule"] = request.autoEnableApplicationScalingRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.batchWaitTime)) {
            query["BatchWaitTime"] = request.batchWaitTime!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstanceRatio)) {
            query["MinReadyInstanceRatio"] = request.minReadyInstanceRatio!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstances)) {
            query["MinReadyInstances"] = request.minReadyInstances!;
        }
        if (!TeaUtils.Client.isUnset(request.updateStrategy)) {
            query["UpdateStrategy"] = request.updateStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RollbackApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/rollbackApplication",
            "method": "PUT",
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
    public func startApplicationWithOptions(_ request: StartApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartApplicationResponse {
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
            "action": "StartApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/startApplication",
            "method": "PUT",
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
    public func startWebApplicationWithOptions(_ ApplicationId: String, _ request: StartWebApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartWebApplicationResponse {
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
            "action": "StartWebApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/application-ops/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)) + "/start",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartWebApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startWebApplication(_ ApplicationId: String, _ request: StartWebApplicationRequest) async throws -> StartWebApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startWebApplicationWithOptions(ApplicationId as! String, request as! StartWebApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopApplicationWithOptions(_ request: StopApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopApplicationResponse {
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
            "action": "StopApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/stopApplication",
            "method": "PUT",
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
    public func stopWebApplicationWithOptions(_ ApplicationId: String, _ request: StopWebApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopWebApplicationResponse {
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
            "action": "StopWebApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/application-ops/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)) + "/stop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopWebApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopWebApplication(_ ApplicationId: String, _ request: StopWebApplicationRequest) async throws -> StopWebApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopWebApplicationWithOptions(ApplicationId as! String, request as! StopWebApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendJobWithOptions(_ request: SuspendJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.suspend)) {
            query["Suspend"] = request.suspend!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendJob",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/job/suspendJob",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendJob(_ request: SuspendJobRequest) async throws -> SuspendJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await suspendJobWithOptions(request as! SuspendJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            body["ResourceIds"] = request.resourceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/tags",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
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
    public func unbindNlbWithOptions(_ request: UnbindNlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindNlbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nlbId)) {
            query["NlbId"] = request.nlbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            query["Protocol"] = request.protocol_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindNlb",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/nlb",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindNlbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindNlb(_ request: UnbindNlbRequest) async throws -> UnbindNlbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await unbindNlbWithOptions(request as! UnbindNlbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindSlbWithOptions(_ request: UnbindSlbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindSlbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internet)) {
            query["Internet"] = request.internet!;
        }
        if (!TeaUtils.Client.isUnset(request.intranet)) {
            query["Intranet"] = request.intranet!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindSlb",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/slb",
            "method": "DELETE",
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? "";
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
            "version": "2019-05-06",
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
    public func updateAppModeWithOptions(_ request: UpdateAppModeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAppModeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appIds)) {
            query["AppIds"] = request.appIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableIdle)) {
            query["EnableIdle"] = request.enableIdle!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAppMode",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/updateAppMode",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAppModeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAppMode(_ request: UpdateAppModeRequest) async throws -> UpdateAppModeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAppModeWithOptions(request as! UpdateAppModeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAppSecurityGroupWithOptions(_ request: UpdateAppSecurityGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAppSecurityGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAppSecurityGroup",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/updateAppSecurityGroup",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAppSecurityGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAppSecurityGroup(_ request: UpdateAppSecurityGroupRequest) async throws -> UpdateAppSecurityGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAppSecurityGroupWithOptions(request as! UpdateAppSecurityGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicationDescriptionWithOptions(_ request: UpdateApplicationDescriptionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApplicationDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appDescription)) {
            query["AppDescription"] = request.appDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApplicationDescription",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/updateAppDescription",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApplicationDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicationDescription(_ request: UpdateApplicationDescriptionRequest) async throws -> UpdateApplicationDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateApplicationDescriptionWithOptions(request as! UpdateApplicationDescriptionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicationScalingRuleWithOptions(_ request: UpdateApplicationScalingRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApplicationScalingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableIdle)) {
            query["EnableIdle"] = request.enableIdle!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstanceRatio)) {
            query["MinReadyInstanceRatio"] = request.minReadyInstanceRatio!;
        }
        if (!TeaUtils.Client.isUnset(request.minReadyInstances)) {
            query["MinReadyInstances"] = request.minReadyInstances!;
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApplicationScalingRule",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/scale/applicationScalingRule",
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
    public func updateApplicationVswitchesWithOptions(_ request: UpdateApplicationVswitchesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApplicationVswitchesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApplicationVswitches",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/updateAppVswitches",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApplicationVswitchesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicationVswitches(_ request: UpdateApplicationVswitchesRequest) async throws -> UpdateApplicationVswitchesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateApplicationVswitchesWithOptions(request as! UpdateApplicationVswitchesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigMapWithOptions(_ request: UpdateConfigMapRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConfigMapResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configMapId)) {
            query["ConfigMapId"] = request.configMapId!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConfigMap",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/configmap/configMap",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConfigMapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigMap(_ request: UpdateConfigMapRequest) async throws -> UpdateConfigMapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateConfigMapWithOptions(request as! UpdateConfigMapRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGreyTagRouteWithOptions(_ request: UpdateGreyTagRouteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGreyTagRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.albRules)) {
            query["AlbRules"] = request.albRules ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dubboRules)) {
            query["DubboRules"] = request.dubboRules ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.greyTagRouteId)) {
            query["GreyTagRouteId"] = request.greyTagRouteId!;
        }
        if (!TeaUtils.Client.isUnset(request.scRules)) {
            query["ScRules"] = request.scRules ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGreyTagRoute",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/tagroute/greyTagRoute",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGreyTagRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGreyTagRoute(_ request: UpdateGreyTagRouteRequest) async throws -> UpdateGreyTagRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateGreyTagRouteWithOptions(request as! UpdateGreyTagRouteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIngressWithOptions(_ request: UpdateIngressRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIngressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certId)) {
            query["CertId"] = request.certId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certIds)) {
            query["CertIds"] = request.certIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corsConfig)) {
            query["CorsConfig"] = request.corsConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultRule)) {
            query["DefaultRule"] = request.defaultRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableGzip)) {
            query["EnableGzip"] = request.enableGzip!;
        }
        if (!TeaUtils.Client.isUnset(request.enableXForwardedFor)) {
            query["EnableXForwardedFor"] = request.enableXForwardedFor!;
        }
        if (!TeaUtils.Client.isUnset(request.enableXForwardedForClientSrcPort)) {
            query["EnableXForwardedForClientSrcPort"] = request.enableXForwardedForClientSrcPort!;
        }
        if (!TeaUtils.Client.isUnset(request.enableXForwardedForProto)) {
            query["EnableXForwardedForProto"] = request.enableXForwardedForProto!;
        }
        if (!TeaUtils.Client.isUnset(request.enableXForwardedForSlbId)) {
            query["EnableXForwardedForSlbId"] = request.enableXForwardedForSlbId!;
        }
        if (!TeaUtils.Client.isUnset(request.enableXForwardedForSlbPort)) {
            query["EnableXForwardedForSlbPort"] = request.enableXForwardedForSlbPort!;
        }
        if (!TeaUtils.Client.isUnset(request.idleTimeout)) {
            query["IdleTimeout"] = request.idleTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.ingressId)) {
            query["IngressId"] = request.ingressId!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listenerProtocol)) {
            query["ListenerProtocol"] = request.listenerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalanceType)) {
            query["LoadBalanceType"] = request.loadBalanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestTimeout)) {
            query["RequestTimeout"] = request.requestTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.securityPolicyId)) {
            query["SecurityPolicyId"] = request.securityPolicyId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rules)) {
            body["Rules"] = request.rules ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIngress",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/ingress/Ingress",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIngressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIngress(_ request: UpdateIngressRequest) async throws -> UpdateIngressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateIngressWithOptions(request as! UpdateIngressRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateJobWithOptions(_ request: UpdateJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrAssumeRoleArn)) {
            query["AcrAssumeRoleArn"] = request.acrAssumeRoleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backoffLimit)) {
            query["BackoffLimit"] = request.backoffLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.bestEffortType)) {
            query["BestEffortType"] = request.bestEffortType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.command)) {
            query["Command"] = request.command ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commandArgs)) {
            query["CommandArgs"] = request.commandArgs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.concurrencyPolicy)) {
            query["ConcurrencyPolicy"] = request.concurrencyPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customHostAlias)) {
            query["CustomHostAlias"] = request.customHostAlias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.edasContainerVersion)) {
            query["EdasContainerVersion"] = request.edasContainerVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envs)) {
            query["Envs"] = request.envs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imagePullSecrets)) {
            query["ImagePullSecrets"] = request.imagePullSecrets ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jarStartArgs)) {
            query["JarStartArgs"] = request.jarStartArgs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jarStartOptions)) {
            query["JarStartOptions"] = request.jarStartOptions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jdk)) {
            query["Jdk"] = request.jdk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountDesc)) {
            query["MountDesc"] = request.mountDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountHost)) {
            query["MountHost"] = request.mountHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nasConfigs)) {
            query["NasConfigs"] = request.nasConfigs ?? "";
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
        if (!TeaUtils.Client.isUnset(request.phpConfigLocation)) {
            query["PhpConfigLocation"] = request.phpConfigLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postStart)) {
            query["PostStart"] = request.postStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preStop)) {
            query["PreStop"] = request.preStop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.programmingLanguage)) {
            query["ProgrammingLanguage"] = request.programmingLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.python)) {
            query["Python"] = request.python ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pythonModules)) {
            query["PythonModules"] = request.pythonModules ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refAppId)) {
            query["RefAppId"] = request.refAppId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            query["Replicas"] = request.replicas ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slice)) {
            query["Slice"] = request.slice!;
        }
        if (!TeaUtils.Client.isUnset(request.sliceEnvs)) {
            query["SliceEnvs"] = request.sliceEnvs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsConfigs)) {
            query["SlsConfigs"] = request.slsConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminationGracePeriodSeconds)) {
            query["TerminationGracePeriodSeconds"] = request.terminationGracePeriodSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.timezone)) {
            query["Timezone"] = request.timezone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tomcatConfig)) {
            query["TomcatConfig"] = request.tomcatConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerConfig)) {
            query["TriggerConfig"] = request.triggerConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warStartOptions)) {
            query["WarStartOptions"] = request.warStartOptions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webContainer)) {
            query["WebContainer"] = request.webContainer ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrInstanceId)) {
            body["AcrInstanceId"] = request.acrInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configMapMountDesc)) {
            body["ConfigMapMountDesc"] = request.configMapMountDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableImageAccl)) {
            body["EnableImageAccl"] = request.enableImageAccl!;
        }
        if (!TeaUtils.Client.isUnset(request.ossAkId)) {
            body["OssAkId"] = request.ossAkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossAkSecret)) {
            body["OssAkSecret"] = request.ossAkSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossMountDescs)) {
            body["OssMountDescs"] = request.ossMountDescs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.php)) {
            body["Php"] = request.php ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phpConfig)) {
            body["PhpConfig"] = request.phpConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateJob",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/job/updateJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateJob(_ request: UpdateJobRequest) async throws -> UpdateJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateJobWithOptions(request as! UpdateJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespaceWithOptions(_ request: UpdateNamespaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableMicroRegistration)) {
            query["EnableMicroRegistration"] = request.enableMicroRegistration!;
        }
        if (!TeaUtils.Client.isUnset(request.nameSpaceShortId)) {
            query["NameSpaceShortId"] = request.nameSpaceShortId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceDescription)) {
            query["NamespaceDescription"] = request.namespaceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNamespace",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/paas/namespace",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespace(_ request: UpdateNamespaceRequest) async throws -> UpdateNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateNamespaceWithOptions(request as! UpdateNamespaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespaceSlsConfigsWithOptions(_ request: UpdateNamespaceSlsConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNamespaceSlsConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nameSpaceShortId)) {
            query["NameSpaceShortId"] = request.nameSpaceShortId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsConfigs)) {
            query["SlsConfigs"] = request.slsConfigs ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNamespaceSlsConfigs",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/cas/namespace/updateNamespaceSlsConfigs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNamespaceSlsConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespaceSlsConfigs(_ request: UpdateNamespaceSlsConfigsRequest) async throws -> UpdateNamespaceSlsConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateNamespaceSlsConfigsWithOptions(request as! UpdateNamespaceSlsConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespaceVpcWithOptions(_ request: UpdateNamespaceVpcRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNamespaceVpcResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nameSpaceShortId)) {
            query["NameSpaceShortId"] = request.nameSpaceShortId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNamespaceVpc",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/namespace/updateNamespaceVpc",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNamespaceVpcResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespaceVpc(_ request: UpdateNamespaceVpcRequest) async throws -> UpdateNamespaceVpcResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateNamespaceVpcWithOptions(request as! UpdateNamespaceVpcRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSecretWithOptions(_ tmpReq: UpdateSecretRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSecretResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateSecretShrinkRequest = UpdateSecretShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.secretData)) {
            request.secretDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.secretData, "SecretData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretDataShrink)) {
            query["SecretData"] = request.secretDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretId)) {
            query["SecretId"] = request.secretId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSecret",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/secret/secret",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSecretResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSecret(_ request: UpdateSecretRequest) async throws -> UpdateSecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSecretWithOptions(request as! UpdateSecretRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSwimmingLaneEnableAttributeWithOptions(_ request: UpdateSwimmingLaneEnableAttributeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSwimmingLaneEnableAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enable)) {
            query["Enable"] = request.enable!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.laneId)) {
            query["LaneId"] = request.laneId!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSwimmingLaneEnableAttribute",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/cas/gray/updateSwimmingLaneEnableAttribute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSwimmingLaneEnableAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSwimmingLaneEnableAttribute(_ request: UpdateSwimmingLaneEnableAttributeRequest) async throws -> UpdateSwimmingLaneEnableAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSwimmingLaneEnableAttributeWithOptions(request as! UpdateSwimmingLaneEnableAttributeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWebApplicationWithOptions(_ ApplicationId: String, _ request: UpdateWebApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWebApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWebApplication",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/applications/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWebApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWebApplication(_ ApplicationId: String, _ request: UpdateWebApplicationRequest) async throws -> UpdateWebApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateWebApplicationWithOptions(ApplicationId as! String, request as! UpdateWebApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWebApplicationScalingConfigWithOptions(_ ApplicationId: String, _ request: UpdateWebApplicationScalingConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWebApplicationScalingConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWebApplicationScalingConfig",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/application-scaling/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWebApplicationScalingConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWebApplicationScalingConfig(_ ApplicationId: String, _ request: UpdateWebApplicationScalingConfigRequest) async throws -> UpdateWebApplicationScalingConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateWebApplicationScalingConfigWithOptions(ApplicationId as! String, request as! UpdateWebApplicationScalingConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWebApplicationTrafficConfigWithOptions(_ ApplicationId: String, _ request: UpdateWebApplicationTrafficConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWebApplicationTrafficConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWebApplicationTrafficConfig",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/application-traffic/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ApplicationId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWebApplicationTrafficConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWebApplicationTrafficConfig(_ ApplicationId: String, _ request: UpdateWebApplicationTrafficConfigRequest) async throws -> UpdateWebApplicationTrafficConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateWebApplicationTrafficConfigWithOptions(ApplicationId as! String, request as! UpdateWebApplicationTrafficConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWebCustomDomainWithOptions(_ DomainName: String, _ request: UpdateWebCustomDomainRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWebCustomDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWebCustomDomain",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v2/api/web/custom-domains/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DomainName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWebCustomDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWebCustomDomain(_ DomainName: String, _ request: UpdateWebCustomDomainRequest) async throws -> UpdateWebCustomDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateWebCustomDomainWithOptions(DomainName as! String, request as! UpdateWebCustomDomainRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeApplicationApmServiceWithOptions(_ request: UpgradeApplicationApmServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeApplicationApmServiceResponse {
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
            "action": "UpgradeApplicationApmService",
            "version": "2019-05-06",
            "protocol": "HTTPS",
            "pathname": "/pop/v1/sam/app/applicationApmService",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeApplicationApmServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeApplicationApmService(_ request: UpgradeApplicationApmServiceRequest) async throws -> UpgradeApplicationApmServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await upgradeApplicationApmServiceWithOptions(request as! UpgradeApplicationApmServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
