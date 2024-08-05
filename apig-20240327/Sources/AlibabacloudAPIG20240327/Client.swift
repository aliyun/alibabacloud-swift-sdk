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
    public func createDomainWithOptions(_ request: CreateDomainRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caCertIndentifier)) {
            body["caCertIndentifier"] = request.caCertIndentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certIndentifier)) {
            body["certIndentifier"] = request.certIndentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceHttps)) {
            body["forceHttps"] = request.forceHttps!;
        }
        if (!TeaUtils.Client.isUnset(request.http2Option)) {
            body["http2Option"] = request.http2Option ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["protocol"] = request.protocol_ ?? "";
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
    public func createGatewayRouteWithOptions(_ gatewayId: String, _ request: CreateGatewayRouteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGatewayRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendConfig)) {
            body["backendConfig"] = request.backendConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainConfig)) {
            body["domainConfig"] = request.domainConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.match)) {
            body["match"] = request.match!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGatewayRoute",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/http-routes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGatewayRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayRoute(_ gatewayId: String, _ request: CreateGatewayRouteRequest) async throws -> CreateGatewayRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createGatewayRouteWithOptions(gatewayId as! String, request as! CreateGatewayRouteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayServiceWithOptions(_ gatewayId: String, _ request: CreateGatewayServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGatewayServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayServiceConfigs)) {
            body["gatewayServiceConfigs"] = request.gatewayServiceConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["sourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGatewayService",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/gateway-services",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGatewayServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayService(_ gatewayId: String, _ request: CreateGatewayServiceRequest) async throws -> CreateGatewayServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createGatewayServiceWithOptions(gatewayId as! String, request as! CreateGatewayServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayServiceVersionWithOptions(_ gatewayId: String, _ gatewayServiceId: String, _ request: CreateGatewayServiceVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGatewayServiceVersionResponse {
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
            "action": "CreateGatewayServiceVersion",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/gateway-services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayServiceId)) + "/service-versions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGatewayServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayServiceVersion(_ gatewayId: String, _ gatewayServiceId: String, _ request: CreateGatewayServiceVersionRequest) async throws -> CreateGatewayServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createGatewayServiceVersionWithOptions(gatewayId as! String, gatewayServiceId as! String, request as! CreateGatewayServiceVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHttpApiWithOptions(_ request: CreateHttpApiRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHttpApiResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.basePath)) {
            body["basePath"] = request.basePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocols)) {
            body["protocols"] = request.protocols ?? [];
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
    public func createServiceSourceWithOptions(_ gatewayId: String, _ request: CreateServiceSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.k8sServiceSourceConfig)) {
            body["k8sServiceSourceConfig"] = request.k8sServiceSourceConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.nacosServiceSourceConfig)) {
            body["nacosServiceSourceConfig"] = request.nacosServiceSourceConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceSource",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/service-sources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceSource(_ gatewayId: String, _ request: CreateServiceSourceRequest) async throws -> CreateServiceSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceSourceWithOptions(gatewayId as! String, request as! CreateServiceSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func deleteGatewayRouteWithOptions(_ gatewayId: String, _ gatewayRouteId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewayRouteResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGatewayRoute",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/http-routes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayRouteId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewayRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayRoute(_ gatewayId: String, _ gatewayRouteId: String) async throws -> DeleteGatewayRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteGatewayRouteWithOptions(gatewayId as! String, gatewayRouteId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayServiceWithOptions(_ gatewayId: String, _ gatewayServiceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewayServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGatewayService",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/gateway-services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayServiceId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewayServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayService(_ gatewayId: String, _ gatewayServiceId: String) async throws -> DeleteGatewayServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteGatewayServiceWithOptions(gatewayId as! String, gatewayServiceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayServiceVersionWithOptions(_ gatewayId: String, _ gatewayServiceId: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewayServiceVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGatewayServiceVersion",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/gateway-services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayServiceId)) + "/service-versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewayServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayServiceVersion(_ gatewayId: String, _ gatewayServiceId: String, _ name: String) async throws -> DeleteGatewayServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteGatewayServiceVersionWithOptions(gatewayId as! String, gatewayServiceId as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func deleteServiceSourceWithOptions(_ gatewayId: String, _ serviceSourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceSourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceSource",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/service-sources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceSourceId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceSource(_ gatewayId: String, _ serviceSourceId: String) async throws -> DeleteServiceSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceSourceWithOptions(gatewayId as! String, serviceSourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomainWithOptions(_ domainId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDomainResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
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
    public func getDomain(_ domainId: String) async throws -> GetDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDomainWithOptions(domainId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnvironmentWithOptions(_ environmentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnvironmentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
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
    public func getEnvironment(_ environmentId: String) async throws -> GetEnvironmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEnvironmentWithOptions(environmentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func getGatewayRouteWithOptions(_ gatewayId: String, _ gatewayRouteId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGatewayRouteResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGatewayRoute",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/http-routes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayRouteId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGatewayRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayRoute(_ gatewayId: String, _ gatewayRouteId: String) async throws -> GetGatewayRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGatewayRouteWithOptions(gatewayId as! String, gatewayRouteId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayServiceWithOptions(_ gatewayId: String, _ gatewayServiceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGatewayServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGatewayService",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/gateway-services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayServiceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGatewayServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayService(_ gatewayId: String, _ gatewayServiceId: String) async throws -> GetGatewayServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGatewayServiceWithOptions(gatewayId as! String, gatewayServiceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func listDomainsWithOptions(_ request: ListDomainsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDomainsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
    public func listGatewayRoutesWithOptions(_ gatewayId: String, _ request: ListGatewayRoutesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGatewayRoutesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
        if (!TeaUtils.Client.isUnset(request.path)) {
            query["path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGatewayRoutes",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/http-routes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGatewayRoutesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayRoutes(_ gatewayId: String, _ request: ListGatewayRoutesRequest) async throws -> ListGatewayRoutesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGatewayRoutesWithOptions(gatewayId as! String, request as! ListGatewayRoutesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayServicesWithOptions(_ gatewayId: String, _ request: ListGatewayServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGatewayServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["sourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGatewayServices",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/gateway-services",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGatewayServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayServices(_ gatewayId: String, _ request: ListGatewayServicesRequest) async throws -> ListGatewayServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGatewayServicesWithOptions(gatewayId as! String, request as! ListGatewayServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewaysWithOptions(_ request: ListGatewaysRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGatewaysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["gatewayId"] = request.gatewayId ?? "";
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
    public func listHttpApisWithOptions(_ request: ListHttpApisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHttpApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
        if (!TeaUtils.Client.isUnset(request.publishedOnly)) {
            query["publishedOnly"] = request.publishedOnly!;
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
    public func offlineGatewayRouteWithOptions(_ gatewayId: String, _ gatewayRouteId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineGatewayRouteResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineGatewayRoute",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/http-routes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayRouteId)) + "/offline",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineGatewayRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineGatewayRoute(_ gatewayId: String, _ gatewayRouteId: String) async throws -> OfflineGatewayRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await offlineGatewayRouteWithOptions(gatewayId as! String, gatewayRouteId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineHttpApiWithOptions(_ httpApiId: String, _ request: OfflineHttpApiRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineHttpApiResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environmentId)) {
            body["environmentId"] = request.environmentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineHttpApi",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/offline",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineHttpApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineHttpApi(_ httpApiId: String, _ request: OfflineHttpApiRequest) async throws -> OfflineHttpApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await offlineHttpApiWithOptions(httpApiId as! String, request as! OfflineHttpApiRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishGatewayRouteWithOptions(_ gatewayId: String, _ gatewayRouteId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishGatewayRouteResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishGatewayRoute",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/http-routes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayRouteId)) + "/publish",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishGatewayRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishGatewayRoute(_ gatewayId: String, _ gatewayRouteId: String) async throws -> PublishGatewayRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await publishGatewayRouteWithOptions(gatewayId as! String, gatewayRouteId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishHttpApiWithOptions(_ httpApiId: String, _ request: PublishHttpApiRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishHttpApiResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowOverwrite)) {
            body["allowOverwrite"] = request.allowOverwrite!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["environment"] = request.environment!;
        }
        if (!TeaUtils.Client.isUnset(request.revisionId)) {
            body["revisionId"] = request.revisionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishHttpApi",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/http-apis/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(httpApiId)) + "/publish",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishHttpApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishHttpApi(_ httpApiId: String, _ request: PublishHttpApiRequest) async throws -> PublishHttpApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await publishHttpApiWithOptions(httpApiId as! String, request as! PublishHttpApiRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDomainWithOptions(_ domainId: String, _ request: UpdateDomainRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caCertIndentifier)) {
            body["caCertIndentifier"] = request.caCertIndentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certIndentifier)) {
            body["certIndentifier"] = request.certIndentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceHttps)) {
            body["forceHttps"] = request.forceHttps!;
        }
        if (!TeaUtils.Client.isUnset(request.http2Option)) {
            body["http2Option"] = request.http2Option ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["protocol"] = request.protocol_ ?? "";
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
    public func updateGatewayRouteWithOptions(_ gatewayId: String, _ gatewayRouteId: String, _ request: UpdateGatewayRouteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGatewayRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendConfig)) {
            body["backendConfig"] = request.backendConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainConfig)) {
            body["domainConfig"] = request.domainConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.match)) {
            body["match"] = request.match!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGatewayRoute",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/http-routes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayRouteId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGatewayRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayRoute(_ gatewayId: String, _ gatewayRouteId: String, _ request: UpdateGatewayRouteRequest) async throws -> UpdateGatewayRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateGatewayRouteWithOptions(gatewayId as! String, gatewayRouteId as! String, request as! UpdateGatewayRouteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayServiceWithOptions(_ gatewayId: String, _ gatewayServiceId: String, _ request: UpdateGatewayServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGatewayServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addresses)) {
            body["addresses"] = request.addresses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            body["port"] = request.port!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGatewayService",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/gateway-services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayServiceId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGatewayServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayService(_ gatewayId: String, _ gatewayServiceId: String, _ request: UpdateGatewayServiceRequest) async throws -> UpdateGatewayServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateGatewayServiceWithOptions(gatewayId as! String, gatewayServiceId as! String, request as! UpdateGatewayServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayServiceVersionWithOptions(_ gatewayId: String, _ gatewayServiceId: String, _ name: String, _ request: UpdateGatewayServiceVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGatewayServiceVersionResponse {
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
            "action": "UpdateGatewayServiceVersion",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/gateway-services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayServiceId)) + "/service-versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGatewayServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayServiceVersion(_ gatewayId: String, _ gatewayServiceId: String, _ name: String, _ request: UpdateGatewayServiceVersionRequest) async throws -> UpdateGatewayServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateGatewayServiceVersionWithOptions(gatewayId as! String, gatewayServiceId as! String, name as! String, request as! UpdateGatewayServiceVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHttpApiWithOptions(_ httpApiId: String, _ request: UpdateHttpApiRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHttpApiResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.basePath)) {
            body["basePath"] = request.basePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocols)) {
            body["protocols"] = request.protocols ?? [];
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
    public func updateServiceSourceWithOptions(_ gatewayId: String, _ serviceSourceId: String, _ request: UpdateServiceSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.k8sServiceSourceConfig)) {
            body["k8sServiceSourceConfig"] = request.k8sServiceSourceConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceSource",
            "version": "2024-03-27",
            "protocol": "HTTPS",
            "pathname": "/v1/gateways/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(gatewayId)) + "/service-sources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(serviceSourceId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceSource(_ gatewayId: String, _ serviceSourceId: String, _ request: UpdateServiceSourceRequest) async throws -> UpdateServiceSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceSourceWithOptions(gatewayId as! String, serviceSourceId as! String, request as! UpdateServiceSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
