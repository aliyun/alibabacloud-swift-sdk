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
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("servicemesh", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addClusterIntoServiceMeshWithOptions(_ request: AddClusterIntoServiceMeshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddClusterIntoServiceMeshResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.discoveryOnly)) {
            body["DiscoveryOnly"] = request.discoveryOnly!;
        }
        if (!TeaUtils.Client.isUnset(request.ignoreNamespaceCheck)) {
            body["IgnoreNamespaceCheck"] = request.ignoreNamespaceCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.kubeconfig)) {
            body["Kubeconfig"] = request.kubeconfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddClusterIntoServiceMesh",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddClusterIntoServiceMeshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addClusterIntoServiceMesh(_ request: AddClusterIntoServiceMeshRequest) async throws -> AddClusterIntoServiceMeshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addClusterIntoServiceMeshWithOptions(request as! AddClusterIntoServiceMeshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addVMIntoServiceMeshWithOptions(_ request: AddVMIntoServiceMeshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddVMIntoServiceMeshResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecsId)) {
            query["EcsId"] = request.ecsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddVMIntoServiceMesh",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddVMIntoServiceMeshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addVMIntoServiceMesh(_ request: AddVMIntoServiceMeshRequest) async throws -> AddVMIntoServiceMeshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addVMIntoServiceMeshWithOptions(request as! AddVMIntoServiceMeshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createASMGatewayWithOptions(_ request: CreateASMGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateASMGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["Body"] = request.body ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateASMGateway",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateASMGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createASMGateway(_ request: CreateASMGatewayRequest) async throws -> CreateASMGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createASMGatewayWithOptions(request as! CreateASMGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewaySecretWithOptions(_ request: CreateGatewaySecretRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGatewaySecretResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cert)) {
            body["Cert"] = request.cert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            body["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretName)) {
            body["SecretName"] = request.secretName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGatewaySecret",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGatewaySecretResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewaySecret(_ request: CreateGatewaySecretRequest) async throws -> CreateGatewaySecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGatewaySecretWithOptions(request as! CreateGatewaySecretRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIstioGatewayDomainsWithOptions(_ request: CreateIstioGatewayDomainsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIstioGatewayDomainsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credential)) {
            body["Credential"] = request.credential ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceHttps)) {
            body["ForceHttps"] = request.forceHttps!;
        }
        if (!TeaUtils.Client.isUnset(request.hosts)) {
            body["Hosts"] = request.hosts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.number)) {
            body["Number"] = request.number!;
        }
        if (!TeaUtils.Client.isUnset(request.portName)) {
            body["PortName"] = request.portName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["Protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIstioGatewayDomains",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIstioGatewayDomainsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIstioGatewayDomains(_ request: CreateIstioGatewayDomainsRequest) async throws -> CreateIstioGatewayDomainsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createIstioGatewayDomainsWithOptions(request as! CreateIstioGatewayDomainsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIstioGatewayRoutesWithOptions(_ tmpReq: CreateIstioGatewayRoutesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIstioGatewayRoutesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateIstioGatewayRoutesShrinkRequest = CreateIstioGatewayRoutesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.gatewayRoute)) {
            request.gatewayRouteShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.gatewayRoute, "GatewayRoute", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayRouteShrink)) {
            body["GatewayRoute"] = request.gatewayRouteShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIstioGatewayRoutes",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIstioGatewayRoutesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIstioGatewayRoutes(_ request: CreateIstioGatewayRoutesRequest) async throws -> CreateIstioGatewayRoutesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createIstioGatewayRoutesWithOptions(request as! CreateIstioGatewayRoutesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceMeshWithOptions(_ request: CreateServiceMeshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceMeshResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessLogEnabled)) {
            body["AccessLogEnabled"] = request.accessLogEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.accessLogFile)) {
            body["AccessLogFile"] = request.accessLogFile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessLogFormat)) {
            body["AccessLogFormat"] = request.accessLogFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessLogProject)) {
            body["AccessLogProject"] = request.accessLogProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessLogServiceEnabled)) {
            body["AccessLogServiceEnabled"] = request.accessLogServiceEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.accessLogServiceHost)) {
            body["AccessLogServiceHost"] = request.accessLogServiceHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessLogServicePort)) {
            body["AccessLogServicePort"] = request.accessLogServicePort!;
        }
        if (!TeaUtils.Client.isUnset(request.apiServerLoadBalancerSpec)) {
            body["ApiServerLoadBalancerSpec"] = request.apiServerLoadBalancerSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiServerPublicEip)) {
            body["ApiServerPublicEip"] = request.apiServerPublicEip!;
        }
        if (!TeaUtils.Client.isUnset(request.auditProject)) {
            body["AuditProject"] = request.auditProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            body["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenewPeriod)) {
            body["AutoRenewPeriod"] = request.autoRenewPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.CRAggregationEnabled)) {
            body["CRAggregationEnabled"] = request.CRAggregationEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.certChain)) {
            body["CertChain"] = request.certChain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            body["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterDomain)) {
            body["ClusterDomain"] = request.clusterDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterSpec)) {
            body["ClusterSpec"] = request.clusterSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configSourceEnabled)) {
            body["ConfigSourceEnabled"] = request.configSourceEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.configSourceNacosID)) {
            body["ConfigSourceNacosID"] = request.configSourceNacosID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.controlPlaneLogEnabled)) {
            body["ControlPlaneLogEnabled"] = request.controlPlaneLogEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.controlPlaneLogProject)) {
            body["ControlPlaneLogProject"] = request.controlPlaneLogProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customizedPrometheus)) {
            body["CustomizedPrometheus"] = request.customizedPrometheus!;
        }
        if (!TeaUtils.Client.isUnset(request.customizedZipkin)) {
            body["CustomizedZipkin"] = request.customizedZipkin!;
        }
        if (!TeaUtils.Client.isUnset(request.DNSProxyingEnabled)) {
            body["DNSProxyingEnabled"] = request.DNSProxyingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.dubboFilterEnabled)) {
            body["DubboFilterEnabled"] = request.dubboFilterEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.edition)) {
            body["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableACMG)) {
            body["EnableACMG"] = request.enableACMG!;
        }
        if (!TeaUtils.Client.isUnset(request.enableAmbient)) {
            body["EnableAmbient"] = request.enableAmbient!;
        }
        if (!TeaUtils.Client.isUnset(request.enableAudit)) {
            body["EnableAudit"] = request.enableAudit!;
        }
        if (!TeaUtils.Client.isUnset(request.enableCRHistory)) {
            body["EnableCRHistory"] = request.enableCRHistory!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSDSServer)) {
            body["EnableSDSServer"] = request.enableSDSServer!;
        }
        if (!TeaUtils.Client.isUnset(request.excludeIPRanges)) {
            body["ExcludeIPRanges"] = request.excludeIPRanges ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeInboundPorts)) {
            body["ExcludeInboundPorts"] = request.excludeInboundPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeOutboundPorts)) {
            body["ExcludeOutboundPorts"] = request.excludeOutboundPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.existingCaCert)) {
            body["ExistingCaCert"] = request.existingCaCert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.existingCaKey)) {
            body["ExistingCaKey"] = request.existingCaKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.existingCaType)) {
            body["ExistingCaType"] = request.existingCaType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.existingRootCaCert)) {
            body["ExistingRootCaCert"] = request.existingRootCaCert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.existingRootCaKey)) {
            body["ExistingRootCaKey"] = request.existingRootCaKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterGatewayClusterConfig)) {
            body["FilterGatewayClusterConfig"] = request.filterGatewayClusterConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayAPIEnabled)) {
            body["GatewayAPIEnabled"] = request.gatewayAPIEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.guestCluster)) {
            body["GuestCluster"] = request.guestCluster ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeIPRanges)) {
            body["IncludeIPRanges"] = request.includeIPRanges ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.istioVersion)) {
            body["IstioVersion"] = request.istioVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kialiEnabled)) {
            body["KialiEnabled"] = request.kialiEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.localityLBConf)) {
            body["LocalityLBConf"] = request.localityLBConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localityLoadBalancing)) {
            body["LocalityLoadBalancing"] = request.localityLoadBalancing!;
        }
        if (!TeaUtils.Client.isUnset(request.MSEEnabled)) {
            body["MSEEnabled"] = request.MSEEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.multiBufferEnabled)) {
            body["MultiBufferEnabled"] = request.multiBufferEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.multiBufferPollDelay)) {
            body["MultiBufferPollDelay"] = request.multiBufferPollDelay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mysqlFilterEnabled)) {
            body["MysqlFilterEnabled"] = request.mysqlFilterEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPALimitCPU)) {
            body["OPALimitCPU"] = request.OPALimitCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPALimitMemory)) {
            body["OPALimitMemory"] = request.OPALimitMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPALogLevel)) {
            body["OPALogLevel"] = request.OPALogLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPARequestCPU)) {
            body["OPARequestCPU"] = request.OPARequestCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPARequestMemory)) {
            body["OPARequestMemory"] = request.OPARequestMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opaEnabled)) {
            body["OpaEnabled"] = request.opaEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.openAgentPolicy)) {
            body["OpenAgentPolicy"] = request.openAgentPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.pilotLoadBalancerSpec)) {
            body["PilotLoadBalancerSpec"] = request.pilotLoadBalancerSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playgroundScene)) {
            body["PlaygroundScene"] = request.playgroundScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prometheusUrl)) {
            body["PrometheusUrl"] = request.prometheusUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyLimitCPU)) {
            body["ProxyLimitCPU"] = request.proxyLimitCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyLimitMemory)) {
            body["ProxyLimitMemory"] = request.proxyLimitMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyRequestCPU)) {
            body["ProxyRequestCPU"] = request.proxyRequestCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyRequestMemory)) {
            body["ProxyRequestMemory"] = request.proxyRequestMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.redisFilterEnabled)) {
            body["RedisFilterEnabled"] = request.redisFilterEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telemetry)) {
            body["Telemetry"] = request.telemetry!;
        }
        if (!TeaUtils.Client.isUnset(request.thriftFilterEnabled)) {
            body["ThriftFilterEnabled"] = request.thriftFilterEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.traceSampling)) {
            body["TraceSampling"] = request.traceSampling!;
        }
        if (!TeaUtils.Client.isUnset(request.tracing)) {
            body["Tracing"] = request.tracing!;
        }
        if (!TeaUtils.Client.isUnset(request.useExistingCA)) {
            body["UseExistingCA"] = request.useExistingCA!;
        }
        if (!TeaUtils.Client.isUnset(request.vSwitches)) {
            body["VSwitches"] = request.vSwitches ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webAssemblyFilterEnabled)) {
            body["WebAssemblyFilterEnabled"] = request.webAssemblyFilterEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceMesh",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceMeshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceMesh(_ request: CreateServiceMeshRequest) async throws -> CreateServiceMeshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createServiceMeshWithOptions(request as! CreateServiceMeshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSwimLaneWithOptions(_ request: CreateSwimLaneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSwimLaneResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelSelectorKey)) {
            body["LabelSelectorKey"] = request.labelSelectorKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelSelectorValue)) {
            body["LabelSelectorValue"] = request.labelSelectorValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.servicesList)) {
            body["ServicesList"] = request.servicesList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.swimLaneName)) {
            body["SwimLaneName"] = request.swimLaneName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSwimLane",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSwimLaneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSwimLane(_ request: CreateSwimLaneRequest) async throws -> CreateSwimLaneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSwimLaneWithOptions(request as! CreateSwimLaneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSwimLaneGroupWithOptions(_ request: CreateSwimLaneGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSwimLaneGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ingressGatewayName)) {
            body["IngressGatewayName"] = request.ingressGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ingressGatewayNamespace)) {
            body["IngressGatewayNamespace"] = request.ingressGatewayNamespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ingressType)) {
            body["IngressType"] = request.ingressType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isPermissive)) {
            body["IsPermissive"] = request.isPermissive!;
        }
        if (!TeaUtils.Client.isUnset(request.routeHeader)) {
            body["RouteHeader"] = request.routeHeader ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.servicesList)) {
            body["ServicesList"] = request.servicesList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceHeader)) {
            body["TraceHeader"] = request.traceHeader ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSwimLaneGroup",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSwimLaneGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSwimLaneGroup(_ request: CreateSwimLaneGroupRequest) async throws -> CreateSwimLaneGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSwimLaneGroupWithOptions(request as! CreateSwimLaneGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWaypointWithOptions(_ request: CreateWaypointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWaypointResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.HPAEnabled)) {
            body["HPAEnabled"] = request.HPAEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.HPAMaxReplicas)) {
            body["HPAMaxReplicas"] = request.HPAMaxReplicas!;
        }
        if (!TeaUtils.Client.isUnset(request.HPAMinReplicas)) {
            body["HPAMinReplicas"] = request.HPAMinReplicas!;
        }
        if (!TeaUtils.Client.isUnset(request.HPATargetCPU)) {
            body["HPATargetCPU"] = request.HPATargetCPU!;
        }
        if (!TeaUtils.Client.isUnset(request.HPATargetMemory)) {
            body["HPATargetMemory"] = request.HPATargetMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.limitCPU)) {
            body["LimitCPU"] = request.limitCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limitMemory)) {
            body["LimitMemory"] = request.limitMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferECI)) {
            body["PreferECI"] = request.preferECI!;
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            body["Replicas"] = request.replicas!;
        }
        if (!TeaUtils.Client.isUnset(request.requestCPU)) {
            body["RequestCPU"] = request.requestCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestMemory)) {
            body["RequestMemory"] = request.requestMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceAccount)) {
            body["ServiceAccount"] = request.serviceAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWaypoint",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWaypointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWaypoint(_ request: CreateWaypointRequest) async throws -> CreateWaypointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWaypointWithOptions(request as! CreateWaypointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayRouteWithOptions(_ request: DeleteGatewayRouteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewayRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeName)) {
            body["RouteName"] = request.routeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGatewayRoute",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewayRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayRoute(_ request: DeleteGatewayRouteRequest) async throws -> DeleteGatewayRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGatewayRouteWithOptions(request as! DeleteGatewayRouteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewaySecretWithOptions(_ request: DeleteGatewaySecretRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewaySecretResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretName)) {
            body["SecretName"] = request.secretName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGatewaySecret",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewaySecretResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewaySecret(_ request: DeleteGatewaySecretRequest) async throws -> DeleteGatewaySecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGatewaySecretWithOptions(request as! DeleteGatewaySecretRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIstioGatewayDomainsWithOptions(_ request: DeleteIstioGatewayDomainsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIstioGatewayDomainsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hosts)) {
            body["Hosts"] = request.hosts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portName)) {
            body["PortName"] = request.portName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIstioGatewayDomains",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIstioGatewayDomainsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIstioGatewayDomains(_ request: DeleteIstioGatewayDomainsRequest) async throws -> DeleteIstioGatewayDomainsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteIstioGatewayDomainsWithOptions(request as! DeleteIstioGatewayDomainsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceMeshWithOptions(_ request: DeleteServiceMeshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceMeshResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.force)) {
            body["Force"] = request.force!;
        }
        if (!TeaUtils.Client.isUnset(request.retainResources)) {
            body["RetainResources"] = request.retainResources ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceMesh",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceMeshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceMesh(_ request: DeleteServiceMeshRequest) async throws -> DeleteServiceMeshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteServiceMeshWithOptions(request as! DeleteServiceMeshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSwimLaneWithOptions(_ request: DeleteSwimLaneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSwimLaneResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.swimLaneName)) {
            body["SwimLaneName"] = request.swimLaneName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSwimLane",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSwimLaneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSwimLane(_ request: DeleteSwimLaneRequest) async throws -> DeleteSwimLaneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSwimLaneWithOptions(request as! DeleteSwimLaneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSwimLaneGroupWithOptions(_ request: DeleteSwimLaneGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSwimLaneGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSwimLaneGroup",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSwimLaneGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSwimLaneGroup(_ request: DeleteSwimLaneGroupRequest) async throws -> DeleteSwimLaneGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSwimLaneGroupWithOptions(request as! DeleteSwimLaneGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWaypointWithOptions(_ request: DeleteWaypointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWaypointResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWaypoint",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWaypointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWaypoint(_ request: DeleteWaypointRequest) async throws -> DeleteWaypointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteWaypointWithOptions(request as! DeleteWaypointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeASMGatewayImportedServicesWithOptions(_ request: DescribeASMGatewayImportedServicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeASMGatewayImportedServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASMGatewayName)) {
            body["ASMGatewayName"] = request.ASMGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceNamespace)) {
            body["ServiceNamespace"] = request.serviceNamespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeASMGatewayImportedServices",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeASMGatewayImportedServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeASMGatewayImportedServices(_ request: DescribeASMGatewayImportedServicesRequest) async throws -> DescribeASMGatewayImportedServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeASMGatewayImportedServicesWithOptions(request as! DescribeASMGatewayImportedServicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCCMVersionWithOptions(_ request: DescribeCCMVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCCMVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCCMVersion",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCCMVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCCMVersion(_ request: DescribeCCMVersionRequest) async throws -> DescribeCCMVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCCMVersionWithOptions(request as! DescribeCCMVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCensWithOptions(_ request: DescribeCensRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCensResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCens",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCensResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCens(_ request: DescribeCensRequest) async throws -> DescribeCensResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCensWithOptions(request as! DescribeCensRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterGrafanaWithOptions(_ request: DescribeClusterGrafanaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterGrafanaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.k8sClusterId)) {
            query["K8sClusterId"] = request.k8sClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reAddPrometheusIntegration)) {
            query["ReAddPrometheusIntegration"] = request.reAddPrometheusIntegration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterGrafana",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterGrafanaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterGrafana(_ request: DescribeClusterGrafanaRequest) async throws -> DescribeClusterGrafanaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClusterGrafanaWithOptions(request as! DescribeClusterGrafanaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterPrometheusWithOptions(_ request: DescribeClusterPrometheusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterPrometheusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.k8sClusterId)) {
            query["K8sClusterId"] = request.k8sClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.k8sClusterRegionId)) {
            query["K8sClusterRegionId"] = request.k8sClusterRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterPrometheus",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterPrometheusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterPrometheus(_ request: DescribeClusterPrometheusRequest) async throws -> DescribeClusterPrometheusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClusterPrometheusWithOptions(request as! DescribeClusterPrometheusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClustersInServiceMeshWithOptions(_ request: DescribeClustersInServiceMeshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClustersInServiceMeshResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClustersInServiceMesh",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClustersInServiceMeshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClustersInServiceMesh(_ request: DescribeClustersInServiceMeshRequest) async throws -> DescribeClustersInServiceMeshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClustersInServiceMeshWithOptions(request as! DescribeClustersInServiceMeshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCrTemplatesWithOptions(_ request: DescribeCrTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCrTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.istioVersion)) {
            body["IstioVersion"] = request.istioVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kind)) {
            body["Kind"] = request.kind ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCrTemplates",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCrTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCrTemplates(_ request: DescribeCrTemplatesRequest) async throws -> DescribeCrTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCrTemplatesWithOptions(request as! DescribeCrTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEipResourcesWithOptions(_ request: DescribeEipResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEipResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEipResources",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEipResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEipResources(_ request: DescribeEipResourcesRequest) async throws -> DescribeEipResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEipResourcesWithOptions(request as! DescribeEipResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewaySecretDetailsWithOptions(_ request: DescribeGatewaySecretDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewaySecretDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewaySecretDetails",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewaySecretDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewaySecretDetails(_ request: DescribeGatewaySecretDetailsRequest) async throws -> DescribeGatewaySecretDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewaySecretDetailsWithOptions(request as! DescribeGatewaySecretDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGuestClusterAccessLogDashboardsWithOptions(_ request: DescribeGuestClusterAccessLogDashboardsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGuestClusterAccessLogDashboardsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.k8sClusterId)) {
            body["K8sClusterId"] = request.k8sClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGuestClusterAccessLogDashboards",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGuestClusterAccessLogDashboardsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGuestClusterAccessLogDashboards(_ request: DescribeGuestClusterAccessLogDashboardsRequest) async throws -> DescribeGuestClusterAccessLogDashboardsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGuestClusterAccessLogDashboardsWithOptions(request as! DescribeGuestClusterAccessLogDashboardsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGuestClusterNamespacesWithOptions(_ request: DescribeGuestClusterNamespacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGuestClusterNamespacesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.guestClusterID)) {
            body["GuestClusterID"] = request.guestClusterID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showNsLabels)) {
            body["ShowNsLabels"] = request.showNsLabels!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGuestClusterNamespaces",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGuestClusterNamespacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGuestClusterNamespaces(_ request: DescribeGuestClusterNamespacesRequest) async throws -> DescribeGuestClusterNamespacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGuestClusterNamespacesWithOptions(request as! DescribeGuestClusterNamespacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGuestClusterPodsWithOptions(_ request: DescribeGuestClusterPodsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGuestClusterPodsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.guestClusterID)) {
            body["GuestClusterID"] = request.guestClusterID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGuestClusterPods",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGuestClusterPodsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGuestClusterPods(_ request: DescribeGuestClusterPodsRequest) async throws -> DescribeGuestClusterPodsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGuestClusterPodsWithOptions(request as! DescribeGuestClusterPodsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImportedServicesDetailWithOptions(_ request: DescribeImportedServicesDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeImportedServicesDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASMGatewayName)) {
            body["ASMGatewayName"] = request.ASMGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceNamespace)) {
            body["ServiceNamespace"] = request.serviceNamespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeImportedServicesDetail",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeImportedServicesDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImportedServicesDetail(_ request: DescribeImportedServicesDetailRequest) async throws -> DescribeImportedServicesDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeImportedServicesDetailWithOptions(request as! DescribeImportedServicesDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIstioGatewayDomainsWithOptions(_ request: DescribeIstioGatewayDomainsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIstioGatewayDomainsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIstioGatewayDomains",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIstioGatewayDomainsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIstioGatewayDomains(_ request: DescribeIstioGatewayDomainsRequest) async throws -> DescribeIstioGatewayDomainsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeIstioGatewayDomainsWithOptions(request as! DescribeIstioGatewayDomainsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIstioGatewayRouteDetailWithOptions(_ request: DescribeIstioGatewayRouteDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIstioGatewayRouteDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeName)) {
            body["RouteName"] = request.routeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIstioGatewayRouteDetail",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIstioGatewayRouteDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIstioGatewayRouteDetail(_ request: DescribeIstioGatewayRouteDetailRequest) async throws -> DescribeIstioGatewayRouteDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeIstioGatewayRouteDetailWithOptions(request as! DescribeIstioGatewayRouteDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIstioGatewayRoutesWithOptions(_ request: DescribeIstioGatewayRoutesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIstioGatewayRoutesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIstioGatewayRoutes",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIstioGatewayRoutesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIstioGatewayRoutes(_ request: DescribeIstioGatewayRoutesRequest) async throws -> DescribeIstioGatewayRoutesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeIstioGatewayRoutesWithOptions(request as! DescribeIstioGatewayRoutesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMeshMultiClusterNetworkWithOptions(_ request: DescribeMeshMultiClusterNetworkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMeshMultiClusterNetworkResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMeshMultiClusterNetwork",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMeshMultiClusterNetworkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMeshMultiClusterNetwork(_ request: DescribeMeshMultiClusterNetworkRequest) async throws -> DescribeMeshMultiClusterNetworkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMeshMultiClusterNetworkWithOptions(request as! DescribeMeshMultiClusterNetworkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMetadataWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMetadataResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMetadata",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMetadataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMetadata() async throws -> DescribeMetadataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMetadataWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNamespaceScopeSidecarConfigWithOptions(_ request: DescribeNamespaceScopeSidecarConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNamespaceScopeSidecarConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNamespaceScopeSidecarConfig",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNamespaceScopeSidecarConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNamespaceScopeSidecarConfig(_ request: DescribeNamespaceScopeSidecarConfigRequest) async throws -> DescribeNamespaceScopeSidecarConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNamespaceScopeSidecarConfigWithOptions(request as! DescribeNamespaceScopeSidecarConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNodesInstanceTypeWithOptions(_ request: DescribeNodesInstanceTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNodesInstanceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNodesInstanceType",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNodesInstanceTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNodesInstanceType(_ request: DescribeNodesInstanceTypeRequest) async throws -> DescribeNodesInstanceTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNodesInstanceTypeWithOptions(request as! DescribeNodesInstanceTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeReusableSlbWithOptions(_ request: DescribeReusableSlbRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeReusableSlbResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.k8sClusterId)) {
            body["K8sClusterId"] = request.k8sClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lbType)) {
            body["LbType"] = request.lbType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            body["NetworkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeReusableSlb",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeReusableSlbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeReusableSlb(_ request: DescribeReusableSlbRequest) async throws -> DescribeReusableSlbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeReusableSlbWithOptions(request as! DescribeReusableSlbRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshAdditionalStatusWithOptions(_ request: DescribeServiceMeshAdditionalStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceMeshAdditionalStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkMode)) {
            body["CheckMode"] = request.checkMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceMeshAdditionalStatus",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceMeshAdditionalStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshAdditionalStatus(_ request: DescribeServiceMeshAdditionalStatusRequest) async throws -> DescribeServiceMeshAdditionalStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServiceMeshAdditionalStatusWithOptions(request as! DescribeServiceMeshAdditionalStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshClustersWithOptions(_ request: DescribeServiceMeshClustersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceMeshClustersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            body["Offset"] = request.offset!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceMeshClusters",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceMeshClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshClusters(_ request: DescribeServiceMeshClustersRequest) async throws -> DescribeServiceMeshClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServiceMeshClustersWithOptions(request as! DescribeServiceMeshClustersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshDetailWithOptions(_ request: DescribeServiceMeshDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceMeshDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceMeshDetail",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceMeshDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshDetail(_ request: DescribeServiceMeshDetailRequest) async throws -> DescribeServiceMeshDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServiceMeshDetailWithOptions(request as! DescribeServiceMeshDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshKubeconfigWithOptions(_ request: DescribeServiceMeshKubeconfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceMeshKubeconfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            query["PrivateIpAddress"] = request.privateIpAddress!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceMeshKubeconfig",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceMeshKubeconfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshKubeconfig(_ request: DescribeServiceMeshKubeconfigRequest) async throws -> DescribeServiceMeshKubeconfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServiceMeshKubeconfigWithOptions(request as! DescribeServiceMeshKubeconfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshLogsWithOptions(_ request: DescribeServiceMeshLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceMeshLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceMeshLogs",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceMeshLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshLogs(_ request: DescribeServiceMeshLogsRequest) async throws -> DescribeServiceMeshLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServiceMeshLogsWithOptions(request as! DescribeServiceMeshLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshProxyStatusWithOptions(_ request: DescribeServiceMeshProxyStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceMeshProxyStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceMeshProxyStatus",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceMeshProxyStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshProxyStatus(_ request: DescribeServiceMeshProxyStatusRequest) async throws -> DescribeServiceMeshProxyStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServiceMeshProxyStatusWithOptions(request as! DescribeServiceMeshProxyStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshUpgradeStatusWithOptions(_ request: DescribeServiceMeshUpgradeStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceMeshUpgradeStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allIstioGatewayFullNames)) {
            body["AllIstioGatewayFullNames"] = request.allIstioGatewayFullNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.guestClusterIds)) {
            body["GuestClusterIds"] = request.guestClusterIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceMeshUpgradeStatus",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceMeshUpgradeStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshUpgradeStatus(_ request: DescribeServiceMeshUpgradeStatusRequest) async throws -> DescribeServiceMeshUpgradeStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServiceMeshUpgradeStatusWithOptions(request as! DescribeServiceMeshUpgradeStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshVMsWithOptions(_ request: DescribeServiceMeshVMsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceMeshVMsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceMeshVMs",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceMeshVMsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshVMs(_ request: DescribeServiceMeshVMsRequest) async throws -> DescribeServiceMeshVMsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServiceMeshVMsWithOptions(request as! DescribeServiceMeshVMsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshesWithOptions(_ request: DescribeServiceMeshesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceMeshesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceMeshes",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceMeshesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMeshes(_ request: DescribeServiceMeshesRequest) async throws -> DescribeServiceMeshesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServiceMeshesWithOptions(request as! DescribeServiceMeshesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUpgradeVersionWithOptions(_ request: DescribeUpgradeVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUpgradeVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUpgradeVersion",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUpgradeVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUpgradeVersion(_ request: DescribeUpgradeVersionRequest) async throws -> DescribeUpgradeVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUpgradeVersionWithOptions(request as! DescribeUpgradeVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserPermissionsWithOptions(_ request: DescribeUserPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.subAccountUserId)) {
            body["SubAccountUserId"] = request.subAccountUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserPermissions",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserPermissions(_ request: DescribeUserPermissionsRequest) async throws -> DescribeUserPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserPermissionsWithOptions(request as! DescribeUserPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsersWithPermissionsWithOptions(_ request: DescribeUsersWithPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUsersWithPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userType)) {
            body["UserType"] = request.userType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUsersWithPermissions",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUsersWithPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsersWithPermissions(_ request: DescribeUsersWithPermissionsRequest) async throws -> DescribeUsersWithPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUsersWithPermissionsWithOptions(request as! DescribeUsersWithPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVMsInServiceMeshWithOptions(_ request: DescribeVMsInServiceMeshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVMsInServiceMeshResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVMsInServiceMesh",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVMsInServiceMeshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVMsInServiceMesh(_ request: DescribeVMsInServiceMeshRequest) async throws -> DescribeVMsInServiceMeshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVMsInServiceMeshWithOptions(request as! DescribeVMsInServiceMeshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVSwitchesWithOptions(_ request: DescribeVSwitchesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVSwitchesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVSwitches",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVSwitchesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVSwitches(_ request: DescribeVSwitchesRequest) async throws -> DescribeVSwitchesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVSwitchesWithOptions(request as! DescribeVSwitchesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVersionsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVersionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVersions",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVersions() async throws -> DescribeVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVersionsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVpcsWithOptions(_ request: DescribeVpcsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVpcsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVpcs",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVpcsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVpcs(_ request: DescribeVpcsRequest) async throws -> DescribeVpcsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVpcsWithOptions(request as! DescribeVpcsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCaCertWithOptions(_ request: GetCaCertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCaCertResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCaCert",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCaCertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCaCert(_ request: GetCaCertRequest) async throws -> GetCaCertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCaCertWithOptions(request as! GetCaCertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeploymentBySelectorWithOptions(_ tmpReq: GetDeploymentBySelectorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeploymentBySelectorResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetDeploymentBySelectorShrinkRequest = GetDeploymentBySelectorShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.labelSelector)) {
            request.labelSelectorShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.labelSelector, "LabelSelector", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.guestCluster)) {
            body["GuestCluster"] = request.guestCluster ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelSelectorShrink)) {
            body["LabelSelector"] = request.labelSelectorShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.mark)) {
            body["Mark"] = request.mark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nameSpace)) {
            body["NameSpace"] = request.nameSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeploymentBySelector",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeploymentBySelectorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeploymentBySelector(_ request: GetDeploymentBySelectorRequest) async throws -> GetDeploymentBySelectorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeploymentBySelectorWithOptions(request as! GetDeploymentBySelectorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGrafanaDashboardUrlWithOptions(_ request: GetGrafanaDashboardUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGrafanaDashboardUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.k8sClusterId)) {
            body["K8sClusterId"] = request.k8sClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGrafanaDashboardUrl",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGrafanaDashboardUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGrafanaDashboardUrl(_ request: GetGrafanaDashboardUrlRequest) async throws -> GetGrafanaDashboardUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getGrafanaDashboardUrlWithOptions(request as! GetGrafanaDashboardUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegisteredServiceEndpointsWithOptions(_ request: GetRegisteredServiceEndpointsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRegisteredServiceEndpointsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterIds)) {
            body["ClusterIds"] = request.clusterIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            body["ServiceType"] = request.serviceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRegisteredServiceEndpoints",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRegisteredServiceEndpointsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegisteredServiceEndpoints(_ request: GetRegisteredServiceEndpointsRequest) async throws -> GetRegisteredServiceEndpointsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRegisteredServiceEndpointsWithOptions(request as! GetRegisteredServiceEndpointsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegisteredServiceNamespacesWithOptions(_ request: GetRegisteredServiceNamespacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRegisteredServiceNamespacesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRegisteredServiceNamespaces",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRegisteredServiceNamespacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegisteredServiceNamespaces(_ request: GetRegisteredServiceNamespacesRequest) async throws -> GetRegisteredServiceNamespacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRegisteredServiceNamespacesWithOptions(request as! GetRegisteredServiceNamespacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSwimLaneDetailWithOptions(_ request: GetSwimLaneDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSwimLaneDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.swimLaneName)) {
            body["SwimLaneName"] = request.swimLaneName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSwimLaneDetail",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSwimLaneDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSwimLaneDetail(_ request: GetSwimLaneDetailRequest) async throws -> GetSwimLaneDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSwimLaneDetailWithOptions(request as! GetSwimLaneDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSwimLaneGroupListWithOptions(_ request: GetSwimLaneGroupListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSwimLaneGroupListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSwimLaneGroupList",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSwimLaneGroupListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSwimLaneGroupList(_ request: GetSwimLaneGroupListRequest) async throws -> GetSwimLaneGroupListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSwimLaneGroupListWithOptions(request as! GetSwimLaneGroupListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSwimLaneListWithOptions(_ request: GetSwimLaneListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSwimLaneListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSwimLaneList",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSwimLaneListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSwimLaneList(_ request: GetSwimLaneListRequest) async throws -> GetSwimLaneListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSwimLaneListWithOptions(request as! GetSwimLaneListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVmAppMeshInfoWithOptions(_ request: GetVmAppMeshInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVmAppMeshInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVmAppMeshInfo",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVmAppMeshInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVmAppMeshInfo(_ request: GetVmAppMeshInfoRequest) async throws -> GetVmAppMeshInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVmAppMeshInfoWithOptions(request as! GetVmAppMeshInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVmMetaWithOptions(_ request: GetVmMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVmMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVmMeta",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVmMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVmMeta(_ request: GetVmMetaRequest) async throws -> GetVmMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVmMetaWithOptions(request as! GetVmMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantUserPermissionsWithOptions(_ tmpReq: GrantUserPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantUserPermissionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GrantUserPermissionsShrinkRequest = GrantUserPermissionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.subAccountUserIds)) {
            request.subAccountUserIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.subAccountUserIds, "SubAccountUserIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.permissions)) {
            body["Permissions"] = request.permissions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subAccountUserId)) {
            body["SubAccountUserId"] = request.subAccountUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subAccountUserIdsShrink)) {
            body["SubAccountUserIds"] = request.subAccountUserIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantUserPermissions",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantUserPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantUserPermissions(_ request: GrantUserPermissionsRequest) async throws -> GrantUserPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await grantUserPermissionsWithOptions(request as! GrantUserPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceAccountsWithOptions(_ request: ListServiceAccountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceAccountsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServiceAccounts",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceAccounts(_ request: ListServiceAccountsRequest) async throws -> ListServiceAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listServiceAccountsWithOptions(request as! ListServiceAccountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2020-01-11",
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
    public func listWaypointsWithOptions(_ request: ListWaypointsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWaypointsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.continue_)) {
            body["Continue"] = request.continue_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWaypoints",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWaypointsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWaypoints(_ request: ListWaypointsRequest) async throws -> ListWaypointsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWaypointsWithOptions(request as! ListWaypointsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiServerEipResourceWithOptions(_ request: ModifyApiServerEipResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApiServerEipResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiServerEipId)) {
            body["ApiServerEipId"] = request.apiServerEipId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operation)) {
            body["Operation"] = request.operation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApiServerEipResource",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApiServerEipResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiServerEipResource(_ request: ModifyApiServerEipResourceRequest) async throws -> ModifyApiServerEipResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApiServerEipResourceWithOptions(request as! ModifyApiServerEipResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPilotEipResourceWithOptions(_ request: ModifyPilotEipResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyPilotEipResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eipId)) {
            body["EipId"] = request.eipId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isCanary)) {
            body["IsCanary"] = request.isCanary!;
        }
        if (!TeaUtils.Client.isUnset(request.operation)) {
            body["Operation"] = request.operation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyPilotEipResource",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyPilotEipResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPilotEipResource(_ request: ModifyPilotEipResourceRequest) async throws -> ModifyPilotEipResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyPilotEipResourceWithOptions(request as! ModifyPilotEipResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyServiceMeshNameWithOptions(_ request: ModifyServiceMeshNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyServiceMeshNameResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyServiceMeshName",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyServiceMeshNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyServiceMeshName(_ request: ModifyServiceMeshNameRequest) async throws -> ModifyServiceMeshNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyServiceMeshNameWithOptions(request as! ModifyServiceMeshNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reActivateAuditWithOptions(_ request: ReActivateAuditRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReActivateAuditResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableAudit)) {
            body["EnableAudit"] = request.enableAudit!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReActivateAudit",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReActivateAuditResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reActivateAudit(_ request: ReActivateAuditRequest) async throws -> ReActivateAuditResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reActivateAuditWithOptions(request as! ReActivateAuditRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeClusterFromServiceMeshWithOptions(_ request: RemoveClusterFromServiceMeshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveClusterFromServiceMeshResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reserveNamespace)) {
            body["ReserveNamespace"] = request.reserveNamespace!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveClusterFromServiceMesh",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveClusterFromServiceMeshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeClusterFromServiceMesh(_ request: RemoveClusterFromServiceMeshRequest) async throws -> RemoveClusterFromServiceMeshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeClusterFromServiceMeshWithOptions(request as! RemoveClusterFromServiceMeshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeVMFromServiceMeshWithOptions(_ request: RemoveVMFromServiceMeshRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveVMFromServiceMeshResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecsId)) {
            query["EcsId"] = request.ecsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveVMFromServiceMesh",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveVMFromServiceMeshResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeVMFromServiceMesh(_ request: RemoveVMFromServiceMeshRequest) async throws -> RemoveVMFromServiceMeshResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeVMFromServiceMeshWithOptions(request as! RemoveVMFromServiceMeshRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeKubeconfigWithOptions(_ request: RevokeKubeconfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeKubeconfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            body["PrivateIpAddress"] = request.privateIpAddress!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeKubeconfig",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeKubeconfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeKubeconfig(_ request: RevokeKubeconfigRequest) async throws -> RevokeKubeconfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokeKubeconfigWithOptions(request as! RevokeKubeconfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2020-01-11",
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2020-01-11",
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
    public func updateASMGatewayWithOptions(_ request: UpdateASMGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateASMGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["Body"] = request.body ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateASMGateway",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateASMGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateASMGateway(_ request: UpdateASMGatewayRequest) async throws -> UpdateASMGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateASMGatewayWithOptions(request as! UpdateASMGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateASMGatewayImportedServicesWithOptions(_ request: UpdateASMGatewayImportedServicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateASMGatewayImportedServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASMGatewayName)) {
            body["ASMGatewayName"] = request.ASMGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceNames)) {
            body["ServiceNames"] = request.serviceNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceNamespace)) {
            body["ServiceNamespace"] = request.serviceNamespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateASMGatewayImportedServices",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateASMGatewayImportedServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateASMGatewayImportedServices(_ request: UpdateASMGatewayImportedServicesRequest) async throws -> UpdateASMGatewayImportedServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateASMGatewayImportedServicesWithOptions(request as! UpdateASMGatewayImportedServicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateASMNamespaceFromGuestClusterWithOptions(_ request: UpdateASMNamespaceFromGuestClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateASMNamespaceFromGuestClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.k8sClusterId)) {
            body["K8sClusterId"] = request.k8sClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateASMNamespaceFromGuestCluster",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateASMNamespaceFromGuestClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateASMNamespaceFromGuestCluster(_ request: UpdateASMNamespaceFromGuestClusterRequest) async throws -> UpdateASMNamespaceFromGuestClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateASMNamespaceFromGuestClusterWithOptions(request as! UpdateASMNamespaceFromGuestClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateControlPlaneLogConfigWithOptions(_ request: UpdateControlPlaneLogConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateControlPlaneLogConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            body["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.logTTLInDay)) {
            body["LogTTLInDay"] = request.logTTLInDay!;
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            body["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateControlPlaneLogConfig",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateControlPlaneLogConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateControlPlaneLogConfig(_ request: UpdateControlPlaneLogConfigRequest) async throws -> UpdateControlPlaneLogConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateControlPlaneLogConfigWithOptions(request as! UpdateControlPlaneLogConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGuestClusterConfigWithOptions(_ request: UpdateGuestClusterConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGuestClusterConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.guestClusterId)) {
            body["GuestClusterId"] = request.guestClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SMCEnabled)) {
            body["SMCEnabled"] = request.SMCEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGuestClusterConfig",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGuestClusterConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGuestClusterConfig(_ request: UpdateGuestClusterConfigRequest) async throws -> UpdateGuestClusterConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateGuestClusterConfigWithOptions(request as! UpdateGuestClusterConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIstioGatewayRoutesWithOptions(_ tmpReq: UpdateIstioGatewayRoutesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIstioGatewayRoutesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateIstioGatewayRoutesShrinkRequest = UpdateIstioGatewayRoutesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.gatewayRoute)) {
            request.gatewayRouteShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.gatewayRoute, "GatewayRoute", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayRouteShrink)) {
            body["GatewayRoute"] = request.gatewayRouteShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIstioGatewayRoutes",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIstioGatewayRoutesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIstioGatewayRoutes(_ request: UpdateIstioGatewayRoutesRequest) async throws -> UpdateIstioGatewayRoutesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateIstioGatewayRoutesWithOptions(request as! UpdateIstioGatewayRoutesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIstioInjectionConfigWithOptions(_ request: UpdateIstioInjectionConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIstioInjectionConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataPlaneMode)) {
            body["DataPlaneMode"] = request.dataPlaneMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableIstioInjection)) {
            body["EnableIstioInjection"] = request.enableIstioInjection!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSidecarSetInjection)) {
            body["EnableSidecarSetInjection"] = request.enableSidecarSetInjection!;
        }
        if (!TeaUtils.Client.isUnset(request.istioRev)) {
            body["IstioRev"] = request.istioRev ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIstioInjectionConfig",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIstioInjectionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIstioInjectionConfig(_ request: UpdateIstioInjectionConfigRequest) async throws -> UpdateIstioInjectionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateIstioInjectionConfigWithOptions(request as! UpdateIstioInjectionConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIstioRouteAdditionalStatusWithOptions(_ request: UpdateIstioRouteAdditionalStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIstioRouteAdditionalStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            query["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.routeName)) {
            query["RouteName"] = request.routeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.istioGatewayName)) {
            body["IstioGatewayName"] = request.istioGatewayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIstioRouteAdditionalStatus",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIstioRouteAdditionalStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIstioRouteAdditionalStatus(_ request: UpdateIstioRouteAdditionalStatusRequest) async throws -> UpdateIstioRouteAdditionalStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateIstioRouteAdditionalStatusWithOptions(request as! UpdateIstioRouteAdditionalStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMeshCRAggregationWithOptions(_ request: UpdateMeshCRAggregationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMeshCRAggregationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.CPULimit)) {
            body["CPULimit"] = request.CPULimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.CPURequirement)) {
            body["CPURequirement"] = request.CPURequirement ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            body["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.memoryLimit)) {
            body["MemoryLimit"] = request.memoryLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memoryRequirement)) {
            body["MemoryRequirement"] = request.memoryRequirement ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usePublicApiServer)) {
            body["UsePublicApiServer"] = request.usePublicApiServer!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMeshCRAggregation",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMeshCRAggregationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMeshCRAggregation(_ request: UpdateMeshCRAggregationRequest) async throws -> UpdateMeshCRAggregationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMeshCRAggregationWithOptions(request as! UpdateMeshCRAggregationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMeshFeatureWithOptions(_ request: UpdateMeshFeatureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMeshFeatureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessLogGatewayEnabled)) {
            query["AccessLogGatewayEnabled"] = request.accessLogGatewayEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.accessLogSidecarEnabled)) {
            query["AccessLogSidecarEnabled"] = request.accessLogSidecarEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.labelsForOffloadedWorkloads)) {
            query["LabelsForOffloadedWorkloads"] = request.labelsForOffloadedWorkloads ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessLogEnabled)) {
            body["AccessLogEnabled"] = request.accessLogEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.accessLogFile)) {
            body["AccessLogFile"] = request.accessLogFile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessLogFormat)) {
            body["AccessLogFormat"] = request.accessLogFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessLogGatewayLifecycle)) {
            body["AccessLogGatewayLifecycle"] = request.accessLogGatewayLifecycle!;
        }
        if (!TeaUtils.Client.isUnset(request.accessLogProject)) {
            body["AccessLogProject"] = request.accessLogProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessLogServiceEnabled)) {
            body["AccessLogServiceEnabled"] = request.accessLogServiceEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.accessLogServiceHost)) {
            body["AccessLogServiceHost"] = request.accessLogServiceHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessLogServicePort)) {
            body["AccessLogServicePort"] = request.accessLogServicePort!;
        }
        if (!TeaUtils.Client.isUnset(request.accessLogSidecarLifecycle)) {
            body["AccessLogSidecarLifecycle"] = request.accessLogSidecarLifecycle!;
        }
        if (!TeaUtils.Client.isUnset(request.auditProject)) {
            body["AuditProject"] = request.auditProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoInjectionPolicyEnabled)) {
            body["AutoInjectionPolicyEnabled"] = request.autoInjectionPolicyEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.CRAggregationEnabled)) {
            body["CRAggregationEnabled"] = request.CRAggregationEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.certChain)) {
            body["CertChain"] = request.certChain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterSpec)) {
            body["ClusterSpec"] = request.clusterSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cniEnabled)) {
            body["CniEnabled"] = request.cniEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.cniExcludeNamespaces)) {
            body["CniExcludeNamespaces"] = request.cniExcludeNamespaces ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.concurrency)) {
            body["Concurrency"] = request.concurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.configSourceEnabled)) {
            body["ConfigSourceEnabled"] = request.configSourceEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.configSourceNacosID)) {
            body["ConfigSourceNacosID"] = request.configSourceNacosID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customizedPrometheus)) {
            body["CustomizedPrometheus"] = request.customizedPrometheus!;
        }
        if (!TeaUtils.Client.isUnset(request.customizedZipkin)) {
            body["CustomizedZipkin"] = request.customizedZipkin!;
        }
        if (!TeaUtils.Client.isUnset(request.DNSProxyingEnabled)) {
            body["DNSProxyingEnabled"] = request.DNSProxyingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.defaultComponentsScheduleConfig)) {
            body["DefaultComponentsScheduleConfig"] = request.defaultComponentsScheduleConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.discoverySelectors)) {
            body["DiscoverySelectors"] = request.discoverySelectors ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dubboFilterEnabled)) {
            body["DubboFilterEnabled"] = request.dubboFilterEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.enableAudit)) {
            body["EnableAudit"] = request.enableAudit!;
        }
        if (!TeaUtils.Client.isUnset(request.enableAutoDiagnosis)) {
            body["EnableAutoDiagnosis"] = request.enableAutoDiagnosis!;
        }
        if (!TeaUtils.Client.isUnset(request.enableBootstrapXdsAgent)) {
            body["EnableBootstrapXdsAgent"] = request.enableBootstrapXdsAgent!;
        }
        if (!TeaUtils.Client.isUnset(request.enableCRHistory)) {
            body["EnableCRHistory"] = request.enableCRHistory!;
        }
        if (!TeaUtils.Client.isUnset(request.enableNamespacesByDefault)) {
            body["EnableNamespacesByDefault"] = request.enableNamespacesByDefault!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSDSServer)) {
            body["EnableSDSServer"] = request.enableSDSServer!;
        }
        if (!TeaUtils.Client.isUnset(request.excludeIPRanges)) {
            body["ExcludeIPRanges"] = request.excludeIPRanges ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeInboundPorts)) {
            body["ExcludeInboundPorts"] = request.excludeInboundPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeOutboundPorts)) {
            body["ExcludeOutboundPorts"] = request.excludeOutboundPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.existingCaCert)) {
            body["ExistingCaCert"] = request.existingCaCert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.existingCaKey)) {
            body["ExistingCaKey"] = request.existingCaKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.existingRootCaCert)) {
            body["ExistingRootCaCert"] = request.existingRootCaCert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterGatewayClusterConfig)) {
            body["FilterGatewayClusterConfig"] = request.filterGatewayClusterConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayAPIEnabled)) {
            body["GatewayAPIEnabled"] = request.gatewayAPIEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.holdApplicationUntilProxyStarts)) {
            body["HoldApplicationUntilProxyStarts"] = request.holdApplicationUntilProxyStarts!;
        }
        if (!TeaUtils.Client.isUnset(request.http10Enabled)) {
            body["Http10Enabled"] = request.http10Enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.includeIPRanges)) {
            body["IncludeIPRanges"] = request.includeIPRanges ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeInboundPorts)) {
            body["IncludeInboundPorts"] = request.includeInboundPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeOutboundPorts)) {
            body["IncludeOutboundPorts"] = request.includeOutboundPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.integrateKiali)) {
            body["IntegrateKiali"] = request.integrateKiali!;
        }
        if (!TeaUtils.Client.isUnset(request.interceptionMode)) {
            body["InterceptionMode"] = request.interceptionMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kialiArmsAuthTokens)) {
            body["KialiArmsAuthTokens"] = request.kialiArmsAuthTokens ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kialiEnabled)) {
            body["KialiEnabled"] = request.kialiEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.kialiServiceAnnotations)) {
            body["KialiServiceAnnotations"] = request.kialiServiceAnnotations ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lifecycle)) {
            body["Lifecycle"] = request.lifecycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localityLBConf)) {
            body["LocalityLBConf"] = request.localityLBConf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localityLoadBalancing)) {
            body["LocalityLoadBalancing"] = request.localityLoadBalancing!;
        }
        if (!TeaUtils.Client.isUnset(request.logLevel)) {
            body["LogLevel"] = request.logLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.MSEEnabled)) {
            body["MSEEnabled"] = request.MSEEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.multiBufferEnabled)) {
            body["MultiBufferEnabled"] = request.multiBufferEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.multiBufferPollDelay)) {
            body["MultiBufferPollDelay"] = request.multiBufferPollDelay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mysqlFilterEnabled)) {
            body["MysqlFilterEnabled"] = request.mysqlFilterEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.NFDEnabled)) {
            body["NFDEnabled"] = request.NFDEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.NFDLabelPruned)) {
            body["NFDLabelPruned"] = request.NFDLabelPruned!;
        }
        if (!TeaUtils.Client.isUnset(request.OPAInjectorCPULimit)) {
            body["OPAInjectorCPULimit"] = request.OPAInjectorCPULimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPAInjectorCPURequirement)) {
            body["OPAInjectorCPURequirement"] = request.OPAInjectorCPURequirement ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPAInjectorMemoryLimit)) {
            body["OPAInjectorMemoryLimit"] = request.OPAInjectorMemoryLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPAInjectorMemoryRequirement)) {
            body["OPAInjectorMemoryRequirement"] = request.OPAInjectorMemoryRequirement ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPALimitCPU)) {
            body["OPALimitCPU"] = request.OPALimitCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPALimitMemory)) {
            body["OPALimitMemory"] = request.OPALimitMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPALogLevel)) {
            body["OPALogLevel"] = request.OPALogLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPARequestCPU)) {
            body["OPARequestCPU"] = request.OPARequestCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPARequestMemory)) {
            body["OPARequestMemory"] = request.OPARequestMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OPAScopeInjected)) {
            body["OPAScopeInjected"] = request.OPAScopeInjected!;
        }
        if (!TeaUtils.Client.isUnset(request.opaEnabled)) {
            body["OpaEnabled"] = request.opaEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.openAgentPolicy)) {
            body["OpenAgentPolicy"] = request.openAgentPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.outboundTrafficPolicy)) {
            body["OutboundTrafficPolicy"] = request.outboundTrafficPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pilotEnableQuicListeners)) {
            body["PilotEnableQuicListeners"] = request.pilotEnableQuicListeners!;
        }
        if (!TeaUtils.Client.isUnset(request.prometheusUrl)) {
            body["PrometheusUrl"] = request.prometheusUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyInitCPUResourceLimit)) {
            body["ProxyInitCPUResourceLimit"] = request.proxyInitCPUResourceLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyInitCPUResourceRequest)) {
            body["ProxyInitCPUResourceRequest"] = request.proxyInitCPUResourceRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyInitMemoryResourceLimit)) {
            body["ProxyInitMemoryResourceLimit"] = request.proxyInitMemoryResourceLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyInitMemoryResourceRequest)) {
            body["ProxyInitMemoryResourceRequest"] = request.proxyInitMemoryResourceRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyLimitCPU)) {
            body["ProxyLimitCPU"] = request.proxyLimitCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyLimitMemory)) {
            body["ProxyLimitMemory"] = request.proxyLimitMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyRequestCPU)) {
            body["ProxyRequestCPU"] = request.proxyRequestCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyRequestMemory)) {
            body["ProxyRequestMemory"] = request.proxyRequestMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyStatsMatcher)) {
            body["ProxyStatsMatcher"] = request.proxyStatsMatcher ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.redisFilterEnabled)) {
            body["RedisFilterEnabled"] = request.redisFilterEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.SMCEnabled)) {
            body["SMCEnabled"] = request.SMCEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarInjectorLimitCPU)) {
            body["SidecarInjectorLimitCPU"] = request.sidecarInjectorLimitCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarInjectorLimitMemory)) {
            body["SidecarInjectorLimitMemory"] = request.sidecarInjectorLimitMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarInjectorRequestCPU)) {
            body["SidecarInjectorRequestCPU"] = request.sidecarInjectorRequestCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarInjectorRequestMemory)) {
            body["SidecarInjectorRequestMemory"] = request.sidecarInjectorRequestMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarInjectorWebhookAsYaml)) {
            body["SidecarInjectorWebhookAsYaml"] = request.sidecarInjectorWebhookAsYaml ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telemetry)) {
            body["Telemetry"] = request.telemetry!;
        }
        if (!TeaUtils.Client.isUnset(request.terminationDrainDuration)) {
            body["TerminationDrainDuration"] = request.terminationDrainDuration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thriftFilterEnabled)) {
            body["ThriftFilterEnabled"] = request.thriftFilterEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.traceCustomTags)) {
            body["TraceCustomTags"] = request.traceCustomTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceMaxPathTagLength)) {
            body["TraceMaxPathTagLength"] = request.traceMaxPathTagLength ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceSampling)) {
            body["TraceSampling"] = request.traceSampling!;
        }
        if (!TeaUtils.Client.isUnset(request.tracing)) {
            body["Tracing"] = request.tracing!;
        }
        if (!TeaUtils.Client.isUnset(request.tracingOnExtZipkinLimitCPU)) {
            body["TracingOnExtZipkinLimitCPU"] = request.tracingOnExtZipkinLimitCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracingOnExtZipkinLimitMemory)) {
            body["TracingOnExtZipkinLimitMemory"] = request.tracingOnExtZipkinLimitMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracingOnExtZipkinReplicaCount)) {
            body["TracingOnExtZipkinReplicaCount"] = request.tracingOnExtZipkinReplicaCount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracingOnExtZipkinRequestCPU)) {
            body["TracingOnExtZipkinRequestCPU"] = request.tracingOnExtZipkinRequestCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracingOnExtZipkinRequestMemory)) {
            body["TracingOnExtZipkinRequestMemory"] = request.tracingOnExtZipkinRequestMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webAssemblyFilterEnabled)) {
            body["WebAssemblyFilterEnabled"] = request.webAssemblyFilterEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMeshFeature",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMeshFeatureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMeshFeature(_ request: UpdateMeshFeatureRequest) async throws -> UpdateMeshFeatureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMeshFeatureWithOptions(request as! UpdateMeshFeatureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMeshMultiClusterNetworkWithOptions(_ tmpReq: UpdateMeshMultiClusterNetworkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMeshMultiClusterNetworkResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateMeshMultiClusterNetworkShrinkRequest = UpdateMeshMultiClusterNetworkShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.multiClusterNetworks)) {
            request.multiClusterNetworksShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.multiClusterNetworks, "MultiClusterNetworks", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.multiClusterNetworksShrink)) {
            body["MultiClusterNetworks"] = request.multiClusterNetworksShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMeshMultiClusterNetwork",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMeshMultiClusterNetworkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMeshMultiClusterNetwork(_ request: UpdateMeshMultiClusterNetworkRequest) async throws -> UpdateMeshMultiClusterNetworkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMeshMultiClusterNetworkWithOptions(request as! UpdateMeshMultiClusterNetworkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespaceScopeSidecarConfigWithOptions(_ tmpReq: UpdateNamespaceScopeSidecarConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNamespaceScopeSidecarConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateNamespaceScopeSidecarConfigShrinkRequest = UpdateNamespaceScopeSidecarConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.scaledSidecarResource)) {
            request.scaledSidecarResourceShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scaledSidecarResource, "ScaledSidecarResource", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.concurrency)) {
            body["Concurrency"] = request.concurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.enableCoreDump)) {
            body["EnableCoreDump"] = request.enableCoreDump!;
        }
        if (!TeaUtils.Client.isUnset(request.excludeIPRanges)) {
            body["ExcludeIPRanges"] = request.excludeIPRanges ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeInboundPorts)) {
            body["ExcludeInboundPorts"] = request.excludeInboundPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeOutboundPorts)) {
            body["ExcludeOutboundPorts"] = request.excludeOutboundPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.holdApplicationUntilProxyStarts)) {
            body["HoldApplicationUntilProxyStarts"] = request.holdApplicationUntilProxyStarts!;
        }
        if (!TeaUtils.Client.isUnset(request.includeIPRanges)) {
            body["IncludeIPRanges"] = request.includeIPRanges ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeInboundPorts)) {
            body["IncludeInboundPorts"] = request.includeInboundPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeOutboundPorts)) {
            body["IncludeOutboundPorts"] = request.includeOutboundPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.interceptionMode)) {
            body["InterceptionMode"] = request.interceptionMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.istioDNSProxyEnabled)) {
            body["IstioDNSProxyEnabled"] = request.istioDNSProxyEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.lifecycle)) {
            body["Lifecycle"] = request.lifecycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logLevel)) {
            body["LogLevel"] = request.logLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postStart)) {
            body["PostStart"] = request.postStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preStop)) {
            body["PreStop"] = request.preStop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privileged)) {
            body["Privileged"] = request.privileged!;
        }
        if (!TeaUtils.Client.isUnset(request.proxyInitAckSloCPUResourceLimit)) {
            body["ProxyInitAckSloCPUResourceLimit"] = request.proxyInitAckSloCPUResourceLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyInitAckSloCPUResourceRequest)) {
            body["ProxyInitAckSloCPUResourceRequest"] = request.proxyInitAckSloCPUResourceRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyInitAckSloMemoryResourceLimit)) {
            body["ProxyInitAckSloMemoryResourceLimit"] = request.proxyInitAckSloMemoryResourceLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyInitAckSloMemoryResourceRequest)) {
            body["ProxyInitAckSloMemoryResourceRequest"] = request.proxyInitAckSloMemoryResourceRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyInitCPUResourceLimit)) {
            body["ProxyInitCPUResourceLimit"] = request.proxyInitCPUResourceLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyInitCPUResourceRequest)) {
            body["ProxyInitCPUResourceRequest"] = request.proxyInitCPUResourceRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyInitMemoryResourceLimit)) {
            body["ProxyInitMemoryResourceLimit"] = request.proxyInitMemoryResourceLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyInitMemoryResourceRequest)) {
            body["ProxyInitMemoryResourceRequest"] = request.proxyInitMemoryResourceRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyMetadata)) {
            body["ProxyMetadata"] = request.proxyMetadata ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyStatsMatcher)) {
            body["ProxyStatsMatcher"] = request.proxyStatsMatcher ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readinessFailureThreshold)) {
            body["ReadinessFailureThreshold"] = request.readinessFailureThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.readinessInitialDelaySeconds)) {
            body["ReadinessInitialDelaySeconds"] = request.readinessInitialDelaySeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.readinessPeriodSeconds)) {
            body["ReadinessPeriodSeconds"] = request.readinessPeriodSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.runtimeValues)) {
            body["RuntimeValues"] = request.runtimeValues ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SMCEnabled)) {
            body["SMCEnabled"] = request.SMCEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.scaledSidecarResourceShrink)) {
            body["ScaledSidecarResource"] = request.scaledSidecarResourceShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarProxyAckSloCPUResourceLimit)) {
            body["SidecarProxyAckSloCPUResourceLimit"] = request.sidecarProxyAckSloCPUResourceLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarProxyAckSloCPUResourceRequest)) {
            body["SidecarProxyAckSloCPUResourceRequest"] = request.sidecarProxyAckSloCPUResourceRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarProxyAckSloMemoryResourceLimit)) {
            body["SidecarProxyAckSloMemoryResourceLimit"] = request.sidecarProxyAckSloMemoryResourceLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarProxyAckSloMemoryResourceRequest)) {
            body["SidecarProxyAckSloMemoryResourceRequest"] = request.sidecarProxyAckSloMemoryResourceRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarProxyCPUResourceLimit)) {
            body["SidecarProxyCPUResourceLimit"] = request.sidecarProxyCPUResourceLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarProxyCPUResourceRequest)) {
            body["SidecarProxyCPUResourceRequest"] = request.sidecarProxyCPUResourceRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarProxyMemoryResourceLimit)) {
            body["SidecarProxyMemoryResourceLimit"] = request.sidecarProxyMemoryResourceLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sidecarProxyMemoryResourceRequest)) {
            body["SidecarProxyMemoryResourceRequest"] = request.sidecarProxyMemoryResourceRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminationDrainDuration)) {
            body["TerminationDrainDuration"] = request.terminationDrainDuration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracing)) {
            body["Tracing"] = request.tracing ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNamespaceScopeSidecarConfig",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNamespaceScopeSidecarConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespaceScopeSidecarConfig(_ request: UpdateNamespaceScopeSidecarConfigRequest) async throws -> UpdateNamespaceScopeSidecarConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateNamespaceScopeSidecarConfigWithOptions(request as! UpdateNamespaceScopeSidecarConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSwimLaneWithOptions(_ request: UpdateSwimLaneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSwimLaneResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelSelectorKey)) {
            body["LabelSelectorKey"] = request.labelSelectorKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelSelectorValue)) {
            body["LabelSelectorValue"] = request.labelSelectorValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.servicesList)) {
            body["ServicesList"] = request.servicesList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.swimLaneName)) {
            body["SwimLaneName"] = request.swimLaneName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSwimLane",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSwimLaneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSwimLane(_ request: UpdateSwimLaneRequest) async throws -> UpdateSwimLaneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSwimLaneWithOptions(request as! UpdateSwimLaneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSwimLaneGroupWithOptions(_ request: UpdateSwimLaneGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSwimLaneGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fallbackTarget)) {
            body["FallbackTarget"] = request.fallbackTarget ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ingressRoutingStrategy)) {
            body["IngressRoutingStrategy"] = request.ingressRoutingStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceLevelFallbackTarget)) {
            body["ServiceLevelFallbackTarget"] = request.serviceLevelFallbackTarget ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.servicesList)) {
            body["ServicesList"] = request.servicesList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.weightedIngressRule)) {
            body["WeightedIngressRule"] = request.weightedIngressRule ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSwimLaneGroup",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSwimLaneGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSwimLaneGroup(_ request: UpdateSwimLaneGroupRequest) async throws -> UpdateSwimLaneGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSwimLaneGroupWithOptions(request as! UpdateSwimLaneGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWaypointWithOptions(_ request: UpdateWaypointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWaypointResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.HPAEnabled)) {
            body["HPAEnabled"] = request.HPAEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.HPAMaxReplicas)) {
            body["HPAMaxReplicas"] = request.HPAMaxReplicas!;
        }
        if (!TeaUtils.Client.isUnset(request.HPAMinReplicas)) {
            body["HPAMinReplicas"] = request.HPAMinReplicas!;
        }
        if (!TeaUtils.Client.isUnset(request.HPATargetCPU)) {
            body["HPATargetCPU"] = request.HPATargetCPU!;
        }
        if (!TeaUtils.Client.isUnset(request.HPATargetMemory)) {
            body["HPATargetMemory"] = request.HPATargetMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.limitCPU)) {
            body["LimitCPU"] = request.limitCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limitMemory)) {
            body["LimitMemory"] = request.limitMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferECI)) {
            body["PreferECI"] = request.preferECI!;
        }
        if (!TeaUtils.Client.isUnset(request.replicas)) {
            body["Replicas"] = request.replicas!;
        }
        if (!TeaUtils.Client.isUnset(request.requestCPU)) {
            body["RequestCPU"] = request.requestCPU ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestMemory)) {
            body["RequestMemory"] = request.requestMemory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWaypoint",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWaypointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWaypoint(_ request: UpdateWaypointRequest) async throws -> UpdateWaypointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWaypointWithOptions(request as! UpdateWaypointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeMeshEditionPartiallyWithOptions(_ request: UpgradeMeshEditionPartiallyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeMeshEditionPartiallyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASMGatewayContinue)) {
            body["ASMGatewayContinue"] = request.ASMGatewayContinue!;
        }
        if (!TeaUtils.Client.isUnset(request.expectedVersion)) {
            body["ExpectedVersion"] = request.expectedVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preCheck)) {
            body["PreCheck"] = request.preCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            body["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchToPro)) {
            body["SwitchToPro"] = request.switchToPro!;
        }
        if (!TeaUtils.Client.isUnset(request.upgradeGatewayRecords)) {
            body["UpgradeGatewayRecords"] = request.upgradeGatewayRecords ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeMeshEditionPartially",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeMeshEditionPartiallyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeMeshEditionPartially(_ request: UpgradeMeshEditionPartiallyRequest) async throws -> UpgradeMeshEditionPartiallyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeMeshEditionPartiallyWithOptions(request as! UpgradeMeshEditionPartiallyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeMeshVersionWithOptions(_ request: UpgradeMeshVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeMeshVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.preCheck)) {
            query["PreCheck"] = request.preCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceMeshId)) {
            query["ServiceMeshId"] = request.serviceMeshId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeMeshVersion",
            "version": "2020-01-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeMeshVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeMeshVersion(_ request: UpgradeMeshVersionRequest) async throws -> UpgradeMeshVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeMeshVersionWithOptions(request as! UpgradeMeshVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
