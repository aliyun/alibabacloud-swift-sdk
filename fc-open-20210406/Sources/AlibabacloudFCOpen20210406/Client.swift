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
            "ap-northeast-1": "account-id.ap-northeast-1.fc.aliyuncs.com",
            "ap-south-1": "account-id.ap-south-1.fc.aliyuncs.com",
            "ap-southeast-1": "account-id.ap-southeast-1.fc.aliyuncs.com",
            "ap-southeast-2": "account-id.ap-southeast-2.fc.aliyuncs.com",
            "ap-southeast-3": "account-id.ap-southeast-3.fc.aliyuncs.com",
            "ap-southeast-5": "account-id.ap-southeast-5.fc.aliyuncs.com",
            "cn-beijing": "account-id.cn-beijing.fc.aliyuncs.com",
            "cn-chengdu": "account-id.cn-chengdu.fc.aliyuncs.com",
            "cn-hangzhou": "account-id.cn-hangzhou.fc.aliyuncs.com",
            "cn-hangzhou-finance": "account-id.cn-hangzhou-finance.fc.aliyuncs.com",
            "cn-hongkong": "account-id.cn-hongkong.fc.aliyuncs.com",
            "cn-huhehaote": "account-id.cn-huhehaote.fc.aliyuncs.com",
            "cn-north-2-gov-1": "account-id.cn-north-2-gov-1.fc.aliyuncs.com",
            "cn-qingdao": "account-id.cn-qingdao.fc.aliyuncs.com",
            "cn-shanghai": "account-id.cn-shanghai.fc.aliyuncs.com",
            "cn-shenzhen": "account-id.cn-shenzhen.fc.aliyuncs.com",
            "cn-zhangjiakou": "account-id.cn-zhangjiakou.fc.aliyuncs.com",
            "eu-central-1": "account-id.eu-central-1.fc.aliyuncs.com",
            "eu-west-1": "account-id.eu-west-1.fc.aliyuncs.com",
            "us-east-1": "account-id.us-east-1.fc.aliyuncs.com",
            "us-west-1": "account-id.us-west-1.fc.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("fc-open", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func claimGPUInstanceWithOptions(_ request: ClaimGPUInstanceRequest, _ headers: ClaimGPUInstanceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ClaimGPUInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diskPerformanceLevel)) {
            body["diskPerformanceLevel"] = request.diskPerformanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskSizeGigabytes)) {
            body["diskSizeGigabytes"] = request.diskSizeGigabytes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["imageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["instanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetBandwidthOut)) {
            body["internetBandwidthOut"] = request.internetBandwidthOut ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.role)) {
            body["role"] = request.role ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sgId)) {
            body["sgId"] = request.sgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCidrIp)) {
            body["sourceCidrIp"] = request.sourceCidrIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tcpPortRange)) {
            body["tcpPortRange"] = request.tcpPortRange ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.udpPortRange)) {
            body["udpPortRange"] = request.udpPortRange ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["vpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vswId)) {
            body["vswId"] = request.vswId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ClaimGPUInstance",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/gpuInstances",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ClaimGPUInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func claimGPUInstance(_ request: ClaimGPUInstanceRequest) async throws -> ClaimGPUInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ClaimGPUInstanceHeaders = ClaimGPUInstanceHeaders([:])
        return try await claimGPUInstanceWithOptions(request as! ClaimGPUInstanceRequest, headers as! ClaimGPUInstanceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAliasWithOptions(_ serviceName: String, _ request: CreateAliasRequest, _ headers: CreateAliasHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAliasResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.additionalVersionWeight)) {
            body["additionalVersionWeight"] = request.additionalVersionWeight ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.aliasName)) {
            body["aliasName"] = request.aliasName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resolvePolicy)) {
            body["resolvePolicy"] = request.resolvePolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routePolicy)) {
            body["routePolicy"] = request.routePolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            body["versionId"] = request.versionId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAlias",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/aliases",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAliasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlias(_ serviceName: String, _ request: CreateAliasRequest) async throws -> CreateAliasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateAliasHeaders = CreateAliasHeaders([:])
        return try await createAliasWithOptions(serviceName as! String, request as! CreateAliasRequest, headers as! CreateAliasHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomDomainWithOptions(_ request: CreateCustomDomainRequest, _ headers: CreateCustomDomainHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCustomDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certConfig)) {
            body["certConfig"] = request.certConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            body["domainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeConfig)) {
            body["routeConfig"] = request.routeConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.tlsConfig)) {
            body["tlsConfig"] = request.tlsConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.wafConfig)) {
            body["wafConfig"] = request.wafConfig!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCustomDomain",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/custom-domains",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCustomDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomDomain(_ request: CreateCustomDomainRequest) async throws -> CreateCustomDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateCustomDomainHeaders = CreateCustomDomainHeaders([:])
        return try await createCustomDomainWithOptions(request as! CreateCustomDomainRequest, headers as! CreateCustomDomainHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFunctionWithOptions(_ serviceName: String, _ request: CreateFunctionRequest, _ headers: CreateFunctionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFunctionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caPort)) {
            body["caPort"] = request.caPort!;
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code!;
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.customContainerConfig)) {
            body["customContainerConfig"] = request.customContainerConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.customDNS)) {
            body["customDNS"] = request.customDNS!;
        }
        if (!TeaUtils.Client.isUnset(request.customHealthCheckConfig)) {
            body["customHealthCheckConfig"] = request.customHealthCheckConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.customRuntimeConfig)) {
            body["customRuntimeConfig"] = request.customRuntimeConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskSize)) {
            body["diskSize"] = request.diskSize!;
        }
        if (!TeaUtils.Client.isUnset(request.environmentVariables)) {
            body["environmentVariables"] = request.environmentVariables ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.functionName)) {
            body["functionName"] = request.functionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gpuMemorySize)) {
            body["gpuMemorySize"] = request.gpuMemorySize!;
        }
        if (!TeaUtils.Client.isUnset(request.handler)) {
            body["handler"] = request.handler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initializationTimeout)) {
            body["initializationTimeout"] = request.initializationTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.initializer)) {
            body["initializer"] = request.initializer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceConcurrency)) {
            body["instanceConcurrency"] = request.instanceConcurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceLifecycleConfig)) {
            body["instanceLifecycleConfig"] = request.instanceLifecycleConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceSoftConcurrency)) {
            body["instanceSoftConcurrency"] = request.instanceSoftConcurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["instanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.layers)) {
            body["layers"] = request.layers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.memorySize)) {
            body["memorySize"] = request.memorySize!;
        }
        if (!TeaUtils.Client.isUnset(request.runtime)) {
            body["runtime"] = request.runtime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            body["timeout"] = request.timeout!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcCodeChecksum)) {
            realHeaders["X-Fc-Code-Checksum"] = TeaUtils.Client.toJSONString(headers.xFcCodeChecksum);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFunction",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFunctionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFunction(_ serviceName: String, _ request: CreateFunctionRequest) async throws -> CreateFunctionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateFunctionHeaders = CreateFunctionHeaders([:])
        return try await createFunctionWithOptions(serviceName as! String, request as! CreateFunctionRequest, headers as! CreateFunctionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLayerVersionWithOptions(_ layerName: String, _ request: CreateLayerVersionRequest, _ headers: CreateLayerVersionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLayerVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["Code"] = request.code!;
        }
        if (!TeaUtils.Client.isUnset(request.compatibleRuntime)) {
            body["compatibleRuntime"] = request.compatibleRuntime ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLayerVersion",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/layers/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(layerName) + "/versions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLayerVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLayerVersion(_ layerName: String, _ request: CreateLayerVersionRequest) async throws -> CreateLayerVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateLayerVersionHeaders = CreateLayerVersionHeaders([:])
        return try await createLayerVersionWithOptions(layerName as! String, request as! CreateLayerVersionRequest, headers as! CreateLayerVersionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceWithOptions(_ request: CreateServiceRequest, _ headers: CreateServiceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetAccess)) {
            body["internetAccess"] = request.internetAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.logConfig)) {
            body["logConfig"] = request.logConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.nasConfig)) {
            body["nasConfig"] = request.nasConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.ossMountConfig)) {
            body["ossMountConfig"] = request.ossMountConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.role)) {
            body["role"] = request.role ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            body["serviceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracingConfig)) {
            body["tracingConfig"] = request.tracingConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.vpcConfig)) {
            body["vpcConfig"] = request.vpcConfig!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateService",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services",
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
    public func createService(_ request: CreateServiceRequest) async throws -> CreateServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateServiceHeaders = CreateServiceHeaders([:])
        return try await createServiceWithOptions(request as! CreateServiceRequest, headers as! CreateServiceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTriggerWithOptions(_ serviceName: String, _ functionName: String, _ request: CreateTriggerRequest, _ headers: CreateTriggerHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invocationRole)) {
            body["invocationRole"] = request.invocationRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            body["qualifier"] = request.qualifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceArn)) {
            body["sourceArn"] = request.sourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerConfig)) {
            body["triggerConfig"] = request.triggerConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerName)) {
            body["triggerName"] = request.triggerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerType)) {
            body["triggerType"] = request.triggerType ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTrigger",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/triggers",
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
    public func createTrigger(_ serviceName: String, _ functionName: String, _ request: CreateTriggerRequest) async throws -> CreateTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateTriggerHeaders = CreateTriggerHeaders([:])
        return try await createTriggerWithOptions(serviceName as! String, functionName as! String, request as! CreateTriggerRequest, headers as! CreateTriggerHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVpcBindingWithOptions(_ serviceName: String, _ request: CreateVpcBindingRequest, _ headers: CreateVpcBindingHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVpcBindingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["vpcId"] = request.vpcId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVpcBinding",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/bindings",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVpcBindingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVpcBinding(_ serviceName: String, _ request: CreateVpcBindingRequest) async throws -> CreateVpcBindingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateVpcBindingHeaders = CreateVpcBindingHeaders([:])
        return try await createVpcBindingWithOptions(serviceName as! String, request as! CreateVpcBindingRequest, headers as! CreateVpcBindingHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAliasWithOptions(_ serviceName: String, _ aliasName: String, _ headers: DeleteAliasHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAliasResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.ifMatch)) {
            realHeaders["If-Match"] = TeaUtils.Client.toJSONString(headers.ifMatch);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAlias",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/aliases/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(aliasName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAliasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlias(_ serviceName: String, _ aliasName: String) async throws -> DeleteAliasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteAliasHeaders = DeleteAliasHeaders([:])
        return try await deleteAliasWithOptions(serviceName as! String, aliasName as! String, headers as! DeleteAliasHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomDomainWithOptions(_ domainName: String, _ headers: DeleteCustomDomainHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCustomDomainResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCustomDomain",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/custom-domains/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(domainName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCustomDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomDomain(_ domainName: String) async throws -> DeleteCustomDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteCustomDomainHeaders = DeleteCustomDomainHeaders([:])
        return try await deleteCustomDomainWithOptions(domainName as! String, headers as! DeleteCustomDomainHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunctionWithOptions(_ serviceName: String, _ functionName: String, _ headers: DeleteFunctionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFunctionResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.ifMatch)) {
            realHeaders["If-Match"] = TeaUtils.Client.toJSONString(headers.ifMatch);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFunction",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFunctionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunction(_ serviceName: String, _ functionName: String) async throws -> DeleteFunctionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteFunctionHeaders = DeleteFunctionHeaders([:])
        return try await deleteFunctionWithOptions(serviceName as! String, functionName as! String, headers as! DeleteFunctionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunctionAsyncInvokeConfigWithOptions(_ serviceName: String, _ functionName: String, _ request: DeleteFunctionAsyncInvokeConfigRequest, _ headers: DeleteFunctionAsyncInvokeConfigHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFunctionAsyncInvokeConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFunctionAsyncInvokeConfig",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/async-invoke-config",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFunctionAsyncInvokeConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunctionAsyncInvokeConfig(_ serviceName: String, _ functionName: String, _ request: DeleteFunctionAsyncInvokeConfigRequest) async throws -> DeleteFunctionAsyncInvokeConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteFunctionAsyncInvokeConfigHeaders = DeleteFunctionAsyncInvokeConfigHeaders([:])
        return try await deleteFunctionAsyncInvokeConfigWithOptions(serviceName as! String, functionName as! String, request as! DeleteFunctionAsyncInvokeConfigRequest, headers as! DeleteFunctionAsyncInvokeConfigHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunctionOnDemandConfigWithOptions(_ serviceName: String, _ functionName: String, _ request: DeleteFunctionOnDemandConfigRequest, _ headers: DeleteFunctionOnDemandConfigHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFunctionOnDemandConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.ifMatch)) {
            realHeaders["If-Match"] = TeaUtils.Client.toJSONString(headers.ifMatch);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFunctionOnDemandConfig",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/on-demand-config",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFunctionOnDemandConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunctionOnDemandConfig(_ serviceName: String, _ functionName: String, _ request: DeleteFunctionOnDemandConfigRequest) async throws -> DeleteFunctionOnDemandConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteFunctionOnDemandConfigHeaders = DeleteFunctionOnDemandConfigHeaders([:])
        return try await deleteFunctionOnDemandConfigWithOptions(serviceName as! String, functionName as! String, request as! DeleteFunctionOnDemandConfigRequest, headers as! DeleteFunctionOnDemandConfigHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLayerVersionWithOptions(_ layerName: String, _ version: String, _ headers: DeleteLayerVersionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLayerVersionResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLayerVersion",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/layers/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(layerName) + "/versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(version),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLayerVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLayerVersion(_ layerName: String, _ version: String) async throws -> DeleteLayerVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteLayerVersionHeaders = DeleteLayerVersionHeaders([:])
        return try await deleteLayerVersionWithOptions(layerName as! String, version as! String, headers as! DeleteLayerVersionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceWithOptions(_ serviceName: String, _ headers: DeleteServiceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.ifMatch)) {
            realHeaders["If-Match"] = TeaUtils.Client.toJSONString(headers.ifMatch);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteService",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteService(_ serviceName: String) async throws -> DeleteServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteServiceHeaders = DeleteServiceHeaders([:])
        return try await deleteServiceWithOptions(serviceName as! String, headers as! DeleteServiceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceVersionWithOptions(_ serviceName: String, _ versionId: String, _ headers: DeleteServiceVersionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceVersionResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceVersion",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(versionId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceVersion(_ serviceName: String, _ versionId: String) async throws -> DeleteServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteServiceVersionHeaders = DeleteServiceVersionHeaders([:])
        return try await deleteServiceVersionWithOptions(serviceName as! String, versionId as! String, headers as! DeleteServiceVersionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTriggerWithOptions(_ serviceName: String, _ functionName: String, _ triggerName: String, _ headers: DeleteTriggerHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTriggerResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.ifMatch)) {
            realHeaders["If-Match"] = TeaUtils.Client.toJSONString(headers.ifMatch);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTrigger",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/triggers/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(triggerName),
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
    public func deleteTrigger(_ serviceName: String, _ functionName: String, _ triggerName: String) async throws -> DeleteTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteTriggerHeaders = DeleteTriggerHeaders([:])
        return try await deleteTriggerWithOptions(serviceName as! String, functionName as! String, triggerName as! String, headers as! DeleteTriggerHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVpcBindingWithOptions(_ serviceName: String, _ vpcId: String, _ headers: DeleteVpcBindingHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVpcBindingResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVpcBinding",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/bindings/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(vpcId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVpcBindingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVpcBinding(_ serviceName: String, _ vpcId: String) async throws -> DeleteVpcBindingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteVpcBindingHeaders = DeleteVpcBindingHeaders([:])
        return try await deleteVpcBindingWithOptions(serviceName as! String, vpcId as! String, headers as! DeleteVpcBindingHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deregisterEventSourceWithOptions(_ serviceName: String, _ functionName: String, _ sourceArn: String, _ request: DeregisterEventSourceRequest, _ headers: DeregisterEventSourceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeregisterEventSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeregisterEventSource",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/event-sources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceArn),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeregisterEventSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deregisterEventSource(_ serviceName: String, _ functionName: String, _ sourceArn: String, _ request: DeregisterEventSourceRequest) async throws -> DeregisterEventSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeregisterEventSourceHeaders = DeregisterEventSourceHeaders([:])
        return try await deregisterEventSourceWithOptions(serviceName as! String, functionName as! String, sourceArn as! String, request as! DeregisterEventSourceRequest, headers as! DeregisterEventSourceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAccountSettingsWithOptions(_ headers: GetAccountSettingsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAccountSettingsResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAccountSettings",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/account-settings",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAccountSettingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAccountSettings() async throws -> GetAccountSettingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetAccountSettingsHeaders = GetAccountSettingsHeaders([:])
        return try await getAccountSettingsWithOptions(headers as! GetAccountSettingsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAliasWithOptions(_ serviceName: String, _ aliasName: String, _ headers: GetAliasHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAliasResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAlias",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/aliases/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(aliasName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAliasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlias(_ serviceName: String, _ aliasName: String) async throws -> GetAliasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetAliasHeaders = GetAliasHeaders([:])
        return try await getAliasWithOptions(serviceName as! String, aliasName as! String, headers as! GetAliasHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomDomainWithOptions(_ domainName: String, _ headers: GetCustomDomainHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomDomainResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomDomain",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/custom-domains/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(domainName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomDomain(_ domainName: String) async throws -> GetCustomDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetCustomDomainHeaders = GetCustomDomainHeaders([:])
        return try await getCustomDomainWithOptions(domainName as! String, headers as! GetCustomDomainHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionWithOptions(_ serviceName: String, _ functionName: String, _ request: GetFunctionRequest, _ headers: GetFunctionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFunctionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFunction",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFunctionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunction(_ serviceName: String, _ functionName: String, _ request: GetFunctionRequest) async throws -> GetFunctionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetFunctionHeaders = GetFunctionHeaders([:])
        return try await getFunctionWithOptions(serviceName as! String, functionName as! String, request as! GetFunctionRequest, headers as! GetFunctionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionAsyncInvokeConfigWithOptions(_ serviceName: String, _ functionName: String, _ request: GetFunctionAsyncInvokeConfigRequest, _ headers: GetFunctionAsyncInvokeConfigHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFunctionAsyncInvokeConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFunctionAsyncInvokeConfig",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/async-invoke-config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFunctionAsyncInvokeConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionAsyncInvokeConfig(_ serviceName: String, _ functionName: String, _ request: GetFunctionAsyncInvokeConfigRequest) async throws -> GetFunctionAsyncInvokeConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetFunctionAsyncInvokeConfigHeaders = GetFunctionAsyncInvokeConfigHeaders([:])
        return try await getFunctionAsyncInvokeConfigWithOptions(serviceName as! String, functionName as! String, request as! GetFunctionAsyncInvokeConfigRequest, headers as! GetFunctionAsyncInvokeConfigHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionCodeWithOptions(_ serviceName: String, _ functionName: String, _ request: GetFunctionCodeRequest, _ headers: GetFunctionCodeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFunctionCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFunctionCode",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/code",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFunctionCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionCode(_ serviceName: String, _ functionName: String, _ request: GetFunctionCodeRequest) async throws -> GetFunctionCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetFunctionCodeHeaders = GetFunctionCodeHeaders([:])
        return try await getFunctionCodeWithOptions(serviceName as! String, functionName as! String, request as! GetFunctionCodeRequest, headers as! GetFunctionCodeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionOnDemandConfigWithOptions(_ serviceName: String, _ functionName: String, _ request: GetFunctionOnDemandConfigRequest, _ headers: GetFunctionOnDemandConfigHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFunctionOnDemandConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFunctionOnDemandConfig",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/on-demand-config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFunctionOnDemandConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionOnDemandConfig(_ serviceName: String, _ functionName: String, _ request: GetFunctionOnDemandConfigRequest) async throws -> GetFunctionOnDemandConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetFunctionOnDemandConfigHeaders = GetFunctionOnDemandConfigHeaders([:])
        return try await getFunctionOnDemandConfigWithOptions(serviceName as! String, functionName as! String, request as! GetFunctionOnDemandConfigRequest, headers as! GetFunctionOnDemandConfigHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLayerVersionWithOptions(_ layerName: String, _ version: String, _ headers: GetLayerVersionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLayerVersionResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLayerVersion",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/layers/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(layerName) + "/versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(version),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLayerVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLayerVersion(_ layerName: String, _ version: String) async throws -> GetLayerVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetLayerVersionHeaders = GetLayerVersionHeaders([:])
        return try await getLayerVersionWithOptions(layerName as! String, version as! String, headers as! GetLayerVersionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProvisionConfigWithOptions(_ serviceName: String, _ functionName: String, _ request: GetProvisionConfigRequest, _ headers: GetProvisionConfigHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProvisionConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProvisionConfig",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/provision-config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProvisionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProvisionConfig(_ serviceName: String, _ functionName: String, _ request: GetProvisionConfigRequest) async throws -> GetProvisionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetProvisionConfigHeaders = GetProvisionConfigHeaders([:])
        return try await getProvisionConfigWithOptions(serviceName as! String, functionName as! String, request as! GetProvisionConfigRequest, headers as! GetProvisionConfigHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceTagsWithOptions(_ request: GetResourceTagsRequest, _ headers: GetResourceTagsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            query["resourceArn"] = request.resourceArn ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceTags",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/tag",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceTags(_ request: GetResourceTagsRequest) async throws -> GetResourceTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetResourceTagsHeaders = GetResourceTagsHeaders([:])
        return try await getResourceTagsWithOptions(request as! GetResourceTagsRequest, headers as! GetResourceTagsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceWithOptions(_ serviceName: String, _ request: GetServiceRequest, _ headers: GetServiceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetService",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName),
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
    public func getService(_ serviceName: String, _ request: GetServiceRequest) async throws -> GetServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetServiceHeaders = GetServiceHeaders([:])
        return try await getServiceWithOptions(serviceName as! String, request as! GetServiceRequest, headers as! GetServiceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStatefulAsyncInvocationWithOptions(_ serviceName: String, _ functionName: String, _ invocationId: String, _ request: GetStatefulAsyncInvocationRequest, _ headers: GetStatefulAsyncInvocationHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStatefulAsyncInvocationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcCodeChecksum)) {
            realHeaders["X-Fc-Code-Checksum"] = TeaUtils.Client.toJSONString(headers.xFcCodeChecksum);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcInvocationType)) {
            realHeaders["X-Fc-Invocation-Type"] = TeaUtils.Client.toJSONString(headers.xFcInvocationType);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcLogType)) {
            realHeaders["X-Fc-Log-Type"] = TeaUtils.Client.toJSONString(headers.xFcLogType);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStatefulAsyncInvocation",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/stateful-async-invocations/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(invocationId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStatefulAsyncInvocationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStatefulAsyncInvocation(_ serviceName: String, _ functionName: String, _ invocationId: String, _ request: GetStatefulAsyncInvocationRequest) async throws -> GetStatefulAsyncInvocationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetStatefulAsyncInvocationHeaders = GetStatefulAsyncInvocationHeaders([:])
        return try await getStatefulAsyncInvocationWithOptions(serviceName as! String, functionName as! String, invocationId as! String, request as! GetStatefulAsyncInvocationRequest, headers as! GetStatefulAsyncInvocationHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTriggerWithOptions(_ serviceName: String, _ functionName: String, _ triggerName: String, _ headers: GetTriggerHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTriggerResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrigger",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/triggers/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(triggerName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrigger(_ serviceName: String, _ functionName: String, _ triggerName: String) async throws -> GetTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetTriggerHeaders = GetTriggerHeaders([:])
        return try await getTriggerWithOptions(serviceName as! String, functionName as! String, triggerName as! String, headers as! GetTriggerHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeFunctionWithOptions(_ serviceName: String, _ functionName: String, _ request: InvokeFunctionRequest, _ headers: InvokeFunctionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvokeFunctionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var body: String = ""
        if (!TeaUtils.Client.isUnset(request.body)) {
            body = TeaUtils.Client.toString(request.body)
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcInvocationType)) {
            realHeaders["X-Fc-Invocation-Type"] = TeaUtils.Client.toJSONString(headers.xFcInvocationType);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcLogType)) {
            realHeaders["X-Fc-Log-Type"] = TeaUtils.Client.toJSONString(headers.xFcLogType);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcStatefulAsyncInvocationEnable)) {
            realHeaders["X-Fc-Stateful-Async-Invocation-Enable"] = TeaUtils.Client.toJSONString(headers.xFcStatefulAsyncInvocationEnable);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcStatefulAsyncInvocationId)) {
            realHeaders["X-Fc-Stateful-Async-Invocation-Id"] = TeaUtils.Client.toJSONString(headers.xFcStatefulAsyncInvocationId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": body as! String
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvokeFunction",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/invocations",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "byte"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvokeFunctionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeFunction(_ serviceName: String, _ functionName: String, _ request: InvokeFunctionRequest) async throws -> InvokeFunctionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvokeFunctionHeaders = InvokeFunctionHeaders([:])
        return try await invokeFunctionWithOptions(serviceName as! String, functionName as! String, request as! InvokeFunctionRequest, headers as! InvokeFunctionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAliasesWithOptions(_ serviceName: String, _ request: ListAliasesRequest, _ headers: ListAliasesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAliasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startKey)) {
            query["startKey"] = request.startKey ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAliases",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/aliases",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAliasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAliases(_ serviceName: String, _ request: ListAliasesRequest) async throws -> ListAliasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListAliasesHeaders = ListAliasesHeaders([:])
        return try await listAliasesWithOptions(serviceName as! String, request as! ListAliasesRequest, headers as! ListAliasesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCustomDomainsWithOptions(_ request: ListCustomDomainsRequest, _ headers: ListCustomDomainsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCustomDomainsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startKey)) {
            query["startKey"] = request.startKey ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCustomDomains",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/custom-domains",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCustomDomainsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCustomDomains(_ request: ListCustomDomainsRequest) async throws -> ListCustomDomainsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListCustomDomainsHeaders = ListCustomDomainsHeaders([:])
        return try await listCustomDomainsWithOptions(request as! ListCustomDomainsRequest, headers as! ListCustomDomainsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventSourcesWithOptions(_ serviceName: String, _ functionName: String, _ request: ListEventSourcesRequest, _ headers: ListEventSourcesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventSourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEventSources",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/event-sources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventSources(_ serviceName: String, _ functionName: String, _ request: ListEventSourcesRequest) async throws -> ListEventSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListEventSourcesHeaders = ListEventSourcesHeaders([:])
        return try await listEventSourcesWithOptions(serviceName as! String, functionName as! String, request as! ListEventSourcesRequest, headers as! ListEventSourcesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionAsyncInvokeConfigsWithOptions(_ serviceName: String, _ functionName: String, _ request: ListFunctionAsyncInvokeConfigsRequest, _ headers: ListFunctionAsyncInvokeConfigsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFunctionAsyncInvokeConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcCodeChecksum)) {
            realHeaders["X-Fc-Code-Checksum"] = TeaUtils.Client.toJSONString(headers.xFcCodeChecksum);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcInvocationType)) {
            realHeaders["X-Fc-Invocation-Type"] = TeaUtils.Client.toJSONString(headers.xFcInvocationType);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcLogType)) {
            realHeaders["X-Fc-Log-Type"] = TeaUtils.Client.toJSONString(headers.xFcLogType);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFunctionAsyncInvokeConfigs",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/async-invoke-configs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFunctionAsyncInvokeConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionAsyncInvokeConfigs(_ serviceName: String, _ functionName: String, _ request: ListFunctionAsyncInvokeConfigsRequest) async throws -> ListFunctionAsyncInvokeConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListFunctionAsyncInvokeConfigsHeaders = ListFunctionAsyncInvokeConfigsHeaders([:])
        return try await listFunctionAsyncInvokeConfigsWithOptions(serviceName as! String, functionName as! String, request as! ListFunctionAsyncInvokeConfigsRequest, headers as! ListFunctionAsyncInvokeConfigsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionsWithOptions(_ serviceName: String, _ request: ListFunctionsRequest, _ headers: ListFunctionsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFunctionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startKey)) {
            query["startKey"] = request.startKey ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFunctions",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFunctionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctions(_ serviceName: String, _ request: ListFunctionsRequest) async throws -> ListFunctionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListFunctionsHeaders = ListFunctionsHeaders([:])
        return try await listFunctionsWithOptions(serviceName as! String, request as! ListFunctionsRequest, headers as! ListFunctionsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesWithOptions(_ serviceName: String, _ functionName: String, _ request: ListInstancesRequest, _ headers: ListInstancesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["instanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstances",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstances(_ serviceName: String, _ functionName: String, _ request: ListInstancesRequest) async throws -> ListInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListInstancesHeaders = ListInstancesHeaders([:])
        return try await listInstancesWithOptions(serviceName as! String, functionName as! String, request as! ListInstancesRequest, headers as! ListInstancesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLayerVersionsWithOptions(_ layerName: String, _ request: ListLayerVersionsRequest, _ headers: ListLayerVersionsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLayerVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.startVersion)) {
            query["startVersion"] = request.startVersion!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLayerVersions",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/layers/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(layerName) + "/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLayerVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLayerVersions(_ layerName: String, _ request: ListLayerVersionsRequest) async throws -> ListLayerVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListLayerVersionsHeaders = ListLayerVersionsHeaders([:])
        return try await listLayerVersionsWithOptions(layerName as! String, request as! ListLayerVersionsRequest, headers as! ListLayerVersionsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLayersWithOptions(_ request: ListLayersRequest, _ headers: ListLayersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLayersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.official)) {
            query["official"] = request.official!;
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.public_)) {
            query["public"] = request.public_!;
        }
        if (!TeaUtils.Client.isUnset(request.startKey)) {
            query["startKey"] = request.startKey ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLayers",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/layers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLayersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLayers(_ request: ListLayersRequest) async throws -> ListLayersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListLayersHeaders = ListLayersHeaders([:])
        return try await listLayersWithOptions(request as! ListLayersRequest, headers as! ListLayersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOnDemandConfigsWithOptions(_ request: ListOnDemandConfigsRequest, _ headers: ListOnDemandConfigsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOnDemandConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startKey)) {
            query["startKey"] = request.startKey ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOnDemandConfigs",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/on-demand-configs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOnDemandConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOnDemandConfigs(_ request: ListOnDemandConfigsRequest) async throws -> ListOnDemandConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListOnDemandConfigsHeaders = ListOnDemandConfigsHeaders([:])
        return try await listOnDemandConfigsWithOptions(request as! ListOnDemandConfigsRequest, headers as! ListOnDemandConfigsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProvisionConfigsWithOptions(_ request: ListProvisionConfigsRequest, _ headers: ListProvisionConfigsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProvisionConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["serviceName"] = request.serviceName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProvisionConfigs",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/provision-configs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProvisionConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProvisionConfigs(_ request: ListProvisionConfigsRequest) async throws -> ListProvisionConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListProvisionConfigsHeaders = ListProvisionConfigsHeaders([:])
        return try await listProvisionConfigsWithOptions(request as! ListProvisionConfigsRequest, headers as! ListProvisionConfigsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listReservedCapacitiesWithOptions(_ request: ListReservedCapacitiesRequest, _ headers: ListReservedCapacitiesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListReservedCapacitiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListReservedCapacities",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/reserved-capacities",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListReservedCapacitiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listReservedCapacities(_ request: ListReservedCapacitiesRequest) async throws -> ListReservedCapacitiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListReservedCapacitiesHeaders = ListReservedCapacitiesHeaders([:])
        return try await listReservedCapacitiesWithOptions(request as! ListReservedCapacitiesRequest, headers as! ListReservedCapacitiesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceVersionsWithOptions(_ serviceName: String, _ request: ListServiceVersionsRequest, _ headers: ListServiceVersionsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.direction)) {
            query["direction"] = request.direction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startKey)) {
            query["startKey"] = request.startKey ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServiceVersions",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceVersions(_ serviceName: String, _ request: ListServiceVersionsRequest) async throws -> ListServiceVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListServiceVersionsHeaders = ListServiceVersionsHeaders([:])
        return try await listServiceVersionsWithOptions(serviceName as! String, request as! ListServiceVersionsRequest, headers as! ListServiceVersionsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServicesWithOptions(_ request: ListServicesRequest, _ headers: ListServicesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startKey)) {
            query["startKey"] = request.startKey ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServices",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services",
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
    public func listServices(_ request: ListServicesRequest) async throws -> ListServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListServicesHeaders = ListServicesHeaders([:])
        return try await listServicesWithOptions(request as! ListServicesRequest, headers as! ListServicesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStatefulAsyncInvocationFunctionsWithOptions(_ request: ListStatefulAsyncInvocationFunctionsRequest, _ headers: ListStatefulAsyncInvocationFunctionsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStatefulAsyncInvocationFunctionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStatefulAsyncInvocationFunctions",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/stateful-async-invocation-functions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStatefulAsyncInvocationFunctionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStatefulAsyncInvocationFunctions(_ request: ListStatefulAsyncInvocationFunctionsRequest) async throws -> ListStatefulAsyncInvocationFunctionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListStatefulAsyncInvocationFunctionsHeaders = ListStatefulAsyncInvocationFunctionsHeaders([:])
        return try await listStatefulAsyncInvocationFunctionsWithOptions(request as! ListStatefulAsyncInvocationFunctionsRequest, headers as! ListStatefulAsyncInvocationFunctionsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStatefulAsyncInvocationsWithOptions(_ serviceName: String, _ functionName: String, _ request: ListStatefulAsyncInvocationsRequest, _ headers: ListStatefulAsyncInvocationsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStatefulAsyncInvocationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.includePayload)) {
            query["includePayload"] = request.includePayload!;
        }
        if (!TeaUtils.Client.isUnset(request.invocationIdPrefix)) {
            query["invocationIdPrefix"] = request.invocationIdPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrderByTime)) {
            query["sortOrderByTime"] = request.sortOrderByTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startedTimeBegin)) {
            query["startedTimeBegin"] = request.startedTimeBegin!;
        }
        if (!TeaUtils.Client.isUnset(request.startedTimeEnd)) {
            query["startedTimeEnd"] = request.startedTimeEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcCodeChecksum)) {
            realHeaders["X-Fc-Code-Checksum"] = TeaUtils.Client.toJSONString(headers.xFcCodeChecksum);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcInvocationType)) {
            realHeaders["X-Fc-Invocation-Type"] = TeaUtils.Client.toJSONString(headers.xFcInvocationType);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcLogType)) {
            realHeaders["X-Fc-Log-Type"] = TeaUtils.Client.toJSONString(headers.xFcLogType);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStatefulAsyncInvocations",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/stateful-async-invocations",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStatefulAsyncInvocationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStatefulAsyncInvocations(_ serviceName: String, _ functionName: String, _ request: ListStatefulAsyncInvocationsRequest) async throws -> ListStatefulAsyncInvocationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListStatefulAsyncInvocationsHeaders = ListStatefulAsyncInvocationsHeaders([:])
        return try await listStatefulAsyncInvocationsWithOptions(serviceName as! String, functionName as! String, request as! ListStatefulAsyncInvocationsRequest, headers as! ListStatefulAsyncInvocationsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaggedResourcesWithOptions(_ request: ListTaggedResourcesRequest, _ headers: ListTaggedResourcesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTaggedResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTaggedResources",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/tags",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTaggedResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaggedResources(_ request: ListTaggedResourcesRequest) async throws -> ListTaggedResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListTaggedResourcesHeaders = ListTaggedResourcesHeaders([:])
        return try await listTaggedResourcesWithOptions(request as! ListTaggedResourcesRequest, headers as! ListTaggedResourcesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTriggersWithOptions(_ serviceName: String, _ functionName: String, _ request: ListTriggersRequest, _ headers: ListTriggersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTriggersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startKey)) {
            query["startKey"] = request.startKey ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTriggers",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/triggers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTriggersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTriggers(_ serviceName: String, _ functionName: String, _ request: ListTriggersRequest) async throws -> ListTriggersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListTriggersHeaders = ListTriggersHeaders([:])
        return try await listTriggersWithOptions(serviceName as! String, functionName as! String, request as! ListTriggersRequest, headers as! ListTriggersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVpcBindingsWithOptions(_ serviceName: String, _ headers: ListVpcBindingsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVpcBindingsResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVpcBindings",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/bindings",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVpcBindingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVpcBindings(_ serviceName: String) async throws -> ListVpcBindingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListVpcBindingsHeaders = ListVpcBindingsHeaders([:])
        return try await listVpcBindingsWithOptions(serviceName as! String, headers as! ListVpcBindingsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishServiceVersionWithOptions(_ serviceName: String, _ request: PublishServiceVersionRequest, _ headers: PublishServiceVersionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishServiceVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.ifMatch)) {
            realHeaders["If-Match"] = TeaUtils.Client.toJSONString(headers.ifMatch);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishServiceVersion",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/versions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishServiceVersion(_ serviceName: String, _ request: PublishServiceVersionRequest) async throws -> PublishServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PublishServiceVersionHeaders = PublishServiceVersionHeaders([:])
        return try await publishServiceVersionWithOptions(serviceName as! String, request as! PublishServiceVersionRequest, headers as! PublishServiceVersionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putFunctionAsyncInvokeConfigWithOptions(_ serviceName: String, _ functionName: String, _ request: PutFunctionAsyncInvokeConfigRequest, _ headers: PutFunctionAsyncInvokeConfigHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutFunctionAsyncInvokeConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationConfig)) {
            body["destinationConfig"] = request.destinationConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.maxAsyncEventAgeInSeconds)) {
            body["maxAsyncEventAgeInSeconds"] = request.maxAsyncEventAgeInSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.maxAsyncRetryAttempts)) {
            body["maxAsyncRetryAttempts"] = request.maxAsyncRetryAttempts!;
        }
        if (!TeaUtils.Client.isUnset(request.statefulInvocation)) {
            body["statefulInvocation"] = request.statefulInvocation!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutFunctionAsyncInvokeConfig",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/async-invoke-config",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutFunctionAsyncInvokeConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putFunctionAsyncInvokeConfig(_ serviceName: String, _ functionName: String, _ request: PutFunctionAsyncInvokeConfigRequest) async throws -> PutFunctionAsyncInvokeConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PutFunctionAsyncInvokeConfigHeaders = PutFunctionAsyncInvokeConfigHeaders([:])
        return try await putFunctionAsyncInvokeConfigWithOptions(serviceName as! String, functionName as! String, request as! PutFunctionAsyncInvokeConfigRequest, headers as! PutFunctionAsyncInvokeConfigHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putFunctionOnDemandConfigWithOptions(_ serviceName: String, _ functionName: String, _ request: PutFunctionOnDemandConfigRequest, _ headers: PutFunctionOnDemandConfigHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutFunctionOnDemandConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maximumInstanceCount)) {
            body["maximumInstanceCount"] = request.maximumInstanceCount!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.ifMatch)) {
            realHeaders["If-Match"] = TeaUtils.Client.toJSONString(headers.ifMatch);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutFunctionOnDemandConfig",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/on-demand-config",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutFunctionOnDemandConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putFunctionOnDemandConfig(_ serviceName: String, _ functionName: String, _ request: PutFunctionOnDemandConfigRequest) async throws -> PutFunctionOnDemandConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PutFunctionOnDemandConfigHeaders = PutFunctionOnDemandConfigHeaders([:])
        return try await putFunctionOnDemandConfigWithOptions(serviceName as! String, functionName as! String, request as! PutFunctionOnDemandConfigRequest, headers as! PutFunctionOnDemandConfigHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putLayerACLWithOptions(_ layerName: String, _ request: PutLayerACLRequest, _ headers: PutLayerACLHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutLayerACLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.public_)) {
            query["public"] = request.public_!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutLayerACL",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/layers/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(layerName) + "/acl",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutLayerACLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putLayerACL(_ layerName: String, _ request: PutLayerACLRequest) async throws -> PutLayerACLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PutLayerACLHeaders = PutLayerACLHeaders([:])
        return try await putLayerACLWithOptions(layerName as! String, request as! PutLayerACLRequest, headers as! PutLayerACLHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putProvisionConfigWithOptions(_ serviceName: String, _ functionName: String, _ request: PutProvisionConfigRequest, _ headers: PutProvisionConfigHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutProvisionConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alwaysAllocateCPU)) {
            body["alwaysAllocateCPU"] = request.alwaysAllocateCPU!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduledActions)) {
            body["scheduledActions"] = request.scheduledActions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            body["target"] = request.target!;
        }
        if (!TeaUtils.Client.isUnset(request.targetTrackingPolicies)) {
            body["targetTrackingPolicies"] = request.targetTrackingPolicies ?? [];
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutProvisionConfig",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/provision-config",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutProvisionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putProvisionConfig(_ serviceName: String, _ functionName: String, _ request: PutProvisionConfigRequest) async throws -> PutProvisionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PutProvisionConfigHeaders = PutProvisionConfigHeaders([:])
        return try await putProvisionConfigWithOptions(serviceName as! String, functionName as! String, request as! PutProvisionConfigRequest, headers as! PutProvisionConfigHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerEventSourceWithOptions(_ serviceName: String, _ functionName: String, _ request: RegisterEventSourceRequest, _ headers: RegisterEventSourceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterEventSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceArn)) {
            body["sourceArn"] = request.sourceArn ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterEventSource",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/event-sources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterEventSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerEventSource(_ serviceName: String, _ functionName: String, _ request: RegisterEventSourceRequest) async throws -> RegisterEventSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RegisterEventSourceHeaders = RegisterEventSourceHeaders([:])
        return try await registerEventSourceWithOptions(serviceName as! String, functionName as! String, request as! RegisterEventSourceRequest, headers as! RegisterEventSourceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseGPUInstanceWithOptions(_ instanceId: String, _ headers: ReleaseGPUInstanceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseGPUInstanceResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseGPUInstance",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/gpuInstances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseGPUInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseGPUInstance(_ instanceId: String) async throws -> ReleaseGPUInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ReleaseGPUInstanceHeaders = ReleaseGPUInstanceHeaders([:])
        return try await releaseGPUInstanceWithOptions(instanceId as! String, headers as! ReleaseGPUInstanceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopStatefulAsyncInvocationWithOptions(_ serviceName: String, _ functionName: String, _ invocationId: String, _ request: StopStatefulAsyncInvocationRequest, _ headers: StopStatefulAsyncInvocationHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopStatefulAsyncInvocationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            query["qualifier"] = request.qualifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopStatefulAsyncInvocation",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/stateful-async-invocations/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(invocationId),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopStatefulAsyncInvocationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopStatefulAsyncInvocation(_ serviceName: String, _ functionName: String, _ invocationId: String, _ request: StopStatefulAsyncInvocationRequest) async throws -> StopStatefulAsyncInvocationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StopStatefulAsyncInvocationHeaders = StopStatefulAsyncInvocationHeaders([:])
        return try await stopStatefulAsyncInvocationWithOptions(serviceName as! String, functionName as! String, invocationId as! String, request as! StopStatefulAsyncInvocationRequest, headers as! StopStatefulAsyncInvocationHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourceWithOptions(_ request: TagResourceRequest, _ headers: TagResourceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            body["resourceArn"] = request.resourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [:];
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResource",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/tag",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResource(_ request: TagResourceRequest) async throws -> TagResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TagResourceHeaders = TagResourceHeaders([:])
        return try await tagResourceWithOptions(request as! TagResourceRequest, headers as! TagResourceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourceWithOptions(_ request: UntagResourceRequest, _ headers: UntagResourceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            body["all"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            body["resourceArn"] = request.resourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeys)) {
            body["tagKeys"] = request.tagKeys ?? [];
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResource",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/tag",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResource(_ request: UntagResourceRequest) async throws -> UntagResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UntagResourceHeaders = UntagResourceHeaders([:])
        return try await untagResourceWithOptions(request as! UntagResourceRequest, headers as! UntagResourceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAliasWithOptions(_ serviceName: String, _ aliasName: String, _ request: UpdateAliasRequest, _ headers: UpdateAliasHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAliasResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.additionalVersionWeight)) {
            body["additionalVersionWeight"] = request.additionalVersionWeight ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resolvePolicy)) {
            body["resolvePolicy"] = request.resolvePolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routePolicy)) {
            body["routePolicy"] = request.routePolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            body["versionId"] = request.versionId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.ifMatch)) {
            realHeaders["If-Match"] = TeaUtils.Client.toJSONString(headers.ifMatch);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAlias",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/aliases/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(aliasName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAliasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlias(_ serviceName: String, _ aliasName: String, _ request: UpdateAliasRequest) async throws -> UpdateAliasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateAliasHeaders = UpdateAliasHeaders([:])
        return try await updateAliasWithOptions(serviceName as! String, aliasName as! String, request as! UpdateAliasRequest, headers as! UpdateAliasHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCustomDomainWithOptions(_ domainName: String, _ request: UpdateCustomDomainRequest, _ headers: UpdateCustomDomainHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCustomDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certConfig)) {
            body["certConfig"] = request.certConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeConfig)) {
            body["routeConfig"] = request.routeConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.tlsConfig)) {
            body["tlsConfig"] = request.tlsConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.wafConfig)) {
            body["wafConfig"] = request.wafConfig!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCustomDomain",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/custom-domains/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(domainName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCustomDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCustomDomain(_ domainName: String, _ request: UpdateCustomDomainRequest) async throws -> UpdateCustomDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateCustomDomainHeaders = UpdateCustomDomainHeaders([:])
        return try await updateCustomDomainWithOptions(domainName as! String, request as! UpdateCustomDomainRequest, headers as! UpdateCustomDomainHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFunctionWithOptions(_ serviceName: String, _ functionName: String, _ request: UpdateFunctionRequest, _ headers: UpdateFunctionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFunctionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceConcurrency)) {
            body["InstanceConcurrency"] = request.instanceConcurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.caPort)) {
            body["caPort"] = request.caPort!;
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code!;
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.customContainerConfig)) {
            body["customContainerConfig"] = request.customContainerConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.customDNS)) {
            body["customDNS"] = request.customDNS!;
        }
        if (!TeaUtils.Client.isUnset(request.customHealthCheckConfig)) {
            body["customHealthCheckConfig"] = request.customHealthCheckConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.customRuntimeConfig)) {
            body["customRuntimeConfig"] = request.customRuntimeConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskSize)) {
            body["diskSize"] = request.diskSize!;
        }
        if (!TeaUtils.Client.isUnset(request.environmentVariables)) {
            body["environmentVariables"] = request.environmentVariables ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.gpuMemorySize)) {
            body["gpuMemorySize"] = request.gpuMemorySize!;
        }
        if (!TeaUtils.Client.isUnset(request.handler)) {
            body["handler"] = request.handler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initializationTimeout)) {
            body["initializationTimeout"] = request.initializationTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.initializer)) {
            body["initializer"] = request.initializer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceLifecycleConfig)) {
            body["instanceLifecycleConfig"] = request.instanceLifecycleConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceSoftConcurrency)) {
            body["instanceSoftConcurrency"] = request.instanceSoftConcurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["instanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.layers)) {
            body["layers"] = request.layers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.memorySize)) {
            body["memorySize"] = request.memorySize!;
        }
        if (!TeaUtils.Client.isUnset(request.runtime)) {
            body["runtime"] = request.runtime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            body["timeout"] = request.timeout!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.ifMatch)) {
            realHeaders["If-Match"] = TeaUtils.Client.toJSONString(headers.ifMatch);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcCodeChecksum)) {
            realHeaders["X-Fc-Code-Checksum"] = TeaUtils.Client.toJSONString(headers.xFcCodeChecksum);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFunction",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFunctionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFunction(_ serviceName: String, _ functionName: String, _ request: UpdateFunctionRequest) async throws -> UpdateFunctionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateFunctionHeaders = UpdateFunctionHeaders([:])
        return try await updateFunctionWithOptions(serviceName as! String, functionName as! String, request as! UpdateFunctionRequest, headers as! UpdateFunctionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceWithOptions(_ serviceName: String, _ request: UpdateServiceRequest, _ headers: UpdateServiceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetAccess)) {
            body["internetAccess"] = request.internetAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.logConfig)) {
            body["logConfig"] = request.logConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.nasConfig)) {
            body["nasConfig"] = request.nasConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.ossMountConfig)) {
            body["ossMountConfig"] = request.ossMountConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.role)) {
            body["role"] = request.role ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracingConfig)) {
            body["tracingConfig"] = request.tracingConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.vpcConfig)) {
            body["vpcConfig"] = request.vpcConfig!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.ifMatch)) {
            realHeaders["If-Match"] = TeaUtils.Client.toJSONString(headers.ifMatch);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateService",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName),
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
    public func updateService(_ serviceName: String, _ request: UpdateServiceRequest) async throws -> UpdateServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateServiceHeaders = UpdateServiceHeaders([:])
        return try await updateServiceWithOptions(serviceName as! String, request as! UpdateServiceRequest, headers as! UpdateServiceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTriggerWithOptions(_ serviceName: String, _ functionName: String, _ triggerName: String, _ request: UpdateTriggerRequest, _ headers: UpdateTriggerHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invocationRole)) {
            body["invocationRole"] = request.invocationRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qualifier)) {
            body["qualifier"] = request.qualifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerConfig)) {
            body["triggerConfig"] = request.triggerConfig ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.ifMatch)) {
            realHeaders["If-Match"] = TeaUtils.Client.toJSONString(headers.ifMatch);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcAccountId)) {
            realHeaders["X-Fc-Account-Id"] = TeaUtils.Client.toJSONString(headers.xFcAccountId);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcDate)) {
            realHeaders["X-Fc-Date"] = TeaUtils.Client.toJSONString(headers.xFcDate);
        }
        if (!TeaUtils.Client.isUnset(headers.xFcTraceId)) {
            realHeaders["X-Fc-Trace-Id"] = TeaUtils.Client.toJSONString(headers.xFcTraceId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTrigger",
            "version": "2021-04-06",
            "protocol": "HTTPS",
            "pathname": "/2021-04-06/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceName) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/triggers/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(triggerName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrigger(_ serviceName: String, _ functionName: String, _ triggerName: String, _ request: UpdateTriggerRequest) async throws -> UpdateTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateTriggerHeaders = UpdateTriggerHeaders([:])
        return try await updateTriggerWithOptions(serviceName as! String, functionName as! String, triggerName as! String, request as! UpdateTriggerRequest, headers as! UpdateTriggerHeaders, runtime as! TeaUtils.RuntimeOptions)
    }
}
