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
        self._endpoint = try getEndpoint("apig", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addGatewaySecurityGroupRuleWithOptions(_ gatewayId: String, _ request: AddGatewaySecurityGroupRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddGatewaySecurityGroupRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portRanges)) {
            body["portRanges"] = request.portRanges ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            body["securityGroupId"] = request.securityGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddGatewaySecurityGroupRule",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/security-group-rules",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddGatewaySecurityGroupRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addGatewaySecurityGroupRule(_ gatewayId: String, _ request: AddGatewaySecurityGroupRuleRequest) async throws -> AddGatewaySecurityGroupRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addGatewaySecurityGroupRuleWithOptions(gatewayId as! String, request as! AddGatewaySecurityGroupRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeleteConsumerAuthorizationRuleWithOptions(_ request: BatchDeleteConsumerAuthorizationRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchDeleteConsumerAuthorizationRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.consumerAuthorizationRuleIds)) {
            query["consumerAuthorizationRuleIds"] = request.consumerAuthorizationRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchDeleteConsumerAuthorizationRule",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/authorization-rules",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchDeleteConsumerAuthorizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeleteConsumerAuthorizationRule(_ request: BatchDeleteConsumerAuthorizationRuleRequest) async throws -> BatchDeleteConsumerAuthorizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchDeleteConsumerAuthorizationRuleWithOptions(request as! BatchDeleteConsumerAuthorizationRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroupWithOptions(_ request: ChangeResourceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.service)) {
            query["Service"] = request.service ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResourceGroup",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/move-resource-group",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroup(_ request: ChangeResourceGroupRequest) async throws -> ChangeResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await changeResourceGroupWithOptions(request as! ChangeResourceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAndAttachPolicyWithOptions(_ request: CreateAndAttachPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAndAttachPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachResourceIds)) {
            body["attachResourceIds"] = request.attachResourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.attachResourceType)) {
            body["attachResourceType"] = request.attachResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.className)) {
            body["className"] = request.className ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentId)) {
            body["environmentId"] = request.environmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            body["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAndAttachPolicy",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/policies",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAndAttachPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAndAttachPolicy(_ request: CreateAndAttachPolicyRequest) async throws -> CreateAndAttachPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAndAttachPolicyWithOptions(request as! CreateAndAttachPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConsumerWithOptions(_ request: CreateConsumerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConsumerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.akSkIdentityConfigs)) {
            body["akSkIdentityConfigs"] = request.akSkIdentityConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.apikeyIdentityConfig)) {
            body["apikeyIdentityConfig"] = request.apikeyIdentityConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enable)) {
            body["enable"] = request.enable!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            body["gatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jwtIdentityConfig)) {
            body["jwtIdentityConfig"] = request.jwtIdentityConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConsumer",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/consumers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConsumerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConsumer(_ request: CreateConsumerRequest) async throws -> CreateConsumerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createConsumerWithOptions(request as! CreateConsumerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConsumerAuthorizationRuleWithOptions(_ consumerId: String, _ request: CreateConsumerAuthorizationRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConsumerAuthorizationRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationResourceInfos)) {
            body["authorizationResourceInfos"] = request.authorizationResourceInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.expireMode)) {
            body["expireMode"] = request.expireMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireTimestamp)) {
            body["expireTimestamp"] = request.expireTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.parentResourceType)) {
            body["parentResourceType"] = request.parentResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["resourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConsumerAuthorizationRule",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/consumers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(consumerId)) + "/authorization-rules",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConsumerAuthorizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConsumerAuthorizationRule(_ consumerId: String, _ request: CreateConsumerAuthorizationRuleRequest) async throws -> CreateConsumerAuthorizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createConsumerAuthorizationRuleWithOptions(consumerId as! String, request as! CreateConsumerAuthorizationRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConsumerAuthorizationRulesWithOptions(_ request: CreateConsumerAuthorizationRulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConsumerAuthorizationRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationRules)) {
            body["authorizationRules"] = request.authorizationRules ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConsumerAuthorizationRules",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/authorization-rules",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConsumerAuthorizationRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConsumerAuthorizationRules(_ request: CreateConsumerAuthorizationRulesRequest) async throws -> CreateConsumerAuthorizationRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createConsumerAuthorizationRulesWithOptions(request as! CreateConsumerAuthorizationRulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDomainWithOptions(_ request: CreateDomainRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caCertIdentifier)) {
            body["caCertIdentifier"] = request.caCertIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certIdentifier)) {
            body["certIdentifier"] = request.certIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientCACert)) {
            body["clientCACert"] = request.clientCACert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceHttps)) {
            body["forceHttps"] = request.forceHttps!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            body["gatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.http2Option)) {
            body["http2Option"] = request.http2Option ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mTLSEnabled)) {
            body["mTLSEnabled"] = request.mTLSEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tlsCipherSuitesConfig)) {
            body["tlsCipherSuitesConfig"] = request.tlsCipherSuitesConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.tlsMax)) {
            body["tlsMax"] = request.tlsMax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tlsMin)) {
            body["tlsMin"] = request.tlsMin ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDomain",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/domains",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDomain(_ request: CreateDomainRequest) async throws -> CreateDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDomainWithOptions(request as! CreateDomainRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEnvironmentWithOptions(_ request: CreateEnvironmentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEnvironmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            body["alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            body["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEnvironment",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/environments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEnvironmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEnvironment(_ request: CreateEnvironmentRequest) async throws -> CreateEnvironmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createEnvironmentWithOptions(request as! CreateEnvironmentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayWithOptions(_ request: CreateGatewayRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            body["chargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayEdition)) {
            body["gatewayEdition"] = request.gatewayEdition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            body["gatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logConfig)) {
            body["logConfig"] = request.logConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkAccessConfig)) {
            body["networkAccessConfig"] = request.networkAccessConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spec)) {
            body["spec"] = request.spec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["vpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneConfig)) {
            body["zoneConfig"] = request.zoneConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGateway",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGateway(_ request: CreateGatewayRequest) async throws -> CreateGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createGatewayWithOptions(request as! CreateGatewayRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHttpApiWithOptions(_ request: CreateHttpApiRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHttpApiResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentProtocols)) {
            body["agentProtocols"] = request.agentProtocols ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.aiProtocols)) {
            body["aiProtocols"] = request.aiProtocols ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.authConfig)) {
            body["authConfig"] = request.authConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.basePath)) {
            body["basePath"] = request.basePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deployConfigs)) {
            body["deployConfigs"] = request.deployConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAuth)) {
            body["enableAuth"] = request.enableAuth!;
        }
        if (!TeaUtils.Client.isUnset(request.firstByteTimeout)) {
            body["firstByteTimeout"] = request.firstByteTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.ingressConfig)) {
            body["ingressConfig"] = request.ingressConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.modelCategory)) {
            body["modelCategory"] = request.modelCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocols)) {
            body["protocols"] = request.protocols ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.removeBasePathOnForward)) {
            body["removeBasePathOnForward"] = request.removeBasePathOnForward!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionConfig)) {
            body["versionConfig"] = request.versionConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHttpApi",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHttpApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHttpApi(_ request: CreateHttpApiRequest) async throws -> CreateHttpApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createHttpApiWithOptions(request as! CreateHttpApiRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHttpApiOperationWithOptions(_ httpApiId: String, _ request: CreateHttpApiOperationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHttpApiOperationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operations)) {
            body["operations"] = request.operations ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHttpApiOperation",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/operations",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHttpApiOperationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHttpApiOperation(_ httpApiId: String, _ request: CreateHttpApiOperationRequest) async throws -> CreateHttpApiOperationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createHttpApiOperationWithOptions(httpApiId as! String, request as! CreateHttpApiOperationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHttpApiRouteWithOptions(_ httpApiId: String, _ request: CreateHttpApiRouteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHttpApiRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendConfig)) {
            body["backendConfig"] = request.backendConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.deployConfigs)) {
            body["deployConfigs"] = request.deployConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainIds)) {
            body["domainIds"] = request.domainIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.environmentId)) {
            body["environmentId"] = request.environmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.match)) {
            body["match"] = request.match!;
        }
        if (!TeaUtils.Client.isUnset(request.mcpRouteConfig)) {
            body["mcpRouteConfig"] = request.mcpRouteConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHttpApiRoute",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/routes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHttpApiRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHttpApiRoute(_ httpApiId: String, _ request: CreateHttpApiRouteRequest) async throws -> CreateHttpApiRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createHttpApiRouteWithOptions(httpApiId as! String, request as! CreateHttpApiRouteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcpServerWithOptions(_ request: CreateMcpServerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcpServerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assembledSources)) {
            body["assembledSources"] = request.assembledSources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.backendConfig)) {
            body["backendConfig"] = request.backendConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.createFromType)) {
            body["createFromType"] = request.createFromType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainIds)) {
            body["domainIds"] = request.domainIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.exposedUriPath)) {
            body["exposedUriPath"] = request.exposedUriPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            body["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grayMcpServerConfigs)) {
            body["grayMcpServerConfigs"] = request.grayMcpServerConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.match)) {
            body["match"] = request.match!;
        }
        if (!TeaUtils.Client.isUnset(request.mcpStatisticsEnable)) {
            body["mcpStatisticsEnable"] = request.mcpStatisticsEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcpServer",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/mcp-servers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcpServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcpServer(_ request: CreateMcpServerRequest) async throws -> CreateMcpServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMcpServerWithOptions(request as! CreateMcpServerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPluginAttachmentWithOptions(_ request: CreatePluginAttachmentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePluginAttachmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachResourceIds)) {
            body["attachResourceIds"] = request.attachResourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.attachResourceType)) {
            body["attachResourceType"] = request.attachResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enable)) {
            body["enable"] = request.enable!;
        }
        if (!TeaUtils.Client.isUnset(request.environmentId)) {
            body["environmentId"] = request.environmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            body["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginConfig)) {
            body["pluginConfig"] = request.pluginConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            body["pluginId"] = request.pluginId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePluginAttachment",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/plugin-attachments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePluginAttachmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPluginAttachment(_ request: CreatePluginAttachmentRequest) async throws -> CreatePluginAttachmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPluginAttachmentWithOptions(request as! CreatePluginAttachmentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyWithOptions(_ request: CreatePolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.className)) {
            body["className"] = request.className ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePolicy",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v2/policies",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicy(_ request: CreatePolicyRequest) async throws -> CreatePolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPolicyWithOptions(request as! CreatePolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyAttachmentWithOptions(_ request: CreatePolicyAttachmentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePolicyAttachmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachResourceId)) {
            body["attachResourceId"] = request.attachResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attachResourceType)) {
            body["attachResourceType"] = request.attachResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentId)) {
            body["environmentId"] = request.environmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            body["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["policyId"] = request.policyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePolicyAttachment",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/policy-attachments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePolicyAttachmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyAttachment(_ request: CreatePolicyAttachmentRequest) async throws -> CreatePolicyAttachmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPolicyAttachmentWithOptions(request as! CreatePolicyAttachmentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSecretWithOptions(_ request: CreateSecretRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSecretResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            body["gatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kmsConfig)) {
            body["kmsConfig"] = request.kmsConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretData)) {
            body["secretData"] = request.secretData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretSource)) {
            body["secretSource"] = request.secretSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSecret",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/secrets",
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
    public func createServiceWithOptions(_ request: CreateServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            body["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceConfigs)) {
            body["serviceConfigs"] = request.serviceConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["sourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateService",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/services",
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
        var headers: [String: String] = [:]
        return try await createServiceWithOptions(request as! CreateServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceVersionWithOptions(_ serviceId: String, _ request: CreateServiceVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceVersion",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceId)) + "/versions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceVersion(_ serviceId: String, _ request: CreateServiceVersionRequest) async throws -> CreateServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceVersionWithOptions(serviceId as! String, request as! CreateServiceVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSourceWithOptions(_ request: CreateSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            body["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.k8sSourceConfig)) {
            body["k8sSourceConfig"] = request.k8sSourceConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.nacosSourceConfig)) {
            body["nacosSourceConfig"] = request.nacosSourceConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSource",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/sources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSource(_ request: CreateSourceRequest) async throws -> CreateSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSourceWithOptions(request as! CreateSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConsumerWithOptions(_ consumerId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConsumerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConsumer",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/consumers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(consumerId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConsumerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConsumer(_ consumerId: String) async throws -> DeleteConsumerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteConsumerWithOptions(consumerId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConsumerAuthorizationRuleWithOptions(_ consumerAuthorizationRuleId: String, _ consumerId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConsumerAuthorizationRuleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConsumerAuthorizationRule",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/consumers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(consumerId)) + "/authorization-rules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(consumerAuthorizationRuleId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConsumerAuthorizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConsumerAuthorizationRule(_ consumerAuthorizationRuleId: String, _ consumerId: String) async throws -> DeleteConsumerAuthorizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteConsumerAuthorizationRuleWithOptions(consumerAuthorizationRuleId as! String, consumerId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomainWithOptions(_ domainId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDomainResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDomain",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/domains/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(domainId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomain(_ domainId: String) async throws -> DeleteDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDomainWithOptions(domainId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnvironmentWithOptions(_ environmentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEnvironmentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEnvironment",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/environments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(environmentId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEnvironmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnvironment(_ environmentId: String) async throws -> DeleteEnvironmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEnvironmentWithOptions(environmentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayWithOptions(_ gatewayId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewayResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGateway",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGateway(_ gatewayId: String) async throws -> DeleteGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteGatewayWithOptions(gatewayId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewaySecurityGroupRuleWithOptions(_ gatewayId: String, _ securityGroupRuleId: String, _ request: DeleteGatewaySecurityGroupRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewaySecurityGroupRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cascadingDelete)) {
            query["cascadingDelete"] = request.cascadingDelete!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGatewaySecurityGroupRule",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/security-group-rules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(securityGroupRuleId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewaySecurityGroupRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewaySecurityGroupRule(_ gatewayId: String, _ securityGroupRuleId: String, _ request: DeleteGatewaySecurityGroupRuleRequest) async throws -> DeleteGatewaySecurityGroupRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteGatewaySecurityGroupRuleWithOptions(gatewayId as! String, securityGroupRuleId as! String, request as! DeleteGatewaySecurityGroupRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHttpApiWithOptions(_ httpApiId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHttpApiResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHttpApi",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHttpApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHttpApi(_ httpApiId: String) async throws -> DeleteHttpApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteHttpApiWithOptions(httpApiId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHttpApiOperationWithOptions(_ httpApiId: String, _ operationId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHttpApiOperationResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHttpApiOperation",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/operations/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(operationId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHttpApiOperationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHttpApiOperation(_ httpApiId: String, _ operationId: String) async throws -> DeleteHttpApiOperationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteHttpApiOperationWithOptions(httpApiId as! String, operationId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHttpApiRouteWithOptions(_ httpApiId: String, _ routeId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHttpApiRouteResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHttpApiRoute",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/routes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(routeId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHttpApiRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHttpApiRoute(_ httpApiId: String, _ routeId: String) async throws -> DeleteHttpApiRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteHttpApiRouteWithOptions(httpApiId as! String, routeId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcpServerWithOptions(_ mcpServerId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMcpServerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMcpServer",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/mcp-servers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(mcpServerId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMcpServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMcpServer(_ mcpServerId: String) async throws -> DeleteMcpServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteMcpServerWithOptions(mcpServerId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePluginAttachmentWithOptions(_ pluginAttachmentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePluginAttachmentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePluginAttachment",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/plugin-attachments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pluginAttachmentId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePluginAttachmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePluginAttachment(_ pluginAttachmentId: String) async throws -> DeletePluginAttachmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePluginAttachmentWithOptions(pluginAttachmentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyWithOptions(_ policyId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePolicyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePolicy",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v2/policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicy(_ policyId: String) async throws -> DeletePolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePolicyWithOptions(policyId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyAttachmentWithOptions(_ policyAttachmentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePolicyAttachmentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePolicyAttachment",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/policy-attachments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyAttachmentId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePolicyAttachmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyAttachment(_ policyAttachmentId: String) async throws -> DeletePolicyAttachmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePolicyAttachmentWithOptions(policyAttachmentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecretWithOptions(_ secretId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSecretResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSecret",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/secrets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(secretId)),
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
    public func deleteSecret(_ secretId: String) async throws -> DeleteSecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSecretWithOptions(secretId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceWithOptions(_ serviceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteService",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceId)),
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
    public func deleteService(_ serviceId: String) async throws -> DeleteServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceWithOptions(serviceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceVersionWithOptions(_ serviceId: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceVersion",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceVersion(_ serviceId: String, _ name: String) async throws -> DeleteServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceVersionWithOptions(serviceId as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSourceWithOptions(_ sourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSource",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/sources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSource(_ sourceId: String) async throws -> DeleteSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSourceWithOptions(sourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployHttpApiWithOptions(_ httpApiId: String, _ request: DeployHttpApiRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployHttpApiResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.httpApiConfig)) {
            body["httpApiConfig"] = request.httpApiConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.restApiConfig)) {
            body["restApiConfig"] = request.restApiConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.routeId)) {
            body["routeId"] = request.routeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeployHttpApi",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/deploy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeployHttpApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployHttpApi(_ httpApiId: String, _ request: DeployHttpApiRequest) async throws -> DeployHttpApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deployHttpApiWithOptions(httpApiId as! String, request as! DeployHttpApiRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployMcpServerWithOptions(_ mcpServerId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployMcpServerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeployMcpServer",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/mcp-servers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(mcpServerId)) + "/deploy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeployMcpServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployMcpServer(_ mcpServerId: String) async throws -> DeployMcpServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deployMcpServerWithOptions(mcpServerId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportHttpApiWithOptions(_ httpApiId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportHttpApiResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportHttpApi",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/export",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportHttpApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportHttpApi(_ httpApiId: String) async throws -> ExportHttpApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportHttpApiWithOptions(httpApiId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConsumerWithOptions(_ consumerId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConsumerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConsumer",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/consumers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(consumerId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConsumerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConsumer(_ consumerId: String) async throws -> GetConsumerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getConsumerWithOptions(consumerId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConsumerAuthorizationRuleWithOptions(_ consumerAuthorizationRuleId: String, _ consumerId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConsumerAuthorizationRuleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConsumerAuthorizationRule",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/consumers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(consumerId)) + "/authorization-rules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(consumerAuthorizationRuleId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConsumerAuthorizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConsumerAuthorizationRule(_ consumerAuthorizationRuleId: String, _ consumerId: String) async throws -> GetConsumerAuthorizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getConsumerAuthorizationRuleWithOptions(consumerAuthorizationRuleId as! String, consumerId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDashboardWithOptions(_ gatewayId: String, _ tmpReq: GetDashboardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDashboardResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetDashboardShrinkRequest = GetDashboardShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "filter", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["acceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["apiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            query["filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginClassId)) {
            query["pluginClassId"] = request.pluginClassId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["pluginId"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeId)) {
            query["routeId"] = request.routeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upstreamCluster)) {
            query["upstreamCluster"] = request.upstreamCluster ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDashboard",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/dashboards",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDashboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDashboard(_ gatewayId: String, _ request: GetDashboardRequest) async throws -> GetDashboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDashboardWithOptions(gatewayId as! String, request as! GetDashboardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomainWithOptions(_ domainId: String, _ request: GetDomainRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.withStatistics)) {
            query["withStatistics"] = request.withStatistics!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDomain",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/domains/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(domainId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomain(_ domainId: String, _ request: GetDomainRequest) async throws -> GetDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDomainWithOptions(domainId as! String, request as! GetDomainRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnvironmentWithOptions(_ environmentId: String, _ request: GetEnvironmentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnvironmentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.withStatistics)) {
            query["withStatistics"] = request.withStatistics!;
        }
        if (!TeaUtils.Client.isUnset(request.withVpcInfo)) {
            query["withVpcInfo"] = request.withVpcInfo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnvironment",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/environments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(environmentId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnvironmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnvironment(_ environmentId: String, _ request: GetEnvironmentRequest) async throws -> GetEnvironmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEnvironmentWithOptions(environmentId as! String, request as! GetEnvironmentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayWithOptions(_ gatewayId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGatewayResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGateway",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGateway(_ gatewayId: String) async throws -> GetGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGatewayWithOptions(gatewayId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHttpApiWithOptions(_ httpApiId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHttpApiResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHttpApi",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHttpApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHttpApi(_ httpApiId: String) async throws -> GetHttpApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHttpApiWithOptions(httpApiId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHttpApiOperationWithOptions(_ httpApiId: String, _ operationId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHttpApiOperationResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHttpApiOperation",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/operations/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(operationId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHttpApiOperationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHttpApiOperation(_ httpApiId: String, _ operationId: String) async throws -> GetHttpApiOperationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHttpApiOperationWithOptions(httpApiId as! String, operationId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHttpApiRouteWithOptions(_ httpApiId: String, _ routeId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHttpApiRouteResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHttpApiRoute",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/routes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(routeId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHttpApiRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHttpApiRoute(_ httpApiId: String, _ routeId: String) async throws -> GetHttpApiRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHttpApiRouteWithOptions(httpApiId as! String, routeId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcpServerWithOptions(_ mcpServerId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMcpServerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMcpServer",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/mcp-servers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(mcpServerId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMcpServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcpServer(_ mcpServerId: String) async throws -> GetMcpServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMcpServerWithOptions(mcpServerId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPluginAttachmentWithOptions(_ pluginAttachmentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPluginAttachmentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPluginAttachment",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/plugin-attachments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pluginAttachmentId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPluginAttachmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPluginAttachment(_ pluginAttachmentId: String) async throws -> GetPluginAttachmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPluginAttachmentWithOptions(pluginAttachmentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicyWithOptions(_ policyId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPolicyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPolicy",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v2/policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicy(_ policyId: String) async throws -> GetPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPolicyWithOptions(policyId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicyAttachmentWithOptions(_ policyAttachmentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPolicyAttachmentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPolicyAttachment",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/policy-attachments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyAttachmentId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPolicyAttachmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicyAttachment(_ policyAttachmentId: String) async throws -> GetPolicyAttachmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPolicyAttachmentWithOptions(policyAttachmentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceOverviewWithOptions(_ request: GetResourceOverviewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceOverviewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            query["gatewayType"] = request.gatewayType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceOverview",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/overview/resources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceOverviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceOverview(_ request: GetResourceOverviewRequest) async throws -> GetResourceOverviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceOverviewWithOptions(request as! GetResourceOverviewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecretWithOptions(_ secretId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSecretResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSecret",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/secrets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(secretId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSecretResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecret(_ secretId: String) async throws -> GetSecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSecretWithOptions(secretId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecretValueWithOptions(_ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSecretValueResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSecretValue",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/secrets/name/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)) + "/value",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSecretValueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecretValue(_ name: String) async throws -> GetSecretValueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSecretValueWithOptions(name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceWithOptions(_ serviceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetService",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceId)),
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
    public func getService(_ serviceId: String) async throws -> GetServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceWithOptions(serviceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSourceWithOptions(_ sourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSource",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/sources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSource(_ sourceId: String) async throws -> GetSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSourceWithOptions(sourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTraceConfigWithOptions(_ gatewayId: String, _ request: GetTraceConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTraceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["acceptLanguage"] = request.acceptLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTraceConfig",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/trace",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTraceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTraceConfig(_ gatewayId: String, _ request: GetTraceConfigRequest) async throws -> GetTraceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTraceConfigWithOptions(gatewayId as! String, request as! GetTraceConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importHttpApiWithOptions(_ request: ImportHttpApiRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportHttpApiResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deployConfigs)) {
            body["deployConfigs"] = request.deployConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            body["dryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            body["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mcpRouteId)) {
            body["mcpRouteId"] = request.mcpRouteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specContentBase64)) {
            body["specContentBase64"] = request.specContentBase64 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specFileUrl)) {
            body["specFileUrl"] = request.specFileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specOssConfig)) {
            body["specOssConfig"] = request.specOssConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.strategy)) {
            body["strategy"] = request.strategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetHttpApiId)) {
            body["targetHttpApiId"] = request.targetHttpApiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionConfig)) {
            body["versionConfig"] = request.versionConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportHttpApi",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/import",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportHttpApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importHttpApi(_ request: ImportHttpApiRequest) async throws -> ImportHttpApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await importHttpApiWithOptions(request as! ImportHttpApiRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installPluginWithOptions(_ request: InstallPluginRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InstallPluginResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayIds)) {
            body["gatewayIds"] = request.gatewayIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.pluginClassId)) {
            body["pluginClassId"] = request.pluginClassId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InstallPlugin",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/plugins/",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InstallPluginResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installPlugin(_ request: InstallPluginRequest) async throws -> InstallPluginResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await installPluginWithOptions(request as! InstallPluginRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConsumerAuthorizationRulesWithOptions(_ consumerId: String, _ request: ListConsumerAuthorizationRulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConsumerAuthorizationRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiNameLike)) {
            query["apiNameLike"] = request.apiNameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConsumerAuthorizationRules",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/consumers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(consumerId)) + "/authorization-rules",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConsumerAuthorizationRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConsumerAuthorizationRules(_ consumerId: String, _ request: ListConsumerAuthorizationRulesRequest) async throws -> ListConsumerAuthorizationRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listConsumerAuthorizationRulesWithOptions(consumerId as! String, request as! ListConsumerAuthorizationRulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConsumersWithOptions(_ request: ListConsumersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConsumersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            query["gatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nameLike)) {
            query["nameLike"] = request.nameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConsumers",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/consumers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConsumersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConsumers(_ request: ListConsumersRequest) async throws -> ListConsumersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listConsumersWithOptions(request as! ListConsumersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDomainsWithOptions(_ request: ListDomainsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDomainsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            query["gatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nameLike)) {
            query["nameLike"] = request.nameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDomains",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/domains",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDomainsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDomains(_ request: ListDomainsRequest) async throws -> ListDomainsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDomainsWithOptions(request as! ListDomainsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnvironmentsWithOptions(_ request: ListEnvironmentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEnvironmentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliasLike)) {
            query["aliasLike"] = request.aliasLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayNameLike)) {
            query["gatewayNameLike"] = request.gatewayNameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            query["gatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nameLike)) {
            query["nameLike"] = request.nameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEnvironments",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/environments",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEnvironmentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnvironments(_ request: ListEnvironmentsRequest) async throws -> ListEnvironmentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEnvironmentsWithOptions(request as! ListEnvironmentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayFeaturesWithOptions(_ gatewayId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGatewayFeaturesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGatewayFeatures",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/gateway-features",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGatewayFeaturesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayFeatures(_ gatewayId: String) async throws -> ListGatewayFeaturesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGatewayFeaturesWithOptions(gatewayId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewaysWithOptions(_ tmpReq: ListGatewaysRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGatewaysResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListGatewaysShrinkRequest = ListGatewaysShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            query["gatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGateways",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGatewaysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGateways(_ request: ListGatewaysRequest) async throws -> ListGatewaysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGatewaysWithOptions(request as! ListGatewaysRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHttpApiOperationsWithOptions(_ httpApiId: String, _ request: ListHttpApiOperationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHttpApiOperationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.consumerAuthorizationRuleId)) {
            query["consumerAuthorizationRuleId"] = request.consumerAuthorizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAuth)) {
            query["enableAuth"] = request.enableAuth!;
        }
        if (!TeaUtils.Client.isUnset(request.forDeploy)) {
            query["forDeploy"] = request.forDeploy!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.method)) {
            query["method"] = request.method ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nameLike)) {
            query["nameLike"] = request.nameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pathLike)) {
            query["pathLike"] = request.pathLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withConsumerInEnvironmentId)) {
            query["withConsumerInEnvironmentId"] = request.withConsumerInEnvironmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withConsumerInfoById)) {
            query["withConsumerInfoById"] = request.withConsumerInfoById ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withPluginAttachmentByPluginId)) {
            query["withPluginAttachmentByPluginId"] = request.withPluginAttachmentByPluginId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHttpApiOperations",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/operations",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHttpApiOperationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHttpApiOperations(_ httpApiId: String, _ request: ListHttpApiOperationsRequest) async throws -> ListHttpApiOperationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listHttpApiOperationsWithOptions(httpApiId as! String, request as! ListHttpApiOperationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHttpApiRoutesWithOptions(_ httpApiId: String, _ request: ListHttpApiRoutesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHttpApiRoutesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.consumerAuthorizationRuleId)) {
            query["consumerAuthorizationRuleId"] = request.consumerAuthorizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deployStatuses)) {
            query["deployStatuses"] = request.deployStatuses ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainId)) {
            query["domainId"] = request.domainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentId)) {
            query["environmentId"] = request.environmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forDeploy)) {
            query["forDeploy"] = request.forDeploy!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nameLike)) {
            query["nameLike"] = request.nameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pathLike)) {
            query["pathLike"] = request.pathLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withAuthPolicyInfo)) {
            query["withAuthPolicyInfo"] = request.withAuthPolicyInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.withConsumerInfoById)) {
            query["withConsumerInfoById"] = request.withConsumerInfoById ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withPluginAttachmentByPluginId)) {
            query["withPluginAttachmentByPluginId"] = request.withPluginAttachmentByPluginId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHttpApiRoutes",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/routes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHttpApiRoutesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHttpApiRoutes(_ httpApiId: String, _ request: ListHttpApiRoutesRequest) async throws -> ListHttpApiRoutesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listHttpApiRoutesWithOptions(httpApiId as! String, request as! ListHttpApiRoutesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHttpApisWithOptions(_ request: ListHttpApisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHttpApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            query["gatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.types)) {
            query["types"] = request.types ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withAPIsPublishedToEnvironment)) {
            query["withAPIsPublishedToEnvironment"] = request.withAPIsPublishedToEnvironment!;
        }
        if (!TeaUtils.Client.isUnset(request.withAuthPolicyInEnvironmentId)) {
            query["withAuthPolicyInEnvironmentId"] = request.withAuthPolicyInEnvironmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withAuthPolicyList)) {
            query["withAuthPolicyList"] = request.withAuthPolicyList!;
        }
        if (!TeaUtils.Client.isUnset(request.withConsumerInfoById)) {
            query["withConsumerInfoById"] = request.withConsumerInfoById ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withEnvironmentInfo)) {
            query["withEnvironmentInfo"] = request.withEnvironmentInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.withEnvironmentInfoById)) {
            query["withEnvironmentInfoById"] = request.withEnvironmentInfoById ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withIngressInfo)) {
            query["withIngressInfo"] = request.withIngressInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.withPluginAttachmentByPluginId)) {
            query["withPluginAttachmentByPluginId"] = request.withPluginAttachmentByPluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withPolicyConfigs)) {
            query["withPolicyConfigs"] = request.withPolicyConfigs!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHttpApis",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHttpApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHttpApis(_ request: ListHttpApisRequest) async throws -> ListHttpApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listHttpApisWithOptions(request as! ListHttpApisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcpServersWithOptions(_ request: ListMcpServersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMcpServersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createFromTypes)) {
            query["createFromTypes"] = request.createFromTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deployStatuses)) {
            query["deployStatuses"] = request.deployStatuses ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nameLike)) {
            query["nameLike"] = request.nameLike ?? "";
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
            "action": "ListMcpServers",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/mcp-servers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMcpServersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcpServers(_ request: ListMcpServersRequest) async throws -> ListMcpServersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMcpServersWithOptions(request as! ListMcpServersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPluginAttachmentsWithOptions(_ request: ListPluginAttachmentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPluginAttachmentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachResourceId)) {
            query["attachResourceId"] = request.attachResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attachResourceType)) {
            query["attachResourceType"] = request.attachResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attachResourceTypes)) {
            query["attachResourceTypes"] = request.attachResourceTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentId)) {
            query["environmentId"] = request.environmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["pluginId"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withParentResource)) {
            query["withParentResource"] = request.withParentResource!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPluginAttachments",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/plugin-attachments",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPluginAttachmentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPluginAttachments(_ request: ListPluginAttachmentsRequest) async throws -> ListPluginAttachmentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPluginAttachmentsWithOptions(request as! ListPluginAttachmentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPluginClassesWithOptions(_ request: ListPluginClassesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPluginClassesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliasLike)) {
            query["aliasLike"] = request.aliasLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.direction)) {
            query["direction"] = request.direction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeBuiltinAiProxy)) {
            query["excludeBuiltinAiProxy"] = request.excludeBuiltinAiProxy!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            query["gatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.installed)) {
            query["installed"] = request.installed!;
        }
        if (!TeaUtils.Client.isUnset(request.nameLike)) {
            query["nameLike"] = request.nameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPluginClasses",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/plugin-classes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPluginClassesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPluginClasses(_ request: ListPluginClassesRequest) async throws -> ListPluginClassesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPluginClassesWithOptions(request as! ListPluginClassesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPluginsWithOptions(_ request: ListPluginsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPluginsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachResourceId)) {
            query["attachResourceId"] = request.attachResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attachResourceType)) {
            query["attachResourceType"] = request.attachResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            query["gatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeBuiltinAiGateway)) {
            query["includeBuiltinAiGateway"] = request.includeBuiltinAiGateway!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pluginClassId)) {
            query["pluginClassId"] = request.pluginClassId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginClassName)) {
            query["pluginClassName"] = request.pluginClassName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withAttachmentInfo)) {
            query["withAttachmentInfo"] = request.withAttachmentInfo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPlugins",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/plugins",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPluginsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPlugins(_ request: ListPluginsRequest) async throws -> ListPluginsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPluginsWithOptions(request as! ListPluginsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPoliciesWithOptions(_ request: ListPoliciesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPoliciesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachResourceId)) {
            query["attachResourceId"] = request.attachResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attachResourceType)) {
            query["attachResourceType"] = request.attachResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentId)) {
            query["environmentId"] = request.environmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withAttachments)) {
            query["withAttachments"] = request.withAttachments!;
        }
        if (!TeaUtils.Client.isUnset(request.withSystemPolicy)) {
            query["withSystemPolicy"] = request.withSystemPolicy!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPolicies",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/policies",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPoliciesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicies(_ request: ListPoliciesRequest) async throws -> ListPoliciesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPoliciesWithOptions(request as! ListPoliciesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicyClassesWithOptions(_ request: ListPolicyClassesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPolicyClassesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachResourceId)) {
            query["attachResourceId"] = request.attachResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attachResourceType)) {
            query["attachResourceType"] = request.attachResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.direction)) {
            query["direction"] = request.direction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
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
            "action": "ListPolicyClasses",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/policy-classes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPolicyClassesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicyClasses(_ request: ListPolicyClassesRequest) async throws -> ListPolicyClassesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPolicyClassesWithOptions(request as! ListPolicyClassesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSecretReferencesWithOptions(_ secretId: String, _ request: ListSecretReferencesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSecretReferencesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSecretReferences",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/secrets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(secretId)) + "/references",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSecretReferencesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSecretReferences(_ secretId: String, _ request: ListSecretReferencesRequest) async throws -> ListSecretReferencesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSecretReferencesWithOptions(secretId as! String, request as! ListSecretReferencesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSecretsWithOptions(_ request: ListSecretsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSecretsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            query["gatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nameLike)) {
            query["nameLike"] = request.nameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSecrets",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/secrets",
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
    public func listServicesWithOptions(_ request: ListServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["sourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypes)) {
            query["sourceTypes"] = request.sourceTypes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServices",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/services",
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
        var headers: [String: String] = [:]
        return try await listServicesWithOptions(request as! ListServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSslCertsWithOptions(_ request: ListSslCertsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSslCertsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certNameLike)) {
            query["certNameLike"] = request.certNameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["domainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSslCerts",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/ssl/certs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSslCertsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSslCerts(_ request: ListSslCertsRequest) async throws -> ListSslCertsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSslCertsWithOptions(request as! ListSslCertsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listZonesWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListZonesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListZones",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/zones",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListZonesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listZones() async throws -> ListZonesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listZonesWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryConsumerAuthorizationRulesWithOptions(_ request: QueryConsumerAuthorizationRulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryConsumerAuthorizationRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiNameLike)) {
            query["apiNameLike"] = request.apiNameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerId)) {
            query["consumerId"] = request.consumerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerNameLike)) {
            query["consumerNameLike"] = request.consumerNameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentId)) {
            query["environmentId"] = request.environmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupByApi)) {
            query["groupByApi"] = request.groupByApi!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.parentResourceId)) {
            query["parentResourceId"] = request.parentResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["resourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["resourceTypes"] = request.resourceTypes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryConsumerAuthorizationRules",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/authorization-rules",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryConsumerAuthorizationRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryConsumerAuthorizationRules(_ request: QueryConsumerAuthorizationRulesRequest) async throws -> QueryConsumerAuthorizationRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryConsumerAuthorizationRulesWithOptions(request as! QueryConsumerAuthorizationRulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeConsumerAuthorizationRuleWithOptions(_ consumerAuthorizationRuleId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveConsumerAuthorizationRuleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveConsumerAuthorizationRule",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/authorization-rules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(consumerAuthorizationRuleId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveConsumerAuthorizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeConsumerAuthorizationRule(_ consumerAuthorizationRuleId: String) async throws -> RemoveConsumerAuthorizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeConsumerAuthorizationRuleWithOptions(consumerAuthorizationRuleId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartGatewayWithOptions(_ gatewayId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartGatewayResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartGateway",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/restart",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartGateway(_ gatewayId: String) async throws -> RestartGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await restartGatewayWithOptions(gatewayId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncMCPServersWithOptions(_ request: SyncMCPServersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncMCPServersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainIds)) {
            body["domainIds"] = request.domainIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            body["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nacosMcpServers)) {
            body["nacosMcpServers"] = request.nacosMcpServers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncMCPServers",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/mcp-servers/sync-mcp-server",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncMCPServersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncMCPServers(_ request: SyncMCPServersRequest) async throws -> SyncMCPServersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await syncMCPServersWithOptions(request as! SyncMCPServersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unDeployMcpServerWithOptions(_ mcpServerId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UnDeployMcpServerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnDeployMcpServer",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/mcp-servers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(mcpServerId)) + "/undeploy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnDeployMcpServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unDeployMcpServer(_ mcpServerId: String) async throws -> UnDeployMcpServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await unDeployMcpServerWithOptions(mcpServerId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func undeployHttpApiWithOptions(_ httpApiId: String, _ request: UndeployHttpApiRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UndeployHttpApiResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environmentId)) {
            body["environmentId"] = request.environmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            body["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationId)) {
            body["operationId"] = request.operationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeId)) {
            body["routeId"] = request.routeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UndeployHttpApi",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/undeploy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UndeployHttpApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func undeployHttpApi(_ httpApiId: String, _ request: UndeployHttpApiRequest) async throws -> UndeployHttpApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await undeployHttpApiWithOptions(httpApiId as! String, request as! UndeployHttpApiRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uninstallPluginWithOptions(_ pluginId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UninstallPluginResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UninstallPlugin",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/plugins/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pluginId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UninstallPluginResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uninstallPlugin(_ pluginId: String) async throws -> UninstallPluginResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await uninstallPluginWithOptions(pluginId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAndAttachPolicyWithOptions(_ policyId: String, _ request: UpdateAndAttachPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAndAttachPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachResourceIds)) {
            body["attachResourceIds"] = request.attachResourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.attachResourceType)) {
            body["attachResourceType"] = request.attachResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentId)) {
            body["environmentId"] = request.environmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            body["gatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAndAttachPolicy",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAndAttachPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAndAttachPolicy(_ policyId: String, _ request: UpdateAndAttachPolicyRequest) async throws -> UpdateAndAttachPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAndAttachPolicyWithOptions(policyId as! String, request as! UpdateAndAttachPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConsumerWithOptions(_ consumerId: String, _ request: UpdateConsumerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConsumerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.akSkIdentityConfigs)) {
            body["akSkIdentityConfigs"] = request.akSkIdentityConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.apikeyIdentityConfig)) {
            body["apikeyIdentityConfig"] = request.apikeyIdentityConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enable)) {
            body["enable"] = request.enable!;
        }
        if (!TeaUtils.Client.isUnset(request.jwtIdentityConfig)) {
            body["jwtIdentityConfig"] = request.jwtIdentityConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConsumer",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/consumers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(consumerId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConsumerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConsumer(_ consumerId: String, _ request: UpdateConsumerRequest) async throws -> UpdateConsumerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateConsumerWithOptions(consumerId as! String, request as! UpdateConsumerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConsumerAuthorizationRuleWithOptions(_ consumerId: String, _ consumerAuthorizationRuleId: String, _ request: UpdateConsumerAuthorizationRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConsumerAuthorizationRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationResourceInfos)) {
            body["authorizationResourceInfos"] = request.authorizationResourceInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.expireMode)) {
            body["expireMode"] = request.expireMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireTimestamp)) {
            body["expireTimestamp"] = request.expireTimestamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConsumerAuthorizationRule",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/consumers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(consumerId)) + "/authorization-rules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(consumerAuthorizationRuleId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConsumerAuthorizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConsumerAuthorizationRule(_ consumerId: String, _ consumerAuthorizationRuleId: String, _ request: UpdateConsumerAuthorizationRuleRequest) async throws -> UpdateConsumerAuthorizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateConsumerAuthorizationRuleWithOptions(consumerId as! String, consumerAuthorizationRuleId as! String, request as! UpdateConsumerAuthorizationRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDomainWithOptions(_ domainId: String, _ request: UpdateDomainRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caCertIdentifier)) {
            body["caCertIdentifier"] = request.caCertIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certIdentifier)) {
            body["certIdentifier"] = request.certIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientCACert)) {
            body["clientCACert"] = request.clientCACert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceHttps)) {
            body["forceHttps"] = request.forceHttps!;
        }
        if (!TeaUtils.Client.isUnset(request.http2Option)) {
            body["http2Option"] = request.http2Option ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mTLSEnabled)) {
            body["mTLSEnabled"] = request.mTLSEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tlsCipherSuitesConfig)) {
            body["tlsCipherSuitesConfig"] = request.tlsCipherSuitesConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.tlsMax)) {
            body["tlsMax"] = request.tlsMax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tlsMin)) {
            body["tlsMin"] = request.tlsMin ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDomain",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/domains/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(domainId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDomain(_ domainId: String, _ request: UpdateDomainRequest) async throws -> UpdateDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDomainWithOptions(domainId as! String, request as! UpdateDomainRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEnvironmentWithOptions(_ environmentId: String, _ request: UpdateEnvironmentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEnvironmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            body["alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEnvironment",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/environments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(environmentId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEnvironmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEnvironment(_ environmentId: String, _ request: UpdateEnvironmentRequest) async throws -> UpdateEnvironmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateEnvironmentWithOptions(environmentId as! String, request as! UpdateEnvironmentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayFeatureWithOptions(_ gatewayId: String, _ name: String, _ request: UpdateGatewayFeatureRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGatewayFeatureResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.value)) {
            body["value"] = request.value ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGatewayFeature",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/gateway-features/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGatewayFeatureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayFeature(_ gatewayId: String, _ name: String, _ request: UpdateGatewayFeatureRequest) async throws -> UpdateGatewayFeatureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateGatewayFeatureWithOptions(gatewayId as! String, name as! String, request as! UpdateGatewayFeatureRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayNameWithOptions(_ gatewayId: String, _ request: UpdateGatewayNameRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGatewayNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGatewayName",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/name",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGatewayNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayName(_ gatewayId: String, _ request: UpdateGatewayNameRequest) async throws -> UpdateGatewayNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateGatewayNameWithOptions(gatewayId as! String, request as! UpdateGatewayNameRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHttpApiWithOptions(_ httpApiId: String, _ request: UpdateHttpApiRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHttpApiResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentProtocols)) {
            body["agentProtocols"] = request.agentProtocols ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.aiProtocols)) {
            body["aiProtocols"] = request.aiProtocols ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.authConfig)) {
            body["authConfig"] = request.authConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.basePath)) {
            body["basePath"] = request.basePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deployConfigs)) {
            body["deployConfigs"] = request.deployConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAuth)) {
            body["enableAuth"] = request.enableAuth!;
        }
        if (!TeaUtils.Client.isUnset(request.firstByteTimeout)) {
            body["firstByteTimeout"] = request.firstByteTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.ingressConfig)) {
            body["ingressConfig"] = request.ingressConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.onlyChangeConfig)) {
            body["onlyChangeConfig"] = request.onlyChangeConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.protocols)) {
            body["protocols"] = request.protocols ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.removeBasePathOnForward)) {
            body["removeBasePathOnForward"] = request.removeBasePathOnForward!;
        }
        if (!TeaUtils.Client.isUnset(request.versionConfig)) {
            body["versionConfig"] = request.versionConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateHttpApi",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateHttpApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHttpApi(_ httpApiId: String, _ request: UpdateHttpApiRequest) async throws -> UpdateHttpApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateHttpApiWithOptions(httpApiId as! String, request as! UpdateHttpApiRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHttpApiOperationWithOptions(_ httpApiId: String, _ operationId: String, _ request: UpdateHttpApiOperationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHttpApiOperationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operation)) {
            body["operation"] = request.operation!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateHttpApiOperation",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/operations/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(operationId)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateHttpApiOperationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHttpApiOperation(_ httpApiId: String, _ operationId: String, _ request: UpdateHttpApiOperationRequest) async throws -> UpdateHttpApiOperationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateHttpApiOperationWithOptions(httpApiId as! String, operationId as! String, request as! UpdateHttpApiOperationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHttpApiRouteWithOptions(_ httpApiId: String, _ routeId: String, _ request: UpdateHttpApiRouteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHttpApiRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendConfig)) {
            body["backendConfig"] = request.backendConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.deployConfigs)) {
            body["deployConfigs"] = request.deployConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainIds)) {
            body["domainIds"] = request.domainIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.environmentId)) {
            body["environmentId"] = request.environmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.match)) {
            body["match"] = request.match!;
        }
        if (!TeaUtils.Client.isUnset(request.mcpRouteConfig)) {
            body["mcpRouteConfig"] = request.mcpRouteConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyConfigs)) {
            body["policyConfigs"] = request.policyConfigs ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateHttpApiRoute",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/routes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(routeId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateHttpApiRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHttpApiRoute(_ httpApiId: String, _ routeId: String, _ request: UpdateHttpApiRouteRequest) async throws -> UpdateHttpApiRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateHttpApiRouteWithOptions(httpApiId as! String, routeId as! String, request as! UpdateHttpApiRouteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMcpServerWithOptions(_ mcpServerId: String, _ request: UpdateMcpServerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMcpServerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assembledSources)) {
            body["assembledSources"] = request.assembledSources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.backendConfig)) {
            body["backendConfig"] = request.backendConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.createFromType)) {
            body["createFromType"] = request.createFromType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainIds)) {
            body["domainIds"] = request.domainIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.exposedUriPath)) {
            body["exposedUriPath"] = request.exposedUriPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grayMcpServerConfigs)) {
            body["grayMcpServerConfigs"] = request.grayMcpServerConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.match)) {
            body["match"] = request.match!;
        }
        if (!TeaUtils.Client.isUnset(request.mcpStatisticsEnable)) {
            body["mcpStatisticsEnable"] = request.mcpStatisticsEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMcpServer",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/mcp-servers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(mcpServerId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMcpServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMcpServer(_ mcpServerId: String, _ request: UpdateMcpServerRequest) async throws -> UpdateMcpServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMcpServerWithOptions(mcpServerId as! String, request as! UpdateMcpServerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePluginAttachmentWithOptions(_ pluginAttachmentId: String, _ request: UpdatePluginAttachmentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePluginAttachmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachResourceIds)) {
            body["attachResourceIds"] = request.attachResourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.enable)) {
            body["enable"] = request.enable!;
        }
        if (!TeaUtils.Client.isUnset(request.pluginConfig)) {
            body["pluginConfig"] = request.pluginConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePluginAttachment",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/plugin-attachments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pluginAttachmentId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePluginAttachmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePluginAttachment(_ pluginAttachmentId: String, _ request: UpdatePluginAttachmentRequest) async throws -> UpdatePluginAttachmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePluginAttachmentWithOptions(pluginAttachmentId as! String, request as! UpdatePluginAttachmentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePolicyWithOptions(_ policyId: String, _ request: UpdatePolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePolicy",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v2/policies/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(policyId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePolicy(_ policyId: String, _ request: UpdatePolicyRequest) async throws -> UpdatePolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePolicyWithOptions(policyId as! String, request as! UpdatePolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSecretWithOptions(_ secretId: String, _ request: UpdateSecretRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSecretResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.secretData)) {
            body["secretData"] = request.secretData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSecret",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/secrets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(secretId)),
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
    public func updateSecret(_ secretId: String, _ request: UpdateSecretRequest) async throws -> UpdateSecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSecretWithOptions(secretId as! String, request as! UpdateSecretRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceWithOptions(_ serviceId: String, _ request: UpdateServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addresses)) {
            body["addresses"] = request.addresses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.agentServiceConfig)) {
            body["agentServiceConfig"] = request.agentServiceConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.aiServiceConfig)) {
            body["aiServiceConfig"] = request.aiServiceConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.dnsServers)) {
            body["dnsServers"] = request.dnsServers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConfig)) {
            body["healthCheckConfig"] = request.healthCheckConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.healthyPanicThreshold)) {
            body["healthyPanicThreshold"] = request.healthyPanicThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.outlierDetectionConfig)) {
            body["outlierDetectionConfig"] = request.outlierDetectionConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.ports)) {
            body["ports"] = request.ports ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["protocol"] = request.protocol_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateService",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceId)),
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
    public func updateService(_ serviceId: String, _ request: UpdateServiceRequest) async throws -> UpdateServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceWithOptions(serviceId as! String, request as! UpdateServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceVersionWithOptions(_ serviceId: String, _ name: String, _ request: UpdateServiceVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["labels"] = request.labels ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceVersion",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceVersion(_ serviceId: String, _ name: String, _ request: UpdateServiceVersionRequest) async throws -> UpdateServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceVersionWithOptions(serviceId as! String, name as! String, request as! UpdateServiceVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeGatewayWithOptions(_ gatewayId: String, _ request: UpgradeGatewayRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeGateway",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/upgrade",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeGateway(_ gatewayId: String, _ request: UpgradeGatewayRequest) async throws -> UpgradeGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await upgradeGatewayWithOptions(gatewayId as! String, request as! UpgradeGatewayRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
