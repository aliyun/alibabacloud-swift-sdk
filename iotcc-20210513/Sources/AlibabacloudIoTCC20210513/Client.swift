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
        self._endpoint = try getEndpoint("iotcc", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addCidrToConnectionPoolWithOptions(_ request: AddCidrToConnectionPoolRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddCidrToConnectionPoolResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cidrs)) {
            query["Cidrs"] = request.cidrs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionPoolId)) {
            query["ConnectionPoolId"] = request.connectionPoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddCidrToConnectionPool",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddCidrToConnectionPoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addCidrToConnectionPool(_ request: AddCidrToConnectionPoolRequest) async throws -> AddCidrToConnectionPoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addCidrToConnectionPoolWithOptions(request as! AddCidrToConnectionPoolRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addIoTCloudConnectorToGroupWithOptions(_ request: AddIoTCloudConnectorToGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddIoTCloudConnectorToGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddIoTCloudConnectorToGroup",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddIoTCloudConnectorToGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addIoTCloudConnectorToGroup(_ request: AddIoTCloudConnectorToGroupRequest) async throws -> AddIoTCloudConnectorToGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addIoTCloudConnectorToGroupWithOptions(request as! AddIoTCloudConnectorToGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateIpWithConnectionPoolWithOptions(_ request: AssociateIpWithConnectionPoolRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssociateIpWithConnectionPoolResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionPoolId)) {
            query["ConnectionPoolId"] = request.connectionPoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ips)) {
            query["Ips"] = request.ips ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ipsFilePath)) {
            query["IpsFilePath"] = request.ipsFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssociateIpWithConnectionPool",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssociateIpWithConnectionPoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateIpWithConnectionPool(_ request: AssociateIpWithConnectionPoolRequest) async throws -> AssociateIpWithConnectionPoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await associateIpWithConnectionPoolWithOptions(request as! AssociateIpWithConnectionPoolRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateVSwitchWithIoTCloudConnectorWithOptions(_ request: AssociateVSwitchWithIoTCloudConnectorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssociateVSwitchWithIoTCloudConnectorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchList)) {
            query["VSwitchList"] = request.vSwitchList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssociateVSwitchWithIoTCloudConnector",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssociateVSwitchWithIoTCloudConnectorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateVSwitchWithIoTCloudConnector(_ request: AssociateVSwitchWithIoTCloudConnectorRequest) async throws -> AssociateVSwitchWithIoTCloudConnectorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await associateVSwitchWithIoTCloudConnectorWithOptions(request as! AssociateVSwitchWithIoTCloudConnectorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmIoTCloudConnectorWithOptions(_ request: ConfirmIoTCloudConnectorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmIoTCloudConnectorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.confirmStatus)) {
            query["ConfirmStatus"] = request.confirmStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmIoTCloudConnector",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmIoTCloudConnectorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmIoTCloudConnector(_ request: ConfirmIoTCloudConnectorRequest) async throws -> ConfirmIoTCloudConnectorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await confirmIoTCloudConnectorWithOptions(request as! ConfirmIoTCloudConnectorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAuthorizationRuleWithOptions(_ request: CreateAuthorizationRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAuthorizationRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationRuleDescription)) {
            query["AuthorizationRuleDescription"] = request.authorizationRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizationRuleName)) {
            query["AuthorizationRuleName"] = request.authorizationRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationPort)) {
            query["DestinationPort"] = request.destinationPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationType)) {
            query["DestinationType"] = request.destinationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            query["Protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCidrs)) {
            query["SourceCidrs"] = request.sourceCidrs ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAuthorizationRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAuthorizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAuthorizationRule(_ request: CreateAuthorizationRuleRequest) async throws -> CreateAuthorizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAuthorizationRuleWithOptions(request as! CreateAuthorizationRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAuthorizationRulesWithOptions(_ request: CreateAuthorizationRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAuthorizationRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationRules)) {
            query["AuthorizationRules"] = request.authorizationRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAuthorizationRules",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAuthorizationRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAuthorizationRules(_ request: CreateAuthorizationRulesRequest) async throws -> CreateAuthorizationRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAuthorizationRulesWithOptions(request as! CreateAuthorizationRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConnectionPoolWithOptions(_ request: CreateConnectionPoolRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConnectionPoolResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cidrs)) {
            query["Cidrs"] = request.cidrs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionPoolDescription)) {
            query["ConnectionPoolDescription"] = request.connectionPoolDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionPoolName)) {
            query["ConnectionPoolName"] = request.connectionPoolName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.count)) {
            query["Count"] = request.count!;
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConnectionPool",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConnectionPoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConnectionPool(_ request: CreateConnectionPoolRequest) async throws -> CreateConnectionPoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createConnectionPoolWithOptions(request as! CreateConnectionPoolRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDNSServiceRuleWithOptions(_ request: CreateDNSServiceRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDNSServiceRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleDescription)) {
            query["DNSServiceRuleDescription"] = request.DNSServiceRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleName)) {
            query["DNSServiceRuleName"] = request.DNSServiceRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["ServiceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDNSServiceRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDNSServiceRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDNSServiceRule(_ request: CreateDNSServiceRuleRequest) async throws -> CreateDNSServiceRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDNSServiceRuleWithOptions(request as! CreateDNSServiceRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupAuthorizationRuleWithOptions(_ request: CreateGroupAuthorizationRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGroupAuthorizationRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationRuleDescription)) {
            query["AuthorizationRuleDescription"] = request.authorizationRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizationRuleName)) {
            query["AuthorizationRuleName"] = request.authorizationRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationPort)) {
            query["DestinationPort"] = request.destinationPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationType)) {
            query["DestinationType"] = request.destinationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            query["Protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCidrs)) {
            query["SourceCidrs"] = request.sourceCidrs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGroupAuthorizationRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGroupAuthorizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupAuthorizationRule(_ request: CreateGroupAuthorizationRuleRequest) async throws -> CreateGroupAuthorizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGroupAuthorizationRuleWithOptions(request as! CreateGroupAuthorizationRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupDNSServiceRuleWithOptions(_ request: CreateGroupDNSServiceRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGroupDNSServiceRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleDescription)) {
            query["DNSServiceRuleDescription"] = request.DNSServiceRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleName)) {
            query["DNSServiceRuleName"] = request.DNSServiceRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["ServiceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGroupDNSServiceRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGroupDNSServiceRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupDNSServiceRule(_ request: CreateGroupDNSServiceRuleRequest) async throws -> CreateGroupDNSServiceRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGroupDNSServiceRuleWithOptions(request as! CreateGroupDNSServiceRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupIpMappingRuleWithOptions(_ request: CreateGroupIpMappingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGroupIpMappingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationIp)) {
            query["DestinationIp"] = request.destinationIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleDescription)) {
            query["IpMappingRuleDescription"] = request.ipMappingRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleName)) {
            query["IpMappingRuleName"] = request.ipMappingRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mappingIp)) {
            query["MappingIp"] = request.mappingIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGroupIpMappingRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGroupIpMappingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupIpMappingRule(_ request: CreateGroupIpMappingRuleRequest) async throws -> CreateGroupIpMappingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGroupIpMappingRuleWithOptions(request as! CreateGroupIpMappingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIoTCloudConnectorWithOptions(_ request: CreateIoTCloudConnectorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIoTCloudConnectorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.APN)) {
            query["APN"] = request.APN ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ISP)) {
            query["ISP"] = request.ISP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorDescription)) {
            query["IoTCloudConnectorDescription"] = request.ioTCloudConnectorDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorName)) {
            query["IoTCloudConnectorName"] = request.ioTCloudConnectorName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceUid)) {
            query["ResourceUid"] = request.resourceUid!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wildcardDomainEnabled)) {
            query["WildcardDomainEnabled"] = request.wildcardDomainEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIoTCloudConnector",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIoTCloudConnectorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIoTCloudConnector(_ request: CreateIoTCloudConnectorRequest) async throws -> CreateIoTCloudConnectorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createIoTCloudConnectorWithOptions(request as! CreateIoTCloudConnectorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIoTCloudConnectorBackhaulRouteWithOptions(_ request: CreateIoTCloudConnectorBackhaulRouteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIoTCloudConnectorBackhaulRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIoTCloudConnectorBackhaulRoute",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIoTCloudConnectorBackhaulRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIoTCloudConnectorBackhaulRoute(_ request: CreateIoTCloudConnectorBackhaulRouteRequest) async throws -> CreateIoTCloudConnectorBackhaulRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createIoTCloudConnectorBackhaulRouteWithOptions(request as! CreateIoTCloudConnectorBackhaulRouteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIoTCloudConnectorGroupWithOptions(_ request: CreateIoTCloudConnectorGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIoTCloudConnectorGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIoTCloudConnectorGroup",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIoTCloudConnectorGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIoTCloudConnectorGroup(_ request: CreateIoTCloudConnectorGroupRequest) async throws -> CreateIoTCloudConnectorGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createIoTCloudConnectorGroupWithOptions(request as! CreateIoTCloudConnectorGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIpMappingRuleWithOptions(_ request: CreateIpMappingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIpMappingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationIp)) {
            query["DestinationIp"] = request.destinationIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleDescription)) {
            query["IpMappingRuleDescription"] = request.ipMappingRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleName)) {
            query["IpMappingRuleName"] = request.ipMappingRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mappingIp)) {
            query["MappingIp"] = request.mappingIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIpMappingRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIpMappingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIpMappingRule(_ request: CreateIpMappingRuleRequest) async throws -> CreateIpMappingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createIpMappingRuleWithOptions(request as! CreateIpMappingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceWithOptions(_ request: CreateServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceDescription)) {
            query["ServiceDescription"] = request.serviceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateService",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createService(_ request: CreateServiceRequest) async throws -> CreateServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createServiceWithOptions(request as! CreateServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceEntryWithOptions(_ request: CreateServiceEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceEntryDescription)) {
            query["ServiceEntryDescription"] = request.serviceEntryDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceEntryName)) {
            query["ServiceEntryName"] = request.serviceEntryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            query["ServiceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            query["TargetType"] = request.targetType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceEntry",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceEntry(_ request: CreateServiceEntryRequest) async throws -> CreateServiceEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createServiceEntryWithOptions(request as! CreateServiceEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAuthorizationRuleWithOptions(_ request: DeleteAuthorizationRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAuthorizationRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationRuleId)) {
            query["AuthorizationRuleId"] = request.authorizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAuthorizationRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAuthorizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAuthorizationRule(_ request: DeleteAuthorizationRuleRequest) async throws -> DeleteAuthorizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAuthorizationRuleWithOptions(request as! DeleteAuthorizationRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConnectionPoolWithOptions(_ request: DeleteConnectionPoolRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConnectionPoolResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionPoolId)) {
            query["ConnectionPoolId"] = request.connectionPoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConnectionPool",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConnectionPoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConnectionPool(_ request: DeleteConnectionPoolRequest) async throws -> DeleteConnectionPoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteConnectionPoolWithOptions(request as! DeleteConnectionPoolRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDNSServiceRuleWithOptions(_ request: DeleteDNSServiceRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDNSServiceRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleId)) {
            query["DNSServiceRuleId"] = request.DNSServiceRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDNSServiceRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDNSServiceRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDNSServiceRule(_ request: DeleteDNSServiceRuleRequest) async throws -> DeleteDNSServiceRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDNSServiceRuleWithOptions(request as! DeleteDNSServiceRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroupAuthorizationRuleWithOptions(_ request: DeleteGroupAuthorizationRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGroupAuthorizationRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationRuleId)) {
            query["AuthorizationRuleId"] = request.authorizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGroupAuthorizationRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGroupAuthorizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroupAuthorizationRule(_ request: DeleteGroupAuthorizationRuleRequest) async throws -> DeleteGroupAuthorizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGroupAuthorizationRuleWithOptions(request as! DeleteGroupAuthorizationRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroupDNSServiceRuleWithOptions(_ request: DeleteGroupDNSServiceRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGroupDNSServiceRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleId)) {
            query["DNSServiceRuleId"] = request.DNSServiceRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGroupDNSServiceRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGroupDNSServiceRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroupDNSServiceRule(_ request: DeleteGroupDNSServiceRuleRequest) async throws -> DeleteGroupDNSServiceRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGroupDNSServiceRuleWithOptions(request as! DeleteGroupDNSServiceRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroupIpMappingRuleWithOptions(_ request: DeleteGroupIpMappingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGroupIpMappingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.groupIpMappingRuleId)) {
            query["GroupIpMappingRuleId"] = request.groupIpMappingRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGroupIpMappingRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGroupIpMappingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroupIpMappingRule(_ request: DeleteGroupIpMappingRuleRequest) async throws -> DeleteGroupIpMappingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGroupIpMappingRuleWithOptions(request as! DeleteGroupIpMappingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIoTCloudConnectorWithOptions(_ request: DeleteIoTCloudConnectorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIoTCloudConnectorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIoTCloudConnector",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIoTCloudConnectorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIoTCloudConnector(_ request: DeleteIoTCloudConnectorRequest) async throws -> DeleteIoTCloudConnectorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteIoTCloudConnectorWithOptions(request as! DeleteIoTCloudConnectorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIoTCloudConnectorGroupWithOptions(_ request: DeleteIoTCloudConnectorGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIoTCloudConnectorGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIoTCloudConnectorGroup",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIoTCloudConnectorGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIoTCloudConnectorGroup(_ request: DeleteIoTCloudConnectorGroupRequest) async throws -> DeleteIoTCloudConnectorGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteIoTCloudConnectorGroupWithOptions(request as! DeleteIoTCloudConnectorGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIoTCloudConnetorBackhaulRouteWithOptions(_ request: DeleteIoTCloudConnetorBackhaulRouteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIoTCloudConnetorBackhaulRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIoTCloudConnetorBackhaulRoute",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIoTCloudConnetorBackhaulRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIoTCloudConnetorBackhaulRoute(_ request: DeleteIoTCloudConnetorBackhaulRouteRequest) async throws -> DeleteIoTCloudConnetorBackhaulRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteIoTCloudConnetorBackhaulRouteWithOptions(request as! DeleteIoTCloudConnetorBackhaulRouteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIpMappingRuleWithOptions(_ request: DeleteIpMappingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIpMappingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleId)) {
            query["IpMappingRuleId"] = request.ipMappingRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIpMappingRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIpMappingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIpMappingRule(_ request: DeleteIpMappingRuleRequest) async throws -> DeleteIpMappingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteIpMappingRuleWithOptions(request as! DeleteIpMappingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceWithOptions(_ request: DeleteServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            query["ServiceId"] = request.serviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteService",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteService(_ request: DeleteServiceRequest) async throws -> DeleteServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteServiceWithOptions(request as! DeleteServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceEntryWithOptions(_ request: DeleteServiceEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceEntryId)) {
            query["ServiceEntryId"] = request.serviceEntryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            query["ServiceId"] = request.serviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceEntry",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceEntry(_ request: DeleteServiceEntryRequest) async throws -> DeleteServiceEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteServiceEntryWithOptions(request as! DeleteServiceEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableIoTCloudConnectorAccessLogWithOptions(_ request: DisableIoTCloudConnectorAccessLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableIoTCloudConnectorAccessLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableIoTCloudConnectorAccessLog",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableIoTCloudConnectorAccessLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableIoTCloudConnectorAccessLog(_ request: DisableIoTCloudConnectorAccessLogRequest) async throws -> DisableIoTCloudConnectorAccessLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableIoTCloudConnectorAccessLogWithOptions(request as! DisableIoTCloudConnectorAccessLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dissociateIpFromConnectionPoolWithOptions(_ request: DissociateIpFromConnectionPoolRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DissociateIpFromConnectionPoolResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionPoolId)) {
            query["ConnectionPoolId"] = request.connectionPoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ips)) {
            query["Ips"] = request.ips ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ipsFilePath)) {
            query["IpsFilePath"] = request.ipsFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DissociateIpFromConnectionPool",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DissociateIpFromConnectionPoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dissociateIpFromConnectionPool(_ request: DissociateIpFromConnectionPoolRequest) async throws -> DissociateIpFromConnectionPoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await dissociateIpFromConnectionPoolWithOptions(request as! DissociateIpFromConnectionPoolRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dissociateVSwitchFromIoTCloudConnectorWithOptions(_ request: DissociateVSwitchFromIoTCloudConnectorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DissociateVSwitchFromIoTCloudConnectorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DissociateVSwitchFromIoTCloudConnector",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DissociateVSwitchFromIoTCloudConnectorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dissociateVSwitchFromIoTCloudConnector(_ request: DissociateVSwitchFromIoTCloudConnectorRequest) async throws -> DissociateVSwitchFromIoTCloudConnectorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await dissociateVSwitchFromIoTCloudConnectorWithOptions(request as! DissociateVSwitchFromIoTCloudConnectorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableIoTCloudConnectorAccessLogWithOptions(_ request: EnableIoTCloudConnectorAccessLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableIoTCloudConnectorAccessLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessLogSlsLogStore)) {
            query["AccessLogSlsLogStore"] = request.accessLogSlsLogStore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessLogSlsProject)) {
            query["AccessLogSlsProject"] = request.accessLogSlsProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableIoTCloudConnectorAccessLog",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableIoTCloudConnectorAccessLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableIoTCloudConnectorAccessLog(_ request: EnableIoTCloudConnectorAccessLogRequest) async throws -> EnableIoTCloudConnectorAccessLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableIoTCloudConnectorAccessLogWithOptions(request as! EnableIoTCloudConnectorAccessLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConnectionPoolIpOperationResultWithOptions(_ request: GetConnectionPoolIpOperationResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConnectionPoolIpOperationResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionPoolId)) {
            query["ConnectionPoolId"] = request.connectionPoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryRequestId)) {
            query["QueryRequestId"] = request.queryRequestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConnectionPoolIpOperationResult",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConnectionPoolIpOperationResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConnectionPoolIpOperationResult(_ request: GetConnectionPoolIpOperationResultRequest) async throws -> GetConnectionPoolIpOperationResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConnectionPoolIpOperationResultWithOptions(request as! GetConnectionPoolIpOperationResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiagnoseResultForSingleCardWithOptions(_ request: GetDiagnoseResultForSingleCardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDiagnoseResultForSingleCardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diagnoseTaskId)) {
            query["DiagnoseTaskId"] = request.diagnoseTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDiagnoseResultForSingleCard",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDiagnoseResultForSingleCardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiagnoseResultForSingleCard(_ request: GetDiagnoseResultForSingleCardRequest) async throws -> GetDiagnoseResultForSingleCardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDiagnoseResultForSingleCardWithOptions(request as! GetDiagnoseResultForSingleCardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIoTCloudConnectorAccessLogWithOptions(_ request: GetIoTCloudConnectorAccessLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIoTCloudConnectorAccessLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIoTCloudConnectorAccessLog",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIoTCloudConnectorAccessLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIoTCloudConnectorAccessLog(_ request: GetIoTCloudConnectorAccessLogRequest) async throws -> GetIoTCloudConnectorAccessLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getIoTCloudConnectorAccessLogWithOptions(request as! GetIoTCloudConnectorAccessLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStsInfoAndOssPathWithOptions(_ request: GetStsInfoAndOssPathRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStsInfoAndOssPathResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionPoolId)) {
            query["ConnectionPoolId"] = request.connectionPoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStsInfoAndOssPath",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStsInfoAndOssPathResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStsInfoAndOssPath(_ request: GetStsInfoAndOssPathRequest) async throws -> GetStsInfoAndOssPathResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStsInfoAndOssPathWithOptions(request as! GetStsInfoAndOssPathRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantVirtualBorderRouterWithOptions(_ request: GrantVirtualBorderRouterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantVirtualBorderRouterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.virtualBorderRouterId)) {
            query["VirtualBorderRouterId"] = request.virtualBorderRouterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantVirtualBorderRouter",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantVirtualBorderRouterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantVirtualBorderRouter(_ request: GrantVirtualBorderRouterRequest) async throws -> GrantVirtualBorderRouterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await grantVirtualBorderRouterWithOptions(request as! GrantVirtualBorderRouterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAPNsWithOptions(_ request: ListAPNsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAPNsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.APN)) {
            query["APN"] = request.APN ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ISP)) {
            query["ISP"] = request.ISP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAPNs",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAPNsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAPNs(_ request: ListAPNsRequest) async throws -> ListAPNsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAPNsWithOptions(request as! ListAPNsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorizationRulesWithOptions(_ request: ListAuthorizationRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAuthorizationRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationRuleIds)) {
            query["AuthorizationRuleIds"] = request.authorizationRuleIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.authorizationRuleName)) {
            query["AuthorizationRuleName"] = request.authorizationRuleName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.authorizationRuleStatus)) {
            query["AuthorizationRuleStatus"] = request.authorizationRuleStatus ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.authorizationRuleType)) {
            query["AuthorizationRuleType"] = request.authorizationRuleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.destinationPort)) {
            query["DestinationPort"] = request.destinationPort ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.destinationType)) {
            query["DestinationType"] = request.destinationType ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            query["Protocol"] = request.protocol_ ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAuthorizationRules",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAuthorizationRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorizationRules(_ request: ListAuthorizationRulesRequest) async throws -> ListAuthorizationRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAuthorizationRulesWithOptions(request as! ListAuthorizationRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConnectionPoolAllIpsWithOptions(_ request: ListConnectionPoolAllIpsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConnectionPoolAllIpsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionPoolId)) {
            query["ConnectionPoolId"] = request.connectionPoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConnectionPoolAllIps",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConnectionPoolAllIpsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConnectionPoolAllIps(_ request: ListConnectionPoolAllIpsRequest) async throws -> ListConnectionPoolAllIpsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listConnectionPoolAllIpsWithOptions(request as! ListConnectionPoolAllIpsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConnectionPoolIpsWithOptions(_ request: ListConnectionPoolIpsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConnectionPoolIpsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionPoolId)) {
            query["ConnectionPoolId"] = request.connectionPoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConnectionPoolIps",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConnectionPoolIpsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConnectionPoolIps(_ request: ListConnectionPoolIpsRequest) async throws -> ListConnectionPoolIpsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listConnectionPoolIpsWithOptions(request as! ListConnectionPoolIpsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConnectionPoolsWithOptions(_ request: ListConnectionPoolsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConnectionPoolsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionPoolIds)) {
            query["ConnectionPoolIds"] = request.connectionPoolIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.connectionPoolName)) {
            query["ConnectionPoolName"] = request.connectionPoolName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.connectionPoolStatus)) {
            query["ConnectionPoolStatus"] = request.connectionPoolStatus ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConnectionPools",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConnectionPoolsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConnectionPools(_ request: ListConnectionPoolsRequest) async throws -> ListConnectionPoolsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listConnectionPoolsWithOptions(request as! ListConnectionPoolsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDNSServiceRulesWithOptions(_ request: ListDNSServiceRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDNSServiceRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleIds)) {
            query["DNSServiceRuleIds"] = request.DNSServiceRuleIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleName)) {
            query["DNSServiceRuleName"] = request.DNSServiceRuleName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleStatus)) {
            query["DNSServiceRuleStatus"] = request.DNSServiceRuleStatus ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["ServiceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDNSServiceRules",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDNSServiceRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDNSServiceRules(_ request: ListDNSServiceRulesRequest) async throws -> ListDNSServiceRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDNSServiceRulesWithOptions(request as! ListDNSServiceRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDiagnoseInfoForSingleCardWithOptions(_ request: ListDiagnoseInfoForSingleCardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDiagnoseInfoForSingleCardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDiagnoseInfoForSingleCard",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDiagnoseInfoForSingleCardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDiagnoseInfoForSingleCard(_ request: ListDiagnoseInfoForSingleCardRequest) async throws -> ListDiagnoseInfoForSingleCardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDiagnoseInfoForSingleCardWithOptions(request as! ListDiagnoseInfoForSingleCardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupAuthorizationRulesWithOptions(_ request: ListGroupAuthorizationRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGroupAuthorizationRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationRuleIds)) {
            query["AuthorizationRuleIds"] = request.authorizationRuleIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.authorizationRuleName)) {
            query["AuthorizationRuleName"] = request.authorizationRuleName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.authorizationRuleStatus)) {
            query["AuthorizationRuleStatus"] = request.authorizationRuleStatus ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.destinationPort)) {
            query["DestinationPort"] = request.destinationPort ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.destinationType)) {
            query["DestinationType"] = request.destinationType ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            query["Protocol"] = request.protocol_ ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGroupAuthorizationRules",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGroupAuthorizationRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupAuthorizationRules(_ request: ListGroupAuthorizationRulesRequest) async throws -> ListGroupAuthorizationRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listGroupAuthorizationRulesWithOptions(request as! ListGroupAuthorizationRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupDNSServiceRulesWithOptions(_ request: ListGroupDNSServiceRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGroupDNSServiceRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleIds)) {
            query["DNSServiceRuleIds"] = request.DNSServiceRuleIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleName)) {
            query["DNSServiceRuleName"] = request.DNSServiceRuleName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleStatus)) {
            query["DNSServiceRuleStatus"] = request.DNSServiceRuleStatus ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["ServiceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGroupDNSServiceRules",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGroupDNSServiceRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupDNSServiceRules(_ request: ListGroupDNSServiceRulesRequest) async throws -> ListGroupDNSServiceRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listGroupDNSServiceRulesWithOptions(request as! ListGroupDNSServiceRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupIpMappingRulesWithOptions(_ request: ListGroupIpMappingRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGroupIpMappingRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationIps)) {
            query["DestinationIps"] = request.destinationIps ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleIds)) {
            query["IpMappingRuleIds"] = request.ipMappingRuleIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleNames)) {
            query["IpMappingRuleNames"] = request.ipMappingRuleNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleStatuses)) {
            query["IpMappingRuleStatuses"] = request.ipMappingRuleStatuses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.mappingIps)) {
            query["MappingIps"] = request.mappingIps ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGroupIpMappingRules",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGroupIpMappingRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupIpMappingRules(_ request: ListGroupIpMappingRulesRequest) async throws -> ListGroupIpMappingRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listGroupIpMappingRulesWithOptions(request as! ListGroupIpMappingRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIoTCloudConnectorAccessSessionLogsWithOptions(_ request: ListIoTCloudConnectorAccessSessionLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIoTCloudConnectorAccessSessionLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinations)) {
            query["Destinations"] = request.destinations ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIps)) {
            query["SourceIps"] = request.sourceIps ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIoTCloudConnectorAccessSessionLogs",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIoTCloudConnectorAccessSessionLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIoTCloudConnectorAccessSessionLogs(_ request: ListIoTCloudConnectorAccessSessionLogsRequest) async throws -> ListIoTCloudConnectorAccessSessionLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIoTCloudConnectorAccessSessionLogsWithOptions(request as! ListIoTCloudConnectorAccessSessionLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIoTCloudConnectorAvailableZonesWithOptions(_ request: ListIoTCloudConnectorAvailableZonesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIoTCloudConnectorAvailableZonesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIoTCloudConnectorAvailableZones",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIoTCloudConnectorAvailableZonesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIoTCloudConnectorAvailableZones(_ request: ListIoTCloudConnectorAvailableZonesRequest) async throws -> ListIoTCloudConnectorAvailableZonesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIoTCloudConnectorAvailableZonesWithOptions(request as! ListIoTCloudConnectorAvailableZonesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIoTCloudConnectorEIPsWithOptions(_ request: ListIoTCloudConnectorEIPsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIoTCloudConnectorEIPsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIoTCloudConnectorEIPs",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIoTCloudConnectorEIPsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIoTCloudConnectorEIPs(_ request: ListIoTCloudConnectorEIPsRequest) async throws -> ListIoTCloudConnectorEIPsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIoTCloudConnectorEIPsWithOptions(request as! ListIoTCloudConnectorEIPsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIoTCloudConnectorGroupsWithOptions(_ request: ListIoTCloudConnectorGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIoTCloudConnectorGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupIds)) {
            query["IoTCloudConnectorGroupIds"] = request.ioTCloudConnectorGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupName)) {
            query["IoTCloudConnectorGroupName"] = request.ioTCloudConnectorGroupName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupStatus)) {
            query["IoTCloudConnectorGroupStatus"] = request.ioTCloudConnectorGroupStatus ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIoTCloudConnectorGroups",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIoTCloudConnectorGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIoTCloudConnectorGroups(_ request: ListIoTCloudConnectorGroupsRequest) async throws -> ListIoTCloudConnectorGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIoTCloudConnectorGroupsWithOptions(request as! ListIoTCloudConnectorGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIoTCloudConnectorsWithOptions(_ request: ListIoTCloudConnectorsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIoTCloudConnectorsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.APN)) {
            query["APN"] = request.APN ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ISP)) {
            query["ISP"] = request.ISP ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorIds)) {
            query["IoTCloudConnectorIds"] = request.ioTCloudConnectorIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorName)) {
            query["IoTCloudConnectorName"] = request.ioTCloudConnectorName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorStatus)) {
            query["IoTCloudConnectorStatus"] = request.ioTCloudConnectorStatus ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.isInGroup)) {
            query["IsInGroup"] = request.isInGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIoTCloudConnectors",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIoTCloudConnectorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIoTCloudConnectors(_ request: ListIoTCloudConnectorsRequest) async throws -> ListIoTCloudConnectorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIoTCloudConnectorsWithOptions(request as! ListIoTCloudConnectorsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIoTCoudConnectorBackhaulRouteWithOptions(_ request: ListIoTCoudConnectorBackhaulRouteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIoTCoudConnectorBackhaulRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIoTCoudConnectorBackhaulRoute",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIoTCoudConnectorBackhaulRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIoTCoudConnectorBackhaulRoute(_ request: ListIoTCoudConnectorBackhaulRouteRequest) async throws -> ListIoTCoudConnectorBackhaulRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIoTCoudConnectorBackhaulRouteWithOptions(request as! ListIoTCoudConnectorBackhaulRouteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIpMappingRulesWithOptions(_ request: ListIpMappingRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIpMappingRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationIps)) {
            query["DestinationIps"] = request.destinationIps ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleIds)) {
            query["IpMappingRuleIds"] = request.ipMappingRuleIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleNames)) {
            query["IpMappingRuleNames"] = request.ipMappingRuleNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleStatuses)) {
            query["IpMappingRuleStatuses"] = request.ipMappingRuleStatuses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.mappingIps)) {
            query["MappingIps"] = request.mappingIps ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIpMappingRules",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIpMappingRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIpMappingRules(_ request: ListIpMappingRulesRequest) async throws -> ListIpMappingRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIpMappingRulesWithOptions(request as! ListIpMappingRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegionsWithOptions(_ request: ListRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRegions",
            "version": "2021-05-13",
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
    public func listServiceWithOptions(_ request: ListServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceStatuses)) {
            query["ResourceStatuses"] = request.resourceStatuses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.serviceIds)) {
            query["ServiceIds"] = request.serviceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.serviceNames)) {
            query["ServiceNames"] = request.serviceNames ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListService",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listService(_ request: ListServiceRequest) async throws -> ListServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listServiceWithOptions(request as! ListServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceEntriesWithOptions(_ request: ListServiceEntriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceEntriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceEntryIds)) {
            query["ServiceEntryIds"] = request.serviceEntryIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.serviceEntryName)) {
            query["ServiceEntryName"] = request.serviceEntryName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.serviceEntryStatus)) {
            query["ServiceEntryStatus"] = request.serviceEntryStatus ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            query["ServiceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            query["TargetType"] = request.targetType ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServiceEntries",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceEntriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceEntries(_ request: ListServiceEntriesRequest) async throws -> ListServiceEntriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listServiceEntriesWithOptions(request as! ListServiceEntriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveAuthorizationRuleToDNSServiceWithOptions(_ request: MoveAuthorizationRuleToDNSServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MoveAuthorizationRuleToDNSServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationRuleId)) {
            query["AuthorizationRuleId"] = request.authorizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MoveAuthorizationRuleToDNSService",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MoveAuthorizationRuleToDNSServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveAuthorizationRuleToDNSService(_ request: MoveAuthorizationRuleToDNSServiceRequest) async throws -> MoveAuthorizationRuleToDNSServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await moveAuthorizationRuleToDNSServiceWithOptions(request as! MoveAuthorizationRuleToDNSServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveGroupAuthorizationRuleToDNSServiceWithOptions(_ request: MoveGroupAuthorizationRuleToDNSServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MoveGroupAuthorizationRuleToDNSServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationRuleId)) {
            query["AuthorizationRuleId"] = request.authorizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MoveGroupAuthorizationRuleToDNSService",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MoveGroupAuthorizationRuleToDNSServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveGroupAuthorizationRuleToDNSService(_ request: MoveGroupAuthorizationRuleToDNSServiceRequest) async throws -> MoveGroupAuthorizationRuleToDNSServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await moveGroupAuthorizationRuleToDNSServiceWithOptions(request as! MoveGroupAuthorizationRuleToDNSServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openIoTCloudConnectorServiceWithOptions(_ request: OpenIoTCloudConnectorServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OpenIoTCloudConnectorServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenIoTCloudConnectorService",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenIoTCloudConnectorServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openIoTCloudConnectorService(_ request: OpenIoTCloudConnectorServiceRequest) async throws -> OpenIoTCloudConnectorServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await openIoTCloudConnectorServiceWithOptions(request as! OpenIoTCloudConnectorServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeIoTCloudConnectorFromGroupWithOptions(_ request: RemoveIoTCloudConnectorFromGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveIoTCloudConnectorFromGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveIoTCloudConnectorFromGroup",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveIoTCloudConnectorFromGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeIoTCloudConnectorFromGroup(_ request: RemoveIoTCloudConnectorFromGroupRequest) async throws -> RemoveIoTCloudConnectorFromGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeIoTCloudConnectorFromGroupWithOptions(request as! RemoveIoTCloudConnectorFromGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revertIoTCloudConnectorWithOptions(_ request: RevertIoTCloudConnectorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevertIoTCloudConnectorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevertIoTCloudConnector",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevertIoTCloudConnectorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revertIoTCloudConnector(_ request: RevertIoTCloudConnectorRequest) async throws -> RevertIoTCloudConnectorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revertIoTCloudConnectorWithOptions(request as! RevertIoTCloudConnectorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDiagnoseTaskForSingleCardWithOptions(_ request: SubmitDiagnoseTaskForSingleCardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDiagnoseTaskForSingleCardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationType)) {
            query["DestinationType"] = request.destinationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceUid)) {
            query["ResourceUid"] = request.resourceUid!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitDiagnoseTaskForSingleCard",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitDiagnoseTaskForSingleCardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDiagnoseTaskForSingleCard(_ request: SubmitDiagnoseTaskForSingleCardRequest) async throws -> SubmitDiagnoseTaskForSingleCardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitDiagnoseTaskForSingleCardWithOptions(request as! SubmitDiagnoseTaskForSingleCardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAuthorizationRuleAttributeWithOptions(_ request: UpdateAuthorizationRuleAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAuthorizationRuleAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationRuleDescription)) {
            query["AuthorizationRuleDescription"] = request.authorizationRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizationRuleId)) {
            query["AuthorizationRuleId"] = request.authorizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizationRuleName)) {
            query["AuthorizationRuleName"] = request.authorizationRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationPort)) {
            query["DestinationPort"] = request.destinationPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationType)) {
            query["DestinationType"] = request.destinationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            query["Protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCidrs)) {
            query["SourceCidrs"] = request.sourceCidrs ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAuthorizationRuleAttribute",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAuthorizationRuleAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAuthorizationRuleAttribute(_ request: UpdateAuthorizationRuleAttributeRequest) async throws -> UpdateAuthorizationRuleAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAuthorizationRuleAttributeWithOptions(request as! UpdateAuthorizationRuleAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConnectionPoolAttributeWithOptions(_ request: UpdateConnectionPoolAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConnectionPoolAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cidrs)) {
            query["Cidrs"] = request.cidrs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionPoolDescription)) {
            query["ConnectionPoolDescription"] = request.connectionPoolDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionPoolId)) {
            query["ConnectionPoolId"] = request.connectionPoolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionPoolName)) {
            query["ConnectionPoolName"] = request.connectionPoolName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.count)) {
            query["Count"] = request.count!;
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConnectionPoolAttribute",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConnectionPoolAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConnectionPoolAttribute(_ request: UpdateConnectionPoolAttributeRequest) async throws -> UpdateConnectionPoolAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateConnectionPoolAttributeWithOptions(request as! UpdateConnectionPoolAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDNSServiceRuleAttributeWithOptions(_ request: UpdateDNSServiceRuleAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDNSServiceRuleAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleDescription)) {
            query["DNSServiceRuleDescription"] = request.DNSServiceRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleId)) {
            query["DNSServiceRuleId"] = request.DNSServiceRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleName)) {
            query["DNSServiceRuleName"] = request.DNSServiceRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["ServiceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDNSServiceRuleAttribute",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDNSServiceRuleAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDNSServiceRuleAttribute(_ request: UpdateDNSServiceRuleAttributeRequest) async throws -> UpdateDNSServiceRuleAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDNSServiceRuleAttributeWithOptions(request as! UpdateDNSServiceRuleAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroupAuthorizationRuleAttributeWithOptions(_ request: UpdateGroupAuthorizationRuleAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGroupAuthorizationRuleAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationRuleDescription)) {
            query["AuthorizationRuleDescription"] = request.authorizationRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizationRuleId)) {
            query["AuthorizationRuleId"] = request.authorizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizationRuleName)) {
            query["AuthorizationRuleName"] = request.authorizationRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationPort)) {
            query["DestinationPort"] = request.destinationPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationType)) {
            query["DestinationType"] = request.destinationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            query["Protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCidrs)) {
            query["SourceCidrs"] = request.sourceCidrs ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGroupAuthorizationRuleAttribute",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGroupAuthorizationRuleAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroupAuthorizationRuleAttribute(_ request: UpdateGroupAuthorizationRuleAttributeRequest) async throws -> UpdateGroupAuthorizationRuleAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateGroupAuthorizationRuleAttributeWithOptions(request as! UpdateGroupAuthorizationRuleAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroupDNSServiceRuleAttributeWithOptions(_ request: UpdateGroupDNSServiceRuleAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGroupDNSServiceRuleAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleDescription)) {
            query["DNSServiceRuleDescription"] = request.DNSServiceRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleId)) {
            query["DNSServiceRuleId"] = request.DNSServiceRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNSServiceRuleName)) {
            query["DNSServiceRuleName"] = request.DNSServiceRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destination)) {
            query["Destination"] = request.destination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["ServiceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGroupDNSServiceRuleAttribute",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGroupDNSServiceRuleAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroupDNSServiceRuleAttribute(_ request: UpdateGroupDNSServiceRuleAttributeRequest) async throws -> UpdateGroupDNSServiceRuleAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateGroupDNSServiceRuleAttributeWithOptions(request as! UpdateGroupDNSServiceRuleAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroupIpMappingRuleWithOptions(_ request: UpdateGroupIpMappingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGroupIpMappingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationIp)) {
            query["DestinationIp"] = request.destinationIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.groupIpMappingRuleId)) {
            query["GroupIpMappingRuleId"] = request.groupIpMappingRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleDescription)) {
            query["IpMappingRuleDescription"] = request.ipMappingRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleName)) {
            query["IpMappingRuleName"] = request.ipMappingRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mappingIp)) {
            query["MappingIp"] = request.mappingIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGroupIpMappingRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGroupIpMappingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroupIpMappingRule(_ request: UpdateGroupIpMappingRuleRequest) async throws -> UpdateGroupIpMappingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateGroupIpMappingRuleWithOptions(request as! UpdateGroupIpMappingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIoTCloudConnectorAttributeWithOptions(_ request: UpdateIoTCloudConnectorAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIoTCloudConnectorAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorDescription)) {
            query["IoTCloudConnectorDescription"] = request.ioTCloudConnectorDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorName)) {
            query["IoTCloudConnectorName"] = request.ioTCloudConnectorName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wildcardDomainEnabled)) {
            query["WildcardDomainEnabled"] = request.wildcardDomainEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIoTCloudConnectorAttribute",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIoTCloudConnectorAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIoTCloudConnectorAttribute(_ request: UpdateIoTCloudConnectorAttributeRequest) async throws -> UpdateIoTCloudConnectorAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateIoTCloudConnectorAttributeWithOptions(request as! UpdateIoTCloudConnectorAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIoTCloudConnectorGroupAttributeWithOptions(_ request: UpdateIoTCloudConnectorGroupAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIoTCloudConnectorGroupAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorGroupId)) {
            query["IoTCloudConnectorGroupId"] = request.ioTCloudConnectorGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIoTCloudConnectorGroupAttribute",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIoTCloudConnectorGroupAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIoTCloudConnectorGroupAttribute(_ request: UpdateIoTCloudConnectorGroupAttributeRequest) async throws -> UpdateIoTCloudConnectorGroupAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateIoTCloudConnectorGroupAttributeWithOptions(request as! UpdateIoTCloudConnectorGroupAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIpMappingRuleWithOptions(_ request: UpdateIpMappingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIpMappingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationIp)) {
            query["DestinationIp"] = request.destinationIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleDescription)) {
            query["IpMappingRuleDescription"] = request.ipMappingRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleId)) {
            query["IpMappingRuleId"] = request.ipMappingRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipMappingRuleName)) {
            query["IpMappingRuleName"] = request.ipMappingRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mappingIp)) {
            query["MappingIp"] = request.mappingIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIpMappingRule",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIpMappingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIpMappingRule(_ request: UpdateIpMappingRuleRequest) async throws -> UpdateIpMappingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateIpMappingRuleWithOptions(request as! UpdateIpMappingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceAttributeWithOptions(_ request: UpdateServiceAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceDescription)) {
            query["ServiceDescription"] = request.serviceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            query["ServiceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceAttribute",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceAttribute(_ request: UpdateServiceAttributeRequest) async throws -> UpdateServiceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateServiceAttributeWithOptions(request as! UpdateServiceAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceEntryAttributeWithOptions(_ request: UpdateServiceEntryAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceEntryAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.ioTCloudConnectorId)) {
            query["IoTCloudConnectorId"] = request.ioTCloudConnectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceEntryDescription)) {
            query["ServiceEntryDescription"] = request.serviceEntryDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceEntryId)) {
            query["ServiceEntryId"] = request.serviceEntryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceEntryName)) {
            query["ServiceEntryName"] = request.serviceEntryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            query["ServiceId"] = request.serviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceEntryAttribute",
            "version": "2021-05-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceEntryAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceEntryAttribute(_ request: UpdateServiceEntryAttributeRequest) async throws -> UpdateServiceEntryAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateServiceEntryAttributeWithOptions(request as! UpdateServiceEntryAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
