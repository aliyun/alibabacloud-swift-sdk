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
        self._endpoint = try getEndpoint("eflo", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func assignLeniPrivateIpAddressWithOptions(_ request: AssignLeniPrivateIpAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssignLeniPrivateIpAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticNetworkInterfaceId)) {
            body["ElasticNetworkInterfaceId"] = request.elasticNetworkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            body["PrivateIpAddress"] = request.privateIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssignLeniPrivateIpAddress",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssignLeniPrivateIpAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignLeniPrivateIpAddress(_ request: AssignLeniPrivateIpAddressRequest) async throws -> AssignLeniPrivateIpAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assignLeniPrivateIpAddressWithOptions(request as! AssignLeniPrivateIpAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignPrivateIpAddressWithOptions(_ request: AssignPrivateIpAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssignPrivateIpAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assignMac)) {
            body["AssignMac"] = request.assignMac!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            body["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            body["PrivateIpAddress"] = request.privateIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipConfig)) {
            body["SkipConfig"] = request.skipConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.subnetId)) {
            body["SubnetId"] = request.subnetId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssignPrivateIpAddress",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssignPrivateIpAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignPrivateIpAddress(_ request: AssignPrivateIpAddressRequest) async throws -> AssignPrivateIpAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assignPrivateIpAddressWithOptions(request as! AssignPrivateIpAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateVpdCidrBlockWithOptions(_ request: AssociateVpdCidrBlockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssociateVpdCidrBlockResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryCidrBlock)) {
            body["SecondaryCidrBlock"] = request.secondaryCidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssociateVpdCidrBlock",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssociateVpdCidrBlockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateVpdCidrBlock(_ request: AssociateVpdCidrBlockRequest) async throws -> AssociateVpdCidrBlockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await associateVpdCidrBlockWithOptions(request as! AssociateVpdCidrBlockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachElasticNetworkInterfaceWithOptions(_ request: AttachElasticNetworkInterfaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachElasticNetworkInterfaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.elasticNetworkInterfaceId)) {
            body["ElasticNetworkInterfaceId"] = request.elasticNetworkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachElasticNetworkInterface",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachElasticNetworkInterfaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachElasticNetworkInterface(_ request: AttachElasticNetworkInterfaceRequest) async throws -> AttachElasticNetworkInterfaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachElasticNetworkInterfaceWithOptions(request as! AttachElasticNetworkInterfaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createElasticNetworkInterfaceWithOptions(_ request: CreateElasticNetworkInterfaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateElasticNetworkInterfaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableJumboFrame)) {
            body["EnableJumboFrame"] = request.enableJumboFrame!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            body["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            body["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateElasticNetworkInterface",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateElasticNetworkInterfaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createElasticNetworkInterface(_ request: CreateElasticNetworkInterfaceRequest) async throws -> CreateElasticNetworkInterfaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createElasticNetworkInterfaceWithOptions(request as! CreateElasticNetworkInterfaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createErWithOptions(_ request: CreateErRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateErResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erName)) {
            body["ErName"] = request.erName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterZoneId)) {
            body["MasterZoneId"] = request.masterZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEr",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateErResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEr(_ request: CreateErRequest) async throws -> CreateErResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createErWithOptions(request as! CreateErRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createErAttachmentWithOptions(_ request: CreateErAttachmentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateErAttachmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoReceiveAllRoute)) {
            body["AutoReceiveAllRoute"] = request.autoReceiveAllRoute!;
        }
        if (!TeaUtils.Client.isUnset(request.erAttachmentName)) {
            body["ErAttachmentName"] = request.erAttachmentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceTenantId)) {
            body["ResourceTenantId"] = request.resourceTenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateErAttachment",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateErAttachmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createErAttachment(_ request: CreateErAttachmentRequest) async throws -> CreateErAttachmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createErAttachmentWithOptions(request as! CreateErAttachmentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createErRouteMapWithOptions(_ request: CreateErRouteMapRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateErRouteMapResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationCidrBlock)) {
            body["DestinationCidrBlock"] = request.destinationCidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receptionInstanceId)) {
            body["ReceptionInstanceId"] = request.receptionInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receptionInstanceOwner)) {
            body["ReceptionInstanceOwner"] = request.receptionInstanceOwner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receptionInstanceType)) {
            body["ReceptionInstanceType"] = request.receptionInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeMapAction)) {
            body["RouteMapAction"] = request.routeMapAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeMapNum)) {
            body["RouteMapNum"] = request.routeMapNum!;
        }
        if (!TeaUtils.Client.isUnset(request.transmissionInstanceId)) {
            body["TransmissionInstanceId"] = request.transmissionInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transmissionInstanceOwner)) {
            body["TransmissionInstanceOwner"] = request.transmissionInstanceOwner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transmissionInstanceType)) {
            body["TransmissionInstanceType"] = request.transmissionInstanceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateErRouteMap",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateErRouteMapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createErRouteMap(_ request: CreateErRouteMapRequest) async throws -> CreateErRouteMapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createErRouteMapWithOptions(request as! CreateErRouteMapRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubnetWithOptions(_ request: CreateSubnetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSubnetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cidr)) {
            body["Cidr"] = request.cidr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subnetName)) {
            body["SubnetName"] = request.subnetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSubnet",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSubnetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubnet(_ request: CreateSubnetRequest) async throws -> CreateSubnetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSubnetWithOptions(request as! CreateSubnetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVccWithOptions(_ request: CreateVccRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVccResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessCouldService)) {
            body["AccessCouldService"] = request.accessCouldService!;
        }
        if (!TeaUtils.Client.isUnset(request.bandwidth)) {
            body["Bandwidth"] = request.bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.bgpAsn)) {
            body["BgpAsn"] = request.bgpAsn!;
        }
        if (!TeaUtils.Client.isUnset(request.bgpCidr)) {
            body["BgpCidr"] = request.bgpCidr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cenId)) {
            body["CenId"] = request.cenId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cenOwnerId)) {
            body["CenOwnerId"] = request.cenOwnerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionType)) {
            body["ConnectionType"] = request.connectionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            body["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccId)) {
            body["VccId"] = request.vccId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccName)) {
            body["VccName"] = request.vccName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVcc",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVccResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVcc(_ request: CreateVccRequest) async throws -> CreateVccResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVccWithOptions(request as! CreateVccRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVccGrantRuleWithOptions(_ request: CreateVccGrantRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVccGrantRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantTenantId)) {
            body["GrantTenantId"] = request.grantTenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVccGrantRule",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVccGrantRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVccGrantRule(_ request: CreateVccGrantRuleRequest) async throws -> CreateVccGrantRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVccGrantRuleWithOptions(request as! CreateVccGrantRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVccRouteEntryWithOptions(_ request: CreateVccRouteEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVccRouteEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationCidrBlock)) {
            body["DestinationCidrBlock"] = request.destinationCidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccId)) {
            body["VccId"] = request.vccId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVccRouteEntry",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVccRouteEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVccRouteEntry(_ request: CreateVccRouteEntryRequest) async throws -> CreateVccRouteEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVccRouteEntryWithOptions(request as! CreateVccRouteEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVpdWithOptions(_ request: CreateVpdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVpdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cidr)) {
            body["Cidr"] = request.cidr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subnets)) {
            body["Subnets"] = request.subnets ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vpdName)) {
            body["VpdName"] = request.vpdName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVpd",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVpdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVpd(_ request: CreateVpdRequest) async throws -> CreateVpdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVpdWithOptions(request as! CreateVpdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVpdGrantRuleWithOptions(_ request: CreateVpdGrantRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVpdGrantRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantTenantId)) {
            body["GrantTenantId"] = request.grantTenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVpdGrantRule",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVpdGrantRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVpdGrantRule(_ request: CreateVpdGrantRuleRequest) async throws -> CreateVpdGrantRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVpdGrantRuleWithOptions(request as! CreateVpdGrantRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteElasticNetworkInterfaceWithOptions(_ request: DeleteElasticNetworkInterfaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteElasticNetworkInterfaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticNetworkInterfaceId)) {
            body["ElasticNetworkInterfaceId"] = request.elasticNetworkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteElasticNetworkInterface",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteElasticNetworkInterfaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteElasticNetworkInterface(_ request: DeleteElasticNetworkInterfaceRequest) async throws -> DeleteElasticNetworkInterfaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteElasticNetworkInterfaceWithOptions(request as! DeleteElasticNetworkInterfaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteErWithOptions(_ request: DeleteErRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteErResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEr",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteErResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEr(_ request: DeleteErRequest) async throws -> DeleteErResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteErWithOptions(request as! DeleteErRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteErAttachmentWithOptions(_ request: DeleteErAttachmentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteErAttachmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erAttachmentId)) {
            body["ErAttachmentId"] = request.erAttachmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteErAttachment",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteErAttachmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteErAttachment(_ request: DeleteErAttachmentRequest) async throws -> DeleteErAttachmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteErAttachmentWithOptions(request as! DeleteErAttachmentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteErRouteMapWithOptions(_ request: DeleteErRouteMapRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteErRouteMapResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erRouteMapId)) {
            body["ErRouteMapId"] = request.erRouteMapId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erRouteMapIds)) {
            body["ErRouteMapIds"] = request.erRouteMapIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteErRouteMap",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteErRouteMapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteErRouteMap(_ request: DeleteErRouteMapRequest) async throws -> DeleteErRouteMapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteErRouteMapWithOptions(request as! DeleteErRouteMapRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSubnetWithOptions(_ request: DeleteSubnetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSubnetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subnetId)) {
            body["SubnetId"] = request.subnetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSubnet",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSubnetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSubnet(_ request: DeleteSubnetRequest) async throws -> DeleteSubnetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSubnetWithOptions(request as! DeleteSubnetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVccGrantRuleWithOptions(_ request: DeleteVccGrantRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVccGrantRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantRuleId)) {
            body["GrantRuleId"] = request.grantRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVccGrantRule",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVccGrantRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVccGrantRule(_ request: DeleteVccGrantRuleRequest) async throws -> DeleteVccGrantRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVccGrantRuleWithOptions(request as! DeleteVccGrantRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVccRouteEntryWithOptions(_ request: DeleteVccRouteEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVccRouteEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationCidrBlock)) {
            body["DestinationCidrBlock"] = request.destinationCidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccId)) {
            body["VccId"] = request.vccId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccRouteEntryId)) {
            body["VccRouteEntryId"] = request.vccRouteEntryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVccRouteEntry",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVccRouteEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVccRouteEntry(_ request: DeleteVccRouteEntryRequest) async throws -> DeleteVccRouteEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVccRouteEntryWithOptions(request as! DeleteVccRouteEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVpdWithOptions(_ request: DeleteVpdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVpdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVpd",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVpdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVpd(_ request: DeleteVpdRequest) async throws -> DeleteVpdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVpdWithOptions(request as! DeleteVpdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVpdGrantRuleWithOptions(_ request: DeleteVpdGrantRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVpdGrantRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantRuleId)) {
            body["GrantRuleId"] = request.grantRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantTenantId)) {
            body["GrantTenantId"] = request.grantTenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVpdGrantRule",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVpdGrantRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVpdGrantRule(_ request: DeleteVpdGrantRuleRequest) async throws -> DeleteVpdGrantRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVpdGrantRuleWithOptions(request as! DeleteVpdGrantRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlrWithOptions(_ request: DescribeSlrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSlrResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSlr",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSlrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlr(_ request: DescribeSlrRequest) async throws -> DescribeSlrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSlrWithOptions(request as! DescribeSlrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachElasticNetworkInterfaceWithOptions(_ request: DetachElasticNetworkInterfaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachElasticNetworkInterfaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.elasticNetworkInterfaceId)) {
            body["ElasticNetworkInterfaceId"] = request.elasticNetworkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachElasticNetworkInterface",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachElasticNetworkInterfaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachElasticNetworkInterface(_ request: DetachElasticNetworkInterfaceRequest) async throws -> DetachElasticNetworkInterfaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachElasticNetworkInterfaceWithOptions(request as! DetachElasticNetworkInterfaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDestinationCidrBlockWithOptions(_ request: GetDestinationCidrBlockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDestinationCidrBlockResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDestinationCidrBlock",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDestinationCidrBlockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDestinationCidrBlock(_ request: GetDestinationCidrBlockRequest) async throws -> GetDestinationCidrBlockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDestinationCidrBlockWithOptions(request as! GetDestinationCidrBlockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getElasticNetworkInterfaceWithOptions(_ request: GetElasticNetworkInterfaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetElasticNetworkInterfaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.elasticNetworkInterfaceId)) {
            body["ElasticNetworkInterfaceId"] = request.elasticNetworkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetElasticNetworkInterface",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetElasticNetworkInterfaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getElasticNetworkInterface(_ request: GetElasticNetworkInterfaceRequest) async throws -> GetElasticNetworkInterfaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getElasticNetworkInterfaceWithOptions(request as! GetElasticNetworkInterfaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getErWithOptions(_ request: GetErRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetErResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEr",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetErResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEr(_ request: GetErRequest) async throws -> GetErResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getErWithOptions(request as! GetErRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getErAttachmentWithOptions(_ request: GetErAttachmentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetErAttachmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erAttachmentId)) {
            body["ErAttachmentId"] = request.erAttachmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetErAttachment",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetErAttachmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getErAttachment(_ request: GetErAttachmentRequest) async throws -> GetErAttachmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getErAttachmentWithOptions(request as! GetErAttachmentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getErRouteEntryWithOptions(_ request: GetErRouteEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetErRouteEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erRouteEntryId)) {
            body["ErRouteEntryId"] = request.erRouteEntryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetErRouteEntry",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetErRouteEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getErRouteEntry(_ request: GetErRouteEntryRequest) async throws -> GetErRouteEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getErRouteEntryWithOptions(request as! GetErRouteEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getErRouteMapWithOptions(_ request: GetErRouteMapRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetErRouteMapResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erRouteMapId)) {
            body["ErRouteMapId"] = request.erRouteMapId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetErRouteMap",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetErRouteMapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getErRouteMap(_ request: GetErRouteMapRequest) async throws -> GetErRouteMapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getErRouteMapWithOptions(request as! GetErRouteMapRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFabricTopologyWithOptions(_ request: GetFabricTopologyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFabricTopologyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lniIds)) {
            body["LniIds"] = request.lniIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.nodeIds)) {
            body["NodeIds"] = request.nodeIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFabricTopology",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFabricTopologyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFabricTopology(_ request: GetFabricTopologyRequest) async throws -> GetFabricTopologyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFabricTopologyWithOptions(request as! GetFabricTopologyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLeniPrivateIpAddressWithOptions(_ request: GetLeniPrivateIpAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLeniPrivateIpAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.elasticNetworkInterfaceId)) {
            body["ElasticNetworkInterfaceId"] = request.elasticNetworkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipName)) {
            body["IpName"] = request.ipName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLeniPrivateIpAddress",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLeniPrivateIpAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLeniPrivateIpAddress(_ request: GetLeniPrivateIpAddressRequest) async throws -> GetLeniPrivateIpAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLeniPrivateIpAddressWithOptions(request as! GetLeniPrivateIpAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLniPrivateIpAddressWithOptions(_ request: GetLniPrivateIpAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLniPrivateIpAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ipName)) {
            body["IpName"] = request.ipName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            body["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLniPrivateIpAddress",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLniPrivateIpAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLniPrivateIpAddress(_ request: GetLniPrivateIpAddressRequest) async throws -> GetLniPrivateIpAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLniPrivateIpAddressWithOptions(request as! GetLniPrivateIpAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNetworkInterfaceWithOptions(_ request: GetNetworkInterfaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNetworkInterfaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            body["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subnetId)) {
            body["SubnetId"] = request.subnetId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNetworkInterface",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNetworkInterfaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNetworkInterface(_ request: GetNetworkInterfaceRequest) async throws -> GetNetworkInterfaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNetworkInterfaceWithOptions(request as! GetNetworkInterfaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeInfoForPodWithOptions(_ request: GetNodeInfoForPodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeInfoForPodResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeInfoForPod",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeInfoForPodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeInfoForPod(_ request: GetNodeInfoForPodRequest) async throws -> GetNodeInfoForPodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNodeInfoForPodWithOptions(request as! GetNodeInfoForPodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubnetWithOptions(_ request: GetSubnetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSubnetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subnetId)) {
            body["SubnetId"] = request.subnetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSubnet",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSubnetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubnet(_ request: GetSubnetRequest) async throws -> GetSubnetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSubnetWithOptions(request as! GetSubnetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVccWithOptions(_ request: GetVccRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVccResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccId)) {
            body["VccId"] = request.vccId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVcc",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVccResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVcc(_ request: GetVccRequest) async throws -> GetVccResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVccWithOptions(request as! GetVccRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVccGrantRuleWithOptions(_ request: GetVccGrantRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVccGrantRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantRuleId)) {
            body["GrantRuleId"] = request.grantRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantTenantId)) {
            body["GrantTenantId"] = request.grantTenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVccGrantRule",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVccGrantRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVccGrantRule(_ request: GetVccGrantRuleRequest) async throws -> GetVccGrantRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVccGrantRuleWithOptions(request as! GetVccGrantRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVccRouteEntryWithOptions(_ request: GetVccRouteEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVccRouteEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccId)) {
            body["VccId"] = request.vccId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccRouteEntryId)) {
            body["VccRouteEntryId"] = request.vccRouteEntryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVccRouteEntry",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVccRouteEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVccRouteEntry(_ request: GetVccRouteEntryRequest) async throws -> GetVccRouteEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVccRouteEntryWithOptions(request as! GetVccRouteEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVpdWithOptions(_ request: GetVpdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVpdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVpd",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVpdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVpd(_ request: GetVpdRequest) async throws -> GetVpdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVpdWithOptions(request as! GetVpdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVpdGrantRuleWithOptions(_ request: GetVpdGrantRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVpdGrantRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantRuleId)) {
            body["GrantRuleId"] = request.grantRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantTenantId)) {
            body["GrantTenantId"] = request.grantTenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVpdGrantRule",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVpdGrantRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVpdGrantRule(_ request: GetVpdGrantRuleRequest) async throws -> GetVpdGrantRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVpdGrantRuleWithOptions(request as! GetVpdGrantRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVpdRouteEntryWithOptions(_ request: GetVpdRouteEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVpdRouteEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdRouteEntryId)) {
            body["VpdRouteEntryId"] = request.vpdRouteEntryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVpdRouteEntry",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVpdRouteEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVpdRouteEntry(_ request: GetVpdRouteEntryRequest) async throws -> GetVpdRouteEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVpdRouteEntryWithOptions(request as! GetVpdRouteEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initializeVccWithOptions(_ request: InitializeVccRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitializeVccResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitializeVcc",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitializeVccResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initializeVcc(_ request: InitializeVccRequest) async throws -> InitializeVccResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initializeVccWithOptions(request as! InitializeVccRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listElasticNetworkInterfacesWithOptions(_ request: ListElasticNetworkInterfacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListElasticNetworkInterfacesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.elasticNetworkInterfaceId)) {
            body["ElasticNetworkInterfaceId"] = request.elasticNetworkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            body["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            body["NetworkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            body["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListElasticNetworkInterfaces",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListElasticNetworkInterfacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listElasticNetworkInterfaces(_ request: ListElasticNetworkInterfacesRequest) async throws -> ListElasticNetworkInterfacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listElasticNetworkInterfacesWithOptions(request as! ListElasticNetworkInterfacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listErAttachmentsWithOptions(_ request: ListErAttachmentsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListErAttachmentsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoReceiveAllRoute)) {
            body["AutoReceiveAllRoute"] = request.autoReceiveAllRoute!;
        }
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.erAttachmentId)) {
            body["ErAttachmentId"] = request.erAttachmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erAttachmentName)) {
            body["ErAttachmentName"] = request.erAttachmentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceTenantId)) {
            body["ResourceTenantId"] = request.resourceTenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListErAttachments",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListErAttachmentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listErAttachments(_ request: ListErAttachmentsRequest) async throws -> ListErAttachmentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listErAttachmentsWithOptions(request as! ListErAttachmentsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listErRouteEntriesWithOptions(_ request: ListErRouteEntriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListErRouteEntriesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationCidrBlock)) {
            body["DestinationCidrBlock"] = request.destinationCidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreDetailedRouteEntry)) {
            body["IgnoreDetailedRouteEntry"] = request.ignoreDetailedRouteEntry!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextHopId)) {
            body["NextHopId"] = request.nextHopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextHopType)) {
            body["NextHopType"] = request.nextHopType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeType)) {
            body["RouteType"] = request.routeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListErRouteEntries",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListErRouteEntriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listErRouteEntries(_ request: ListErRouteEntriesRequest) async throws -> ListErRouteEntriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listErRouteEntriesWithOptions(request as! ListErRouteEntriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listErRouteMapsWithOptions(_ request: ListErRouteMapsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListErRouteMapsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationCidrBlock)) {
            body["DestinationCidrBlock"] = request.destinationCidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erRouteMapId)) {
            body["ErRouteMapId"] = request.erRouteMapId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erRouteMapNum)) {
            body["ErRouteMapNum"] = request.erRouteMapNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.receptionInstanceId)) {
            body["ReceptionInstanceId"] = request.receptionInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receptionInstanceName)) {
            body["ReceptionInstanceName"] = request.receptionInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receptionInstanceType)) {
            body["ReceptionInstanceType"] = request.receptionInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeMapAction)) {
            body["RouteMapAction"] = request.routeMapAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transmissionInstanceId)) {
            body["TransmissionInstanceId"] = request.transmissionInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transmissionInstanceName)) {
            body["TransmissionInstanceName"] = request.transmissionInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transmissionInstanceType)) {
            body["TransmissionInstanceType"] = request.transmissionInstanceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListErRouteMaps",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListErRouteMapsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listErRouteMaps(_ request: ListErRouteMapsRequest) async throws -> ListErRouteMapsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listErRouteMapsWithOptions(request as! ListErRouteMapsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listErsWithOptions(_ request: ListErsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListErsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erName)) {
            body["ErName"] = request.erName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterZoneId)) {
            body["MasterZoneId"] = request.masterZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListErs",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListErsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listErs(_ request: ListErsRequest) async throws -> ListErsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listErsWithOptions(request as! ListErsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesByNcdWithOptions(_ request: ListInstancesByNcdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesByNcdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxNcd)) {
            body["MaxNcd"] = request.maxNcd!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstancesByNcd",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstancesByNcdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesByNcd(_ request: ListInstancesByNcdRequest) async throws -> ListInstancesByNcdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInstancesByNcdWithOptions(request as! ListInstancesByNcdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLeniPrivateIpAddressesWithOptions(_ request: ListLeniPrivateIpAddressesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLeniPrivateIpAddressesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.elasticNetworkInterfaceId)) {
            body["ElasticNetworkInterfaceId"] = request.elasticNetworkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipName)) {
            body["IpName"] = request.ipName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            body["PrivateIpAddress"] = request.privateIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLeniPrivateIpAddresses",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLeniPrivateIpAddressesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLeniPrivateIpAddresses(_ request: ListLeniPrivateIpAddressesRequest) async throws -> ListLeniPrivateIpAddressesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLeniPrivateIpAddressesWithOptions(request as! ListLeniPrivateIpAddressesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLniPrivateIpAddressWithOptions(_ request: ListLniPrivateIpAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLniPrivateIpAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            body["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipName)) {
            body["IpName"] = request.ipName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            body["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLniPrivateIpAddress",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLniPrivateIpAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLniPrivateIpAddress(_ request: ListLniPrivateIpAddressRequest) async throws -> ListLniPrivateIpAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLniPrivateIpAddressWithOptions(request as! ListLniPrivateIpAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNetworkInterfacesWithOptions(_ request: ListNetworkInterfacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNetworkInterfacesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            body["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            body["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subnetId)) {
            body["SubnetId"] = request.subnetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNetworkInterfaces",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNetworkInterfacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNetworkInterfaces(_ request: ListNetworkInterfacesRequest) async throws -> ListNetworkInterfacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNetworkInterfacesWithOptions(request as! ListNetworkInterfacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeInfosForPodWithOptions(_ request: ListNodeInfosForPodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodeInfosForPodResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodeInfosForPod",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodeInfosForPodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeInfosForPod(_ request: ListNodeInfosForPodRequest) async throws -> ListNodeInfosForPodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodeInfosForPodWithOptions(request as! ListNodeInfosForPodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubnetsWithOptions(_ request: ListSubnetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSubnetsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subnetId)) {
            body["SubnetId"] = request.subnetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subnetName)) {
            body["SubnetName"] = request.subnetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSubnets",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSubnetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubnets(_ request: ListSubnetsRequest) async throws -> ListSubnetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSubnetsWithOptions(request as! ListSubnetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVccFlowInfosWithOptions(_ request: ListVccFlowInfosRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVccFlowInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.direction)) {
            body["Direction"] = request.direction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            body["From"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.metricName)) {
            body["MetricName"] = request.metricName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            body["To"] = request.to!;
        }
        if (!TeaUtils.Client.isUnset(request.vccId)) {
            body["VccId"] = request.vccId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVccFlowInfos",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVccFlowInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVccFlowInfos(_ request: ListVccFlowInfosRequest) async throws -> ListVccFlowInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listVccFlowInfosWithOptions(request as! ListVccFlowInfosRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVccGrantRulesWithOptions(_ request: ListVccGrantRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVccGrantRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forSelect)) {
            body["ForSelect"] = request.forSelect!;
        }
        if (!TeaUtils.Client.isUnset(request.grantRuleId)) {
            body["GrantRuleId"] = request.grantRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantTenantId)) {
            body["GrantTenantId"] = request.grantTenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVccGrantRules",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVccGrantRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVccGrantRules(_ request: ListVccGrantRulesRequest) async throws -> ListVccGrantRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listVccGrantRulesWithOptions(request as! ListVccGrantRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVccRouteEntriesWithOptions(_ request: ListVccRouteEntriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVccRouteEntriesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationCidrBlock)) {
            body["DestinationCidrBlock"] = request.destinationCidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.ignoreDetailedRouteEntry)) {
            body["IgnoreDetailedRouteEntry"] = request.ignoreDetailedRouteEntry!;
        }
        if (!TeaUtils.Client.isUnset(request.nextHopId)) {
            body["NextHopId"] = request.nextHopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextHopType)) {
            body["NextHopType"] = request.nextHopType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeType)) {
            body["RouteType"] = request.routeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccId)) {
            body["VccId"] = request.vccId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdRouteEntryId)) {
            body["VpdRouteEntryId"] = request.vpdRouteEntryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVccRouteEntries",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVccRouteEntriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVccRouteEntries(_ request: ListVccRouteEntriesRequest) async throws -> ListVccRouteEntriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listVccRouteEntriesWithOptions(request as! ListVccRouteEntriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVccsWithOptions(_ request: ListVccsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVccsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bandwidth)) {
            body["Bandwidth"] = request.bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.cenId)) {
            body["CenId"] = request.cenId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.exStatus)) {
            body["ExStatus"] = request.exStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterErId)) {
            body["FilterErId"] = request.filterErId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vccId)) {
            body["VccId"] = request.vccId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVccs",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVccsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVccs(_ request: ListVccsRequest) async throws -> ListVccsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listVccsWithOptions(request as! ListVccsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVpdGrantRulesWithOptions(_ request: ListVpdGrantRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVpdGrantRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forSelect)) {
            body["ForSelect"] = request.forSelect!;
        }
        if (!TeaUtils.Client.isUnset(request.grantRuleId)) {
            body["GrantRuleId"] = request.grantRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantTenantId)) {
            body["GrantTenantId"] = request.grantTenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVpdGrantRules",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVpdGrantRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVpdGrantRules(_ request: ListVpdGrantRulesRequest) async throws -> ListVpdGrantRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listVpdGrantRulesWithOptions(request as! ListVpdGrantRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVpdRouteEntriesWithOptions(_ request: ListVpdRouteEntriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVpdRouteEntriesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationCidrBlock)) {
            body["DestinationCidrBlock"] = request.destinationCidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.ignoreDetailedRouteEntry)) {
            body["IgnoreDetailedRouteEntry"] = request.ignoreDetailedRouteEntry!;
        }
        if (!TeaUtils.Client.isUnset(request.nextHopId)) {
            body["NextHopId"] = request.nextHopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextHopType)) {
            body["NextHopType"] = request.nextHopType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeType)) {
            body["RouteType"] = request.routeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdRouteEntryId)) {
            body["VpdRouteEntryId"] = request.vpdRouteEntryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVpdRouteEntries",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVpdRouteEntriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVpdRouteEntries(_ request: ListVpdRouteEntriesRequest) async throws -> ListVpdRouteEntriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listVpdRouteEntriesWithOptions(request as! ListVpdRouteEntriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVpdsWithOptions(_ request: ListVpdsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVpdsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enablePage)) {
            body["EnablePage"] = request.enablePage!;
        }
        if (!TeaUtils.Client.isUnset(request.filterErId)) {
            body["FilterErId"] = request.filterErId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forSelect)) {
            body["ForSelect"] = request.forSelect!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdName)) {
            body["VpdName"] = request.vpdName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withDependence)) {
            body["WithDependence"] = request.withDependence!;
        }
        if (!TeaUtils.Client.isUnset(request.withoutVcc)) {
            body["WithoutVcc"] = request.withoutVcc!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVpds",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVpdsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVpds(_ request: ListVpdsRequest) async throws -> ListVpdsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listVpdsWithOptions(request as! ListVpdsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInstanceNcdWithOptions(_ request: QueryInstanceNcdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryInstanceNcdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId1)) {
            body["InstanceId1"] = request.instanceId1 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId2)) {
            body["InstanceId2"] = request.instanceId2 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryInstanceNcd",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryInstanceNcdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInstanceNcd(_ request: QueryInstanceNcdRequest) async throws -> QueryInstanceNcdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryInstanceNcdWithOptions(request as! QueryInstanceNcdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundVccWithOptions(_ request: RefundVccRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefundVccResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccId)) {
            body["VccId"] = request.vccId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefundVcc",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefundVccResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundVcc(_ request: RefundVccRequest) async throws -> RefundVccResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refundVccWithOptions(request as! RefundVccRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryVccWithOptions(_ request: RetryVccRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RetryVccResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccId)) {
            body["VccId"] = request.vccId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RetryVcc",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetryVccResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryVcc(_ request: RetryVccRequest) async throws -> RetryVccResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await retryVccWithOptions(request as! RetryVccRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchVccConnectionWithOptions(_ request: SwitchVccConnectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchVccConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cenId)) {
            body["CenId"] = request.cenId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionType)) {
            body["ConnectionType"] = request.connectionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            body["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccId)) {
            body["VccId"] = request.vccId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchVccConnection",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchVccConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchVccConnection(_ request: SwitchVccConnectionRequest) async throws -> SwitchVccConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await switchVccConnectionWithOptions(request as! SwitchVccConnectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unAssignPrivateIpAddressWithOptions(_ request: UnAssignPrivateIpAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnAssignPrivateIpAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipName)) {
            body["IpName"] = request.ipName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            body["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            body["PrivateIpAddress"] = request.privateIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subnetId)) {
            body["SubnetId"] = request.subnetId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnAssignPrivateIpAddress",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnAssignPrivateIpAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unAssignPrivateIpAddress(_ request: UnAssignPrivateIpAddressRequest) async throws -> UnAssignPrivateIpAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unAssignPrivateIpAddressWithOptions(request as! UnAssignPrivateIpAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unAssociateVpdCidrBlockWithOptions(_ request: UnAssociateVpdCidrBlockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnAssociateVpdCidrBlockResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryCidrBlock)) {
            body["SecondaryCidrBlock"] = request.secondaryCidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnAssociateVpdCidrBlock",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnAssociateVpdCidrBlockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unAssociateVpdCidrBlock(_ request: UnAssociateVpdCidrBlockRequest) async throws -> UnAssociateVpdCidrBlockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unAssociateVpdCidrBlockWithOptions(request as! UnAssociateVpdCidrBlockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassignLeniPrivateIpAddressWithOptions(_ request: UnassignLeniPrivateIpAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnassignLeniPrivateIpAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticNetworkInterfaceId)) {
            body["ElasticNetworkInterfaceId"] = request.elasticNetworkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipName)) {
            body["IpName"] = request.ipName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnassignLeniPrivateIpAddress",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnassignLeniPrivateIpAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassignLeniPrivateIpAddress(_ request: UnassignLeniPrivateIpAddressRequest) async throws -> UnassignLeniPrivateIpAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unassignLeniPrivateIpAddressWithOptions(request as! UnassignLeniPrivateIpAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateElasticNetworkInterfaceWithOptions(_ request: UpdateElasticNetworkInterfaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateElasticNetworkInterfaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticNetworkInterfaceId)) {
            body["ElasticNetworkInterfaceId"] = request.elasticNetworkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            body["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateElasticNetworkInterface",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateElasticNetworkInterfaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateElasticNetworkInterface(_ request: UpdateElasticNetworkInterfaceRequest) async throws -> UpdateElasticNetworkInterfaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateElasticNetworkInterfaceWithOptions(request as! UpdateElasticNetworkInterfaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateErWithOptions(_ request: UpdateErRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateErResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erName)) {
            body["ErName"] = request.erName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEr",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateErResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEr(_ request: UpdateErRequest) async throws -> UpdateErResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateErWithOptions(request as! UpdateErRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateErAttachmentWithOptions(_ request: UpdateErAttachmentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateErAttachmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.erAttachmentId)) {
            body["ErAttachmentId"] = request.erAttachmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erAttachmentName)) {
            body["ErAttachmentName"] = request.erAttachmentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateErAttachment",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateErAttachmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateErAttachment(_ request: UpdateErAttachmentRequest) async throws -> UpdateErAttachmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateErAttachmentWithOptions(request as! UpdateErAttachmentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateErRouteMapWithOptions(_ request: UpdateErRouteMapRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateErRouteMapResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erId)) {
            body["ErId"] = request.erId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.erRouteMapId)) {
            body["ErRouteMapId"] = request.erRouteMapId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateErRouteMap",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateErRouteMapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateErRouteMap(_ request: UpdateErRouteMapRequest) async throws -> UpdateErRouteMapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateErRouteMapWithOptions(request as! UpdateErRouteMapRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLeniPrivateIpAddressWithOptions(_ request: UpdateLeniPrivateIpAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLeniPrivateIpAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticNetworkInterfaceId)) {
            body["ElasticNetworkInterfaceId"] = request.elasticNetworkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipName)) {
            body["IpName"] = request.ipName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLeniPrivateIpAddress",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLeniPrivateIpAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLeniPrivateIpAddress(_ request: UpdateLeniPrivateIpAddressRequest) async throws -> UpdateLeniPrivateIpAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateLeniPrivateIpAddressWithOptions(request as! UpdateLeniPrivateIpAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSubnetWithOptions(_ request: UpdateSubnetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSubnetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subnetId)) {
            body["SubnetId"] = request.subnetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subnetName)) {
            body["SubnetName"] = request.subnetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSubnet",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSubnetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSubnet(_ request: UpdateSubnetRequest) async throws -> UpdateSubnetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSubnetWithOptions(request as! UpdateSubnetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVccWithOptions(_ request: UpdateVccRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateVccResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bandwidth)) {
            body["Bandwidth"] = request.bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccId)) {
            body["VccId"] = request.vccId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vccName)) {
            body["VccName"] = request.vccName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateVcc",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateVccResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVcc(_ request: UpdateVccRequest) async throws -> UpdateVccResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateVccWithOptions(request as! UpdateVccRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVpdWithOptions(_ request: UpdateVpdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateVpdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdId)) {
            body["VpdId"] = request.vpdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpdName)) {
            body["VpdName"] = request.vpdName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateVpd",
            "version": "2022-05-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateVpdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVpd(_ request: UpdateVpdRequest) async throws -> UpdateVpdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateVpdWithOptions(request as! UpdateVpdRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
