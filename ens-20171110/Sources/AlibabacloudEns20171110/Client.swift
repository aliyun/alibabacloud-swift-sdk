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
        self._endpoint = try getEndpoint("ens", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func accosicateNetworkAclWithOptions(_ request: AccosicateNetworkAclRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AccosicateNetworkAclResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkAclId)) {
            query["NetworkAclId"] = request.networkAclId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AccosicateNetworkAcl",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AccosicateNetworkAclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accosicateNetworkAcl(_ request: AccosicateNetworkAclRequest) async throws -> AccosicateNetworkAclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await accosicateNetworkAclWithOptions(request as! AccosicateNetworkAclRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addBackendServersWithOptions(_ tmpReq: AddBackendServersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddBackendServersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddBackendServersShrinkRequest = AddBackendServersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.backendServers)) {
            request.backendServersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.backendServers, "BackendServers", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendServersShrink)) {
            query["BackendServers"] = request.backendServersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddBackendServers",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddBackendServersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addBackendServers(_ request: AddBackendServersRequest) async throws -> AddBackendServersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addBackendServersWithOptions(request as! AddBackendServersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addNetworkInterfaceToInstanceWithOptions(_ request: AddNetworkInterfaceToInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddNetworkInterfaceToInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoStart)) {
            query["AutoStart"] = request.autoStart!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networks)) {
            query["Networks"] = request.networks ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddNetworkInterfaceToInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddNetworkInterfaceToInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addNetworkInterfaceToInstance(_ request: AddNetworkInterfaceToInstanceRequest) async throws -> AddNetworkInterfaceToInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addNetworkInterfaceToInstanceWithOptions(request as! AddNetworkInterfaceToInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSnatIpForSnatEntryWithOptions(_ request: AddSnatIpForSnatEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddSnatIpForSnatEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.snatEntryId)) {
            query["SnatEntryId"] = request.snatEntryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snatIp)) {
            query["SnatIp"] = request.snatIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddSnatIpForSnatEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddSnatIpForSnatEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSnatIpForSnatEntry(_ request: AddSnatIpForSnatEntryRequest) async throws -> AddSnatIpForSnatEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addSnatIpForSnatEntryWithOptions(request as! AddSnatIpForSnatEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignPrivateIpAddressesWithOptions(_ request: AssignPrivateIpAddressesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssignPrivateIpAddressesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            query["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssignPrivateIpAddresses",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssignPrivateIpAddressesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignPrivateIpAddresses(_ request: AssignPrivateIpAddressesRequest) async throws -> AssignPrivateIpAddressesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assignPrivateIpAddressesWithOptions(request as! AssignPrivateIpAddressesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateEnsEipAddressWithOptions(_ request: AssociateEnsEipAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssociateEnsEipAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allocationId)) {
            query["AllocationId"] = request.allocationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standby)) {
            query["Standby"] = request.standby!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssociateEnsEipAddress",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssociateEnsEipAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateEnsEipAddress(_ request: AssociateEnsEipAddressRequest) async throws -> AssociateEnsEipAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await associateEnsEipAddressWithOptions(request as! AssociateEnsEipAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateHaVipWithOptions(_ request: AssociateHaVipRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssociateHaVipResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.haVipId)) {
            query["HaVipId"] = request.haVipId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssociateHaVip",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssociateHaVipResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateHaVip(_ request: AssociateHaVipRequest) async throws -> AssociateHaVipResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await associateHaVipWithOptions(request as! AssociateHaVipRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDiskWithOptions(_ request: AttachDiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachDiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteWithInstance)) {
            query["DeleteWithInstance"] = request.deleteWithInstance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskId)) {
            query["DiskId"] = request.diskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachDisk",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachDiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDisk(_ request: AttachDiskRequest) async throws -> AttachDiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachDiskWithOptions(request as! AttachDiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachEnsInstancesWithOptions(_ request: AttachEnsInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachEnsInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scripts)) {
            query["Scripts"] = request.scripts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachEnsInstances",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachEnsInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachEnsInstances(_ request: AttachEnsInstancesRequest) async throws -> AttachEnsInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachEnsInstancesWithOptions(request as! AttachEnsInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachInstanceSDGWithOptions(_ tmpReq: AttachInstanceSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachInstanceSDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AttachInstanceSDGShrinkRequest = AttachInstanceSDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.loadOpt)) {
            request.loadOptShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.loadOpt, "LoadOpt", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diskAccessProtocol)) {
            query["DiskAccessProtocol"] = request.diskAccessProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskType)) {
            query["DiskType"] = request.diskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadOptShrink)) {
            query["LoadOpt"] = request.loadOptShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SDGId)) {
            query["SDGId"] = request.SDGId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachInstanceSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachInstanceSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachInstanceSDG(_ request: AttachInstanceSDGRequest) async throws -> AttachInstanceSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachInstanceSDGWithOptions(request as! AttachInstanceSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachNetworkInterfaceWithOptions(_ request: AttachNetworkInterfaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachNetworkInterfaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            query["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachNetworkInterface",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachNetworkInterfaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachNetworkInterface(_ request: AttachNetworkInterfaceRequest) async throws -> AttachNetworkInterfaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachNetworkInterfaceWithOptions(request as! AttachNetworkInterfaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeSecurityGroupWithOptions(_ request: AuthorizeSecurityGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeSecurityGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ipProtocol)) {
            query["IpProtocol"] = request.ipProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portRange)) {
            query["PortRange"] = request.portRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            query["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCidrIp)) {
            query["SourceCidrIp"] = request.sourceCidrIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePortRange)) {
            query["SourcePortRange"] = request.sourcePortRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeSecurityGroup",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeSecurityGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeSecurityGroup(_ request: AuthorizeSecurityGroupRequest) async throws -> AuthorizeSecurityGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authorizeSecurityGroupWithOptions(request as! AuthorizeSecurityGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeSecurityGroupEgressWithOptions(_ request: AuthorizeSecurityGroupEgressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeSecurityGroupEgressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destCidrIp)) {
            query["DestCidrIp"] = request.destCidrIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipProtocol)) {
            query["IpProtocol"] = request.ipProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portRange)) {
            query["PortRange"] = request.portRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            query["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePortRange)) {
            query["SourcePortRange"] = request.sourcePortRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeSecurityGroupEgress",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeSecurityGroupEgressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeSecurityGroupEgress(_ request: AuthorizeSecurityGroupEgressRequest) async throws -> AuthorizeSecurityGroupEgressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authorizeSecurityGroupEgressWithOptions(request as! AuthorizeSecurityGroupEgressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchEventMigrateInstanceWithOptions(_ tmpReq: BatchEventMigrateInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchEventMigrateInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchEventMigrateInstanceShrinkRequest = BatchEventMigrateInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.eventInfos)) {
            request.eventInfosShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventInfos, "EventInfos", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventInfosShrink)) {
            query["EventInfos"] = request.eventInfosShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchEventMigrateInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchEventMigrateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchEventMigrateInstance(_ request: BatchEventMigrateInstanceRequest) async throws -> BatchEventMigrateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchEventMigrateInstanceWithOptions(request as! BatchEventMigrateInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchEventRebootInstanceWithOptions(_ tmpReq: BatchEventRebootInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchEventRebootInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchEventRebootInstanceShrinkRequest = BatchEventRebootInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.eventInfos)) {
            request.eventInfosShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventInfos, "EventInfos", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventInfosShrink)) {
            query["EventInfos"] = request.eventInfosShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchEventRebootInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchEventRebootInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchEventRebootInstance(_ request: BatchEventRebootInstanceRequest) async throws -> BatchEventRebootInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchEventRebootInstanceWithOptions(request as! BatchEventRebootInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchEventRedeployInstanceWithOptions(_ tmpReq: BatchEventRedeployInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchEventRedeployInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchEventRedeployInstanceShrinkRequest = BatchEventRedeployInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.eventInfos)) {
            request.eventInfosShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventInfos, "EventInfos", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventInfosShrink)) {
            query["EventInfos"] = request.eventInfosShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchEventRedeployInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchEventRedeployInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchEventRedeployInstance(_ request: BatchEventRedeployInstanceRequest) async throws -> BatchEventRedeployInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchEventRedeployInstanceWithOptions(request as! BatchEventRedeployInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cleanDistDataWithOptions(_ request: CleanDistDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CleanDistDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataName)) {
            query["DataName"] = request.dataName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataVersion)) {
            query["DataVersion"] = request.dataVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CleanDistData",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CleanDistDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cleanDistData(_ request: CleanDistDataRequest) async throws -> CleanDistDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cleanDistDataWithOptions(request as! CleanDistDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copySDGWithOptions(_ tmpReq: CopySDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CopySDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CopySDGShrinkRequest = CopySDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.destinationRegionIds)) {
            request.destinationRegionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.destinationRegionIds, "DestinationRegionIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CopySDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CopySDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copySDG(_ request: CopySDGRequest) async throws -> CopySDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await copySDGWithOptions(request as! CopySDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copySnapshotWithOptions(_ tmpReq: CopySnapshotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CopySnapshotResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CopySnapshotShrinkRequest = CopySnapshotShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.destinationRegionIds)) {
            request.destinationRegionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.destinationRegionIds, "DestinationRegionIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationRegionIdsShrink)) {
            query["DestinationRegionIds"] = request.destinationRegionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationSnapshotDescription)) {
            query["DestinationSnapshotDescription"] = request.destinationSnapshotDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationSnapshotName)) {
            query["DestinationSnapshotName"] = request.destinationSnapshotName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceBillingCycle)) {
            query["InstanceBillingCycle"] = request.instanceBillingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CopySnapshot",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CopySnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copySnapshot(_ request: CopySnapshotRequest) async throws -> CopySnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await copySnapshotWithOptions(request as! CopySnapshotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createARMServerInstancesWithOptions(_ request: CreateARMServerInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateARMServerInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.autoUseCoupon)) {
            query["AutoUseCoupon"] = request.autoUseCoupon!;
        }
        if (!TeaUtils.Client.isUnset(request.cidr)) {
            query["Cidr"] = request.cidr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentVar)) {
            query["EnvironmentVar"] = request.environmentVar ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.frequency)) {
            query["Frequency"] = request.frequency!;
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceBillingCycle)) {
            query["InstanceBillingCycle"] = request.instanceBillingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nameSpace)) {
            query["NameSpace"] = request.nameSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resolution)) {
            query["Resolution"] = request.resolution ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverName)) {
            query["ServerName"] = request.serverName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverType)) {
            query["ServerType"] = request.serverType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateARMServerInstances",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateARMServerInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createARMServerInstances(_ request: CreateARMServerInstancesRequest) async throws -> CreateARMServerInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createARMServerInstancesWithOptions(request as! CreateARMServerInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplicationWithOptions(_ request: CreateApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.template)) {
            query["Template"] = request.template ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApplication",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplication(_ request: CreateApplicationRequest) async throws -> CreateApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApplicationWithOptions(request as! CreateApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClassicNetworkWithOptions(_ request: CreateClassicNetworkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateClassicNetworkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cidrBlock)) {
            query["CidrBlock"] = request.cidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkName)) {
            query["NetworkName"] = request.networkName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateClassicNetwork",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateClassicNetworkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClassicNetwork(_ request: CreateClassicNetworkRequest) async throws -> CreateClassicNetworkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createClassicNetworkWithOptions(request as! CreateClassicNetworkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClusterWithOptions(_ tmpReq: CreateClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateClusterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateClusterShrinkRequest = CreateClusterShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.controlPlaneConfig)) {
            request.controlPlaneConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.controlPlaneConfig, "ControlPlaneConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.podVswitchIds)) {
            request.podVswitchIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.podVswitchIds, "PodVswitchIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.vswitchIds)) {
            request.vswitchIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.vswitchIds, "VswitchIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["ClusterType"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterVersion)) {
            query["ClusterVersion"] = request.clusterVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerCidr)) {
            query["ContainerCidr"] = request.containerCidr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.controlPlaneConfigShrink)) {
            query["ControlPlaneConfig"] = request.controlPlaneConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kubernetesVersion)) {
            query["KubernetesVersion"] = request.kubernetesVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.podVswitchIdsShrink)) {
            query["PodVswitchIds"] = request.podVswitchIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profile)) {
            query["Profile"] = request.profile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicAccess)) {
            query["PublicAccess"] = request.publicAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceCidr)) {
            query["ServiceCidr"] = request.serviceCidr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vswitchIdsShrink)) {
            query["VswitchIds"] = request.vswitchIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCluster",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCluster(_ request: CreateClusterRequest) async throws -> CreateClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createClusterWithOptions(request as! CreateClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDiskWithOptions(_ request: CreateDiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskName)) {
            query["DiskName"] = request.diskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encrypted)) {
            query["Encrypted"] = request.encrypted!;
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceBillingCycle)) {
            query["InstanceBillingCycle"] = request.instanceBillingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceChargeType)) {
            query["InstanceChargeType"] = request.instanceChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.KMSKeyId)) {
            query["KMSKeyId"] = request.KMSKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDisk",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDisk(_ request: CreateDiskRequest) async throws -> CreateDiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDiskWithOptions(request as! CreateDiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEipInstanceWithOptions(_ request: CreateEipInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEipInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bandwidth)) {
            query["Bandwidth"] = request.bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceChargeType)) {
            query["InstanceChargeType"] = request.instanceChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetChargeType)) {
            query["InternetChargeType"] = request.internetChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipAddress)) {
            query["IpAddress"] = request.ipAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isp)) {
            query["Isp"] = request.isp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEipInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEipInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEipInstance(_ request: CreateEipInstanceRequest) async throws -> CreateEipInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEipInstanceWithOptions(request as! CreateEipInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEnsRouteEntryWithOptions(_ request: CreateEnsRouteEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEnsRouteEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationCidrBlock)) {
            query["DestinationCidrBlock"] = request.destinationCidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextHopId)) {
            query["NextHopId"] = request.nextHopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextHopType)) {
            query["NextHopType"] = request.nextHopType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeEntryName)) {
            query["RouteEntryName"] = request.routeEntryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeTableId)) {
            query["RouteTableId"] = request.routeTableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCidrBlock)) {
            query["SourceCidrBlock"] = request.sourceCidrBlock ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEnsRouteEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEnsRouteEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEnsRouteEntry(_ request: CreateEnsRouteEntryRequest) async throws -> CreateEnsRouteEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEnsRouteEntryWithOptions(request as! CreateEnsRouteEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEnsSaleControlWithOptions(_ tmpReq: CreateEnsSaleControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEnsSaleControlResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateEnsSaleControlShrinkRequest = CreateEnsSaleControlShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.saleControls)) {
            request.saleControlsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.saleControls, "SaleControls", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliUidAccount)) {
            query["AliUidAccount"] = request.aliUidAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customAccount)) {
            query["CustomAccount"] = request.customAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleControlsShrink)) {
            query["SaleControls"] = request.saleControlsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEnsSaleControl",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEnsSaleControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEnsSaleControl(_ request: CreateEnsSaleControlRequest) async throws -> CreateEnsSaleControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEnsSaleControlWithOptions(request as! CreateEnsSaleControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEnsServiceWithOptions(_ request: CreateEnsServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEnsServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensServiceId)) {
            query["EnsServiceId"] = request.ensServiceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEnsService",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEnsServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEnsService(_ request: CreateEnsServiceRequest) async throws -> CreateEnsServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEnsServiceWithOptions(request as! CreateEnsServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEpnInstanceWithOptions(_ request: CreateEpnInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEpnInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.EPNInstanceName)) {
            query["EPNInstanceName"] = request.EPNInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.EPNInstanceType)) {
            query["EPNInstanceType"] = request.EPNInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetChargeType)) {
            query["InternetChargeType"] = request.internetChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetMaxBandwidthOut)) {
            query["InternetMaxBandwidthOut"] = request.internetMaxBandwidthOut!;
        }
        if (!TeaUtils.Client.isUnset(request.networkingModel)) {
            query["NetworkingModel"] = request.networkingModel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEpnInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEpnInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEpnInstance(_ request: CreateEpnInstanceRequest) async throws -> CreateEpnInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEpnInstanceWithOptions(request as! CreateEpnInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFileSystemWithOptions(_ tmpReq: CreateFileSystemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFileSystemResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateFileSystemShrinkRequest = CreateFileSystemShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.orderDetails)) {
            request.orderDetailsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.orderDetails, "OrderDetails", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFileSystem",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFileSystemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFileSystem(_ request: CreateFileSystemRequest) async throws -> CreateFileSystemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFileSystemWithOptions(request as! CreateFileSystemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createForwardEntryWithOptions(_ request: CreateForwardEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateForwardEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.externalIp)) {
            query["ExternalIp"] = request.externalIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalPort)) {
            query["ExternalPort"] = request.externalPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forwardEntryName)) {
            query["ForwardEntryName"] = request.forwardEntryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckPort)) {
            query["HealthCheckPort"] = request.healthCheckPort!;
        }
        if (!TeaUtils.Client.isUnset(request.internalIp)) {
            query["InternalIp"] = request.internalIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internalPort)) {
            query["InternalPort"] = request.internalPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipProtocol)) {
            query["IpProtocol"] = request.ipProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.natGatewayId)) {
            query["NatGatewayId"] = request.natGatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standbyExternalIp)) {
            query["StandbyExternalIp"] = request.standbyExternalIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateForwardEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateForwardEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createForwardEntry(_ request: CreateForwardEntryRequest) async throws -> CreateForwardEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createForwardEntryWithOptions(request as! CreateForwardEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHaVipWithOptions(_ request: CreateHaVipRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHaVipResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipAddress)) {
            query["IpAddress"] = request.ipAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHaVip",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHaVipResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHaVip(_ request: CreateHaVipRequest) async throws -> CreateHaVipResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createHaVipWithOptions(request as! CreateHaVipRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageWithOptions(_ request: CreateImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteAfterImageUpload)) {
            query["DeleteAfterImageUpload"] = request.deleteAfterImageUpload ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            query["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetOSSRegionId)) {
            query["TargetOSSRegionId"] = request.targetOSSRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withDataDisks)) {
            query["WithDataDisks"] = request.withDataDisks!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateImage",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImage(_ request: CreateImageRequest) async throws -> CreateImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createImageWithOptions(request as! CreateImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceWithOptions(_ request: CreateInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRenewPeriod)) {
            query["AutoRenewPeriod"] = request.autoRenewPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetChargeType)) {
            query["InternetChargeType"] = request.internetChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipType)) {
            query["IpType"] = request.ipType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passwordInherit)) {
            query["PasswordInherit"] = request.passwordInherit!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            query["PaymentType"] = request.paymentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            query["PrivateIpAddress"] = request.privateIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicIpIdentification)) {
            query["PublicIpIdentification"] = request.publicIpIdentification!;
        }
        if (!TeaUtils.Client.isUnset(request.quantity)) {
            query["Quantity"] = request.quantity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueSuffix)) {
            query["UniqueSuffix"] = request.uniqueSuffix!;
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataDisk)) {
            query["DataDisk"] = request.dataDisk ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.systemDisk)) {
            query["SystemDisk"] = request.systemDisk!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstance(_ request: CreateInstanceRequest) async throws -> CreateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createInstanceWithOptions(request as! CreateInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceActiveOpsTaskWithOptions(_ tmpReq: CreateInstanceActiveOpsTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceActiveOpsTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateInstanceActiveOpsTaskShrinkRequest = CreateInstanceActiveOpsTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstanceActiveOpsTask",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceActiveOpsTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceActiveOpsTask(_ request: CreateInstanceActiveOpsTaskRequest) async throws -> CreateInstanceActiveOpsTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createInstanceActiveOpsTaskWithOptions(request as! CreateInstanceActiveOpsTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKeyPairWithOptions(_ request: CreateKeyPairRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateKeyPairResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateKeyPair",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateKeyPairResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKeyPair(_ request: CreateKeyPairRequest) async throws -> CreateKeyPairResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createKeyPairWithOptions(request as! CreateKeyPairRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadBalancerWithOptions(_ request: CreateLoadBalancerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLoadBalancerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            query["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerName)) {
            query["LoadBalancerName"] = request.loadBalancerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerSpec)) {
            query["LoadBalancerSpec"] = request.loadBalancerSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerType)) {
            query["LoadBalancerType"] = request.loadBalancerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkId)) {
            query["NetworkId"] = request.networkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLoadBalancer",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLoadBalancerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadBalancer(_ request: CreateLoadBalancerRequest) async throws -> CreateLoadBalancerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLoadBalancerWithOptions(request as! CreateLoadBalancerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadBalancerHTTPListenerWithOptions(_ request: CreateLoadBalancerHTTPListenerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLoadBalancerHTTPListenerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendServerPort)) {
            query["BackendServerPort"] = request.backendServerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forwardPort)) {
            query["ForwardPort"] = request.forwardPort!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheck)) {
            query["HealthCheck"] = request.healthCheck ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConnectPort)) {
            query["HealthCheckConnectPort"] = request.healthCheckConnectPort!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckDomain)) {
            query["HealthCheckDomain"] = request.healthCheckDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckHttpCode)) {
            query["HealthCheckHttpCode"] = request.healthCheckHttpCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckInterval)) {
            query["HealthCheckInterval"] = request.healthCheckInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckMethod)) {
            query["HealthCheckMethod"] = request.healthCheckMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckTimeout)) {
            query["HealthCheckTimeout"] = request.healthCheckTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckURI)) {
            query["HealthCheckURI"] = request.healthCheckURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthyThreshold)) {
            query["HealthyThreshold"] = request.healthyThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.idleTimeout)) {
            query["IdleTimeout"] = request.idleTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerForward)) {
            query["ListenerForward"] = request.listenerForward ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestTimeout)) {
            query["RequestTimeout"] = request.requestTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduler)) {
            query["Scheduler"] = request.scheduler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unhealthyThreshold)) {
            query["UnhealthyThreshold"] = request.unhealthyThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.XForwardedFor)) {
            query["XForwardedFor"] = request.XForwardedFor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLoadBalancerHTTPListener",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLoadBalancerHTTPListenerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadBalancerHTTPListener(_ request: CreateLoadBalancerHTTPListenerRequest) async throws -> CreateLoadBalancerHTTPListenerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLoadBalancerHTTPListenerWithOptions(request as! CreateLoadBalancerHTTPListenerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadBalancerHTTPSListenerWithOptions(_ request: CreateLoadBalancerHTTPSListenerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLoadBalancerHTTPSListenerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendServerPort)) {
            query["BackendServerPort"] = request.backendServerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.cookie)) {
            query["Cookie"] = request.cookie ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookieTimeout)) {
            query["CookieTimeout"] = request.cookieTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forwardPort)) {
            query["ForwardPort"] = request.forwardPort!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheck)) {
            query["HealthCheck"] = request.healthCheck ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConnectPort)) {
            query["HealthCheckConnectPort"] = request.healthCheckConnectPort!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckDomain)) {
            query["HealthCheckDomain"] = request.healthCheckDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckHttpCode)) {
            query["HealthCheckHttpCode"] = request.healthCheckHttpCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckInterval)) {
            query["HealthCheckInterval"] = request.healthCheckInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckMethod)) {
            query["HealthCheckMethod"] = request.healthCheckMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckTimeout)) {
            query["HealthCheckTimeout"] = request.healthCheckTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckURI)) {
            query["HealthCheckURI"] = request.healthCheckURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthyThreshold)) {
            query["HealthyThreshold"] = request.healthyThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.idleTimeout)) {
            query["IdleTimeout"] = request.idleTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerForward)) {
            query["ListenerForward"] = request.listenerForward ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestTimeout)) {
            query["RequestTimeout"] = request.requestTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduler)) {
            query["Scheduler"] = request.scheduler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverCertificateId)) {
            query["ServerCertificateId"] = request.serverCertificateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stickySessionType)) {
            query["StickySessionType"] = request.stickySessionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unhealthyThreshold)) {
            query["UnhealthyThreshold"] = request.unhealthyThreshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLoadBalancerHTTPSListener",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLoadBalancerHTTPSListenerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadBalancerHTTPSListener(_ request: CreateLoadBalancerHTTPSListenerRequest) async throws -> CreateLoadBalancerHTTPSListenerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLoadBalancerHTTPSListenerWithOptions(request as! CreateLoadBalancerHTTPSListenerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadBalancerTCPListenerWithOptions(_ request: CreateLoadBalancerTCPListenerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLoadBalancerTCPListenerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendServerPort)) {
            query["BackendServerPort"] = request.backendServerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eipTransmit)) {
            query["EipTransmit"] = request.eipTransmit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.establishedTimeout)) {
            query["EstablishedTimeout"] = request.establishedTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConnectPort)) {
            query["HealthCheckConnectPort"] = request.healthCheckConnectPort!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConnectTimeout)) {
            query["HealthCheckConnectTimeout"] = request.healthCheckConnectTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckDomain)) {
            query["HealthCheckDomain"] = request.healthCheckDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckHttpCode)) {
            query["HealthCheckHttpCode"] = request.healthCheckHttpCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckInterval)) {
            query["HealthCheckInterval"] = request.healthCheckInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckType)) {
            query["HealthCheckType"] = request.healthCheckType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckURI)) {
            query["HealthCheckURI"] = request.healthCheckURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthyThreshold)) {
            query["HealthyThreshold"] = request.healthyThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.persistenceTimeout)) {
            query["PersistenceTimeout"] = request.persistenceTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduler)) {
            query["Scheduler"] = request.scheduler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unhealthyThreshold)) {
            query["UnhealthyThreshold"] = request.unhealthyThreshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLoadBalancerTCPListener",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLoadBalancerTCPListenerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadBalancerTCPListener(_ request: CreateLoadBalancerTCPListenerRequest) async throws -> CreateLoadBalancerTCPListenerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLoadBalancerTCPListenerWithOptions(request as! CreateLoadBalancerTCPListenerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadBalancerUDPListenerWithOptions(_ request: CreateLoadBalancerUDPListenerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLoadBalancerUDPListenerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendServerPort)) {
            query["BackendServerPort"] = request.backendServerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eipTransmit)) {
            query["EipTransmit"] = request.eipTransmit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.establishedTimeout)) {
            query["EstablishedTimeout"] = request.establishedTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConnectPort)) {
            query["HealthCheckConnectPort"] = request.healthCheckConnectPort!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConnectTimeout)) {
            query["HealthCheckConnectTimeout"] = request.healthCheckConnectTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckExp)) {
            query["HealthCheckExp"] = request.healthCheckExp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckInterval)) {
            query["HealthCheckInterval"] = request.healthCheckInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckReq)) {
            query["HealthCheckReq"] = request.healthCheckReq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthyThreshold)) {
            query["HealthyThreshold"] = request.healthyThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduler)) {
            query["Scheduler"] = request.scheduler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unhealthyThreshold)) {
            query["UnhealthyThreshold"] = request.unhealthyThreshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLoadBalancerUDPListener",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLoadBalancerUDPListenerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadBalancerUDPListener(_ request: CreateLoadBalancerUDPListenerRequest) async throws -> CreateLoadBalancerUDPListenerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLoadBalancerUDPListenerWithOptions(request as! CreateLoadBalancerUDPListenerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMountTargetWithOptions(_ request: CreateMountTargetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMountTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileSystemId)) {
            query["FileSystemId"] = request.fileSystemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountTargetName)) {
            query["MountTargetName"] = request.mountTargetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.netWorkId)) {
            query["NetWorkId"] = request.netWorkId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMountTarget",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMountTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMountTarget(_ request: CreateMountTargetRequest) async throws -> CreateMountTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMountTargetWithOptions(request as! CreateMountTargetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNatGatewayWithOptions(_ request: CreateNatGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNatGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceBillingCycle)) {
            query["InstanceBillingCycle"] = request.instanceBillingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkId)) {
            query["NetworkId"] = request.networkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNatGateway",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNatGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNatGateway(_ request: CreateNatGatewayRequest) async throws -> CreateNatGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNatGatewayWithOptions(request as! CreateNatGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNetworkWithOptions(_ request: CreateNetworkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNetworkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cidrBlock)) {
            query["CidrBlock"] = request.cidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkName)) {
            query["NetworkName"] = request.networkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNetwork",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNetworkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNetwork(_ request: CreateNetworkRequest) async throws -> CreateNetworkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNetworkWithOptions(request as! CreateNetworkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNetworkAclWithOptions(_ request: CreateNetworkAclRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNetworkAclResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkAclName)) {
            query["NetworkAclName"] = request.networkAclName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNetworkAcl",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNetworkAclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNetworkAcl(_ request: CreateNetworkAclRequest) async throws -> CreateNetworkAclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNetworkAclWithOptions(request as! CreateNetworkAclRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNetworkAclEntryWithOptions(_ request: CreateNetworkAclEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNetworkAclEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cidrBlock)) {
            query["CidrBlock"] = request.cidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationCidrBlock)) {
            query["DestinationCidrBlock"] = request.destinationCidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.direction)) {
            query["Direction"] = request.direction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkAclEntryName)) {
            query["NetworkAclEntryName"] = request.networkAclEntryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkAclId)) {
            query["NetworkAclId"] = request.networkAclId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portRange)) {
            query["PortRange"] = request.portRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            query["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            query["Protocol"] = request.protocol_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNetworkAclEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNetworkAclEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNetworkAclEntry(_ request: CreateNetworkAclEntryRequest) async throws -> CreateNetworkAclEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNetworkAclEntryWithOptions(request as! CreateNetworkAclEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNetworkInterfaceWithOptions(_ tmpReq: CreateNetworkInterfaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNetworkInterfaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateNetworkInterfaceShrinkRequest = CreateNetworkInterfaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.securityGroupIds)) {
            request.securityGroupIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.securityGroupIds, "SecurityGroupIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupIdsShrink)) {
            query["SecurityGroupIds"] = request.securityGroupIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNetworkInterface",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNetworkInterfaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNetworkInterface(_ request: CreateNetworkInterfaceRequest) async throws -> CreateNetworkInterfaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNetworkInterfaceWithOptions(request as! CreateNetworkInterfaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSDGWithOptions(_ request: CreateSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSDGResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSDG(_ request: CreateSDGRequest) async throws -> CreateSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSDGWithOptions(request as! CreateSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSecurityGroupWithOptions(_ tmpReq: CreateSecurityGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSecurityGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSecurityGroupShrinkRequest = CreateSecurityGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.permissions)) {
            request.permissionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.permissions, "Permissions", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.permissionsShrink)) {
            query["Permissions"] = request.permissionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupName)) {
            query["SecurityGroupName"] = request.securityGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSecurityGroup",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSecurityGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSecurityGroup(_ request: CreateSecurityGroupRequest) async throws -> CreateSecurityGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSecurityGroupWithOptions(request as! CreateSecurityGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSecurityGroupPermissionsWithOptions(_ tmpReq: CreateSecurityGroupPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSecurityGroupPermissionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSecurityGroupPermissionsShrinkRequest = CreateSecurityGroupPermissionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.permissions)) {
            request.permissionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.permissions, "Permissions", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.permissionsShrink)) {
            query["Permissions"] = request.permissionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSecurityGroupPermissions",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSecurityGroupPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSecurityGroupPermissions(_ request: CreateSecurityGroupPermissionsRequest) async throws -> CreateSecurityGroupPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSecurityGroupPermissionsWithOptions(request as! CreateSecurityGroupPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSnapshotWithOptions(_ request: CreateSnapshotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskId)) {
            query["DiskId"] = request.diskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceBillingCycle)) {
            query["InstanceBillingCycle"] = request.instanceBillingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotName)) {
            query["SnapshotName"] = request.snapshotName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSnapshot",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSnapshot(_ request: CreateSnapshotRequest) async throws -> CreateSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSnapshotWithOptions(request as! CreateSnapshotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSnatEntryWithOptions(_ request: CreateSnatEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSnatEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eipAffinity)) {
            query["EipAffinity"] = request.eipAffinity!;
        }
        if (!TeaUtils.Client.isUnset(request.idleTimeout)) {
            query["IdleTimeout"] = request.idleTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.ispAffinity)) {
            query["IspAffinity"] = request.ispAffinity!;
        }
        if (!TeaUtils.Client.isUnset(request.natGatewayId)) {
            query["NatGatewayId"] = request.natGatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snatEntryName)) {
            query["SnatEntryName"] = request.snatEntryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snatIp)) {
            query["SnatIp"] = request.snatIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCIDR)) {
            query["SourceCIDR"] = request.sourceCIDR ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceNetworkId)) {
            query["SourceNetworkId"] = request.sourceNetworkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceVSwitchId)) {
            query["SourceVSwitchId"] = request.sourceVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standbySnatIp)) {
            query["StandbySnatIp"] = request.standbySnatIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSnatEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSnatEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSnatEntry(_ request: CreateSnatEntryRequest) async throws -> CreateSnatEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSnatEntryWithOptions(request as! CreateSnatEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStorageGatewayWithOptions(_ tmpReq: CreateStorageGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStorageGatewayResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateStorageGatewayShrinkRequest = CreateStorageGatewayShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.orderDetails)) {
            request.orderDetailsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.orderDetails, "OrderDetails", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderDetailsShrink)) {
            query["OrderDetails"] = request.orderDetailsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStorageGateway",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStorageGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStorageGateway(_ request: CreateStorageGatewayRequest) async throws -> CreateStorageGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStorageGatewayWithOptions(request as! CreateStorageGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStorageVolumeWithOptions(_ request: CreateStorageVolumeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStorageVolumeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authPassword)) {
            query["AuthPassword"] = request.authPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authProtocol)) {
            query["AuthProtocol"] = request.authProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authUser)) {
            query["AuthUser"] = request.authUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAuth)) {
            query["IsAuth"] = request.isAuth ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isEnable)) {
            query["IsEnable"] = request.isEnable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageId)) {
            query["StorageId"] = request.storageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volumeName)) {
            query["VolumeName"] = request.volumeName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStorageVolume",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStorageVolumeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStorageVolume(_ request: CreateStorageVolumeRequest) async throws -> CreateStorageVolumeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStorageVolumeWithOptions(request as! CreateStorageVolumeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVSwitchWithOptions(_ request: CreateVSwitchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVSwitchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cidrBlock)) {
            query["CidrBlock"] = request.cidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkId)) {
            query["NetworkId"] = request.networkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchName)) {
            query["VSwitchName"] = request.vSwitchName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVSwitch",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVSwitchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVSwitch(_ request: CreateVSwitchRequest) async throws -> CreateVSwitchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVSwitchWithOptions(request as! CreateVSwitchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAICPublicKeyWithOptions(_ request: DeleteAICPublicKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAICPublicKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyName)) {
            query["KeyName"] = request.keyName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAICPublicKey",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAICPublicKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAICPublicKey(_ request: DeleteAICPublicKeyRequest) async throws -> DeleteAICPublicKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAICPublicKeyWithOptions(request as! DeleteAICPublicKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApplicationWithOptions(_ request: DeleteApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApplication",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApplication(_ request: DeleteApplicationRequest) async throws -> DeleteApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApplicationWithOptions(request as! DeleteApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBucketWithOptions(_ request: DeleteBucketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBucketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBucket",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBucketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBucket(_ request: DeleteBucketRequest) async throws -> DeleteBucketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBucketWithOptions(request as! DeleteBucketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBucketLifecycleWithOptions(_ request: DeleteBucketLifecycleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBucketLifecycleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBucketLifecycle",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBucketLifecycleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBucketLifecycle(_ request: DeleteBucketLifecycleRequest) async throws -> DeleteBucketLifecycleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBucketLifecycleWithOptions(request as! DeleteBucketLifecycleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDiskWithOptions(_ request: DeleteDiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diskId)) {
            query["DiskId"] = request.diskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDisk",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDisk(_ request: DeleteDiskRequest) async throws -> DeleteDiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDiskWithOptions(request as! DeleteDiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEipWithOptions(_ request: DeleteEipRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEipResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEip",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEipResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEip(_ request: DeleteEipRequest) async throws -> DeleteEipResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEipWithOptions(request as! DeleteEipRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnsRouteEntryWithOptions(_ request: DeleteEnsRouteEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEnsRouteEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.routeEntryId)) {
            query["RouteEntryId"] = request.routeEntryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEnsRouteEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEnsRouteEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnsRouteEntry(_ request: DeleteEnsRouteEntryRequest) async throws -> DeleteEnsRouteEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEnsRouteEntryWithOptions(request as! DeleteEnsRouteEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnsSaleConditionControlWithOptions(_ tmpReq: DeleteEnsSaleConditionControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEnsSaleConditionControlResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteEnsSaleConditionControlShrinkRequest = DeleteEnsSaleConditionControlShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.saleControls)) {
            request.saleControlsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.saleControls, "SaleControls", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliUidAccount)) {
            query["AliUidAccount"] = request.aliUidAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customAccount)) {
            query["CustomAccount"] = request.customAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleControlsShrink)) {
            query["SaleControls"] = request.saleControlsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEnsSaleConditionControl",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEnsSaleConditionControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnsSaleConditionControl(_ request: DeleteEnsSaleConditionControlRequest) async throws -> DeleteEnsSaleConditionControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEnsSaleConditionControlWithOptions(request as! DeleteEnsSaleConditionControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnsSaleControlWithOptions(_ tmpReq: DeleteEnsSaleControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEnsSaleControlResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteEnsSaleControlShrinkRequest = DeleteEnsSaleControlShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.saleControls)) {
            request.saleControlsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.saleControls, "SaleControls", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliUidAccount)) {
            query["AliUidAccount"] = request.aliUidAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customAccount)) {
            query["CustomAccount"] = request.customAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleControlsShrink)) {
            query["SaleControls"] = request.saleControlsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEnsSaleControl",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEnsSaleControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnsSaleControl(_ request: DeleteEnsSaleControlRequest) async throws -> DeleteEnsSaleControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEnsSaleControlWithOptions(request as! DeleteEnsSaleControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEpnInstanceWithOptions(_ request: DeleteEpnInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEpnInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.EPNInstanceId)) {
            query["EPNInstanceId"] = request.EPNInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEpnInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEpnInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEpnInstance(_ request: DeleteEpnInstanceRequest) async throws -> DeleteEpnInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEpnInstanceWithOptions(request as! DeleteEpnInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFileSystemWithOptions(_ request: DeleteFileSystemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFileSystemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFileSystem",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFileSystemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFileSystem(_ request: DeleteFileSystemRequest) async throws -> DeleteFileSystemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFileSystemWithOptions(request as! DeleteFileSystemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteForwardEntryWithOptions(_ request: DeleteForwardEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteForwardEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forwardEntryId)) {
            query["ForwardEntryId"] = request.forwardEntryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteForwardEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteForwardEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteForwardEntry(_ request: DeleteForwardEntryRequest) async throws -> DeleteForwardEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteForwardEntryWithOptions(request as! DeleteForwardEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHaVipsWithOptions(_ tmpReq: DeleteHaVipsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHaVipsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteHaVipsShrinkRequest = DeleteHaVipsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.haVipIds)) {
            request.haVipIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.haVipIds, "HaVipIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.haVipIdsShrink)) {
            query["HaVipIds"] = request.haVipIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHaVips",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHaVipsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHaVips(_ request: DeleteHaVipsRequest) async throws -> DeleteHaVipsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteHaVipsWithOptions(request as! DeleteHaVipsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImageWithOptions(_ request: DeleteImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteImage",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImage(_ request: DeleteImageRequest) async throws -> DeleteImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteImageWithOptions(request as! DeleteImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteKeyPairsWithOptions(_ request: DeleteKeyPairsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteKeyPairsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyPairId)) {
            query["KeyPairId"] = request.keyPairId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteKeyPairs",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteKeyPairsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteKeyPairs(_ request: DeleteKeyPairsRequest) async throws -> DeleteKeyPairsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteKeyPairsWithOptions(request as! DeleteKeyPairsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLoadBalancerListenerWithOptions(_ request: DeleteLoadBalancerListenerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLoadBalancerListenerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerProtocol)) {
            query["ListenerProtocol"] = request.listenerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLoadBalancerListener",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLoadBalancerListenerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLoadBalancerListener(_ request: DeleteLoadBalancerListenerRequest) async throws -> DeleteLoadBalancerListenerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLoadBalancerListenerWithOptions(request as! DeleteLoadBalancerListenerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMountTargetWithOptions(_ request: DeleteMountTargetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMountTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileSystemId)) {
            query["FileSystemId"] = request.fileSystemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountTargetName)) {
            query["MountTargetName"] = request.mountTargetName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMountTarget",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMountTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMountTarget(_ request: DeleteMountTargetRequest) async throws -> DeleteMountTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMountTargetWithOptions(request as! DeleteMountTargetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNatGatewayWithOptions(_ request: DeleteNatGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNatGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forceDelete)) {
            query["ForceDelete"] = request.forceDelete!;
        }
        if (!TeaUtils.Client.isUnset(request.natGatewayId)) {
            query["NatGatewayId"] = request.natGatewayId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNatGateway",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNatGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNatGateway(_ request: DeleteNatGatewayRequest) async throws -> DeleteNatGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNatGatewayWithOptions(request as! DeleteNatGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetworkWithOptions(_ request: DeleteNetworkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNetworkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkId)) {
            query["NetworkId"] = request.networkId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNetwork",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNetworkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetwork(_ request: DeleteNetworkRequest) async throws -> DeleteNetworkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNetworkWithOptions(request as! DeleteNetworkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetworkAclWithOptions(_ request: DeleteNetworkAclRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNetworkAclResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkAclId)) {
            query["NetworkAclId"] = request.networkAclId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNetworkAcl",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNetworkAclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetworkAcl(_ request: DeleteNetworkAclRequest) async throws -> DeleteNetworkAclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNetworkAclWithOptions(request as! DeleteNetworkAclRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetworkAclEntryWithOptions(_ request: DeleteNetworkAclEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNetworkAclEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkAclEntryId)) {
            query["NetworkAclEntryId"] = request.networkAclEntryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNetworkAclEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNetworkAclEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetworkAclEntry(_ request: DeleteNetworkAclEntryRequest) async throws -> DeleteNetworkAclEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNetworkAclEntryWithOptions(request as! DeleteNetworkAclEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetworkInterfacesWithOptions(_ tmpReq: DeleteNetworkInterfacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNetworkInterfacesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteNetworkInterfacesShrinkRequest = DeleteNetworkInterfacesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.networkInterfaceIds)) {
            request.networkInterfaceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.networkInterfaceIds, "NetworkInterfaceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkInterfaceIdsShrink)) {
            query["NetworkInterfaceIds"] = request.networkInterfaceIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNetworkInterfaces",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNetworkInterfacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetworkInterfaces(_ request: DeleteNetworkInterfacesRequest) async throws -> DeleteNetworkInterfacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNetworkInterfacesWithOptions(request as! DeleteNetworkInterfacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteObjectWithOptions(_ request: DeleteObjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteObjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectKey)) {
            query["ObjectKey"] = request.objectKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteObject",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteObjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteObject(_ request: DeleteObjectRequest) async throws -> DeleteObjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteObjectWithOptions(request as! DeleteObjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSDGWithOptions(_ tmpReq: DeleteSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteSDGShrinkRequest = DeleteSDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.SDGId)) {
            request.SDGIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.SDGId, "SDGId", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.SDGIdShrink)) {
            query["SDGId"] = request.SDGIdShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSDG(_ request: DeleteSDGRequest) async throws -> DeleteSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSDGWithOptions(request as! DeleteSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecurityGroupWithOptions(_ request: DeleteSecurityGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSecurityGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSecurityGroup",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSecurityGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecurityGroup(_ request: DeleteSecurityGroupRequest) async throws -> DeleteSecurityGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSecurityGroupWithOptions(request as! DeleteSecurityGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecurityGroupPermissionsWithOptions(_ tmpReq: DeleteSecurityGroupPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSecurityGroupPermissionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteSecurityGroupPermissionsShrinkRequest = DeleteSecurityGroupPermissionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.permissions)) {
            request.permissionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.permissions, "Permissions", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.permissionsShrink)) {
            query["Permissions"] = request.permissionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSecurityGroupPermissions",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSecurityGroupPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecurityGroupPermissions(_ request: DeleteSecurityGroupPermissionsRequest) async throws -> DeleteSecurityGroupPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSecurityGroupPermissionsWithOptions(request as! DeleteSecurityGroupPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnapshotWithOptions(_ request: DeleteSnapshotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSnapshot",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnapshot(_ request: DeleteSnapshotRequest) async throws -> DeleteSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSnapshotWithOptions(request as! DeleteSnapshotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnatEntryWithOptions(_ request: DeleteSnatEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSnatEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.snatEntryId)) {
            query["SnatEntryId"] = request.snatEntryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSnatEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSnatEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnatEntry(_ request: DeleteSnatEntryRequest) async throws -> DeleteSnatEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSnatEntryWithOptions(request as! DeleteSnatEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnatIpForSnatEntryWithOptions(_ request: DeleteSnatIpForSnatEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSnatIpForSnatEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.snatEntryId)) {
            query["SnatEntryId"] = request.snatEntryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snatIp)) {
            query["SnatIp"] = request.snatIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSnatIpForSnatEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSnatIpForSnatEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnatIpForSnatEntry(_ request: DeleteSnatIpForSnatEntryRequest) async throws -> DeleteSnatIpForSnatEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSnatIpForSnatEntryWithOptions(request as! DeleteSnatIpForSnatEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStorageGatewayWithOptions(_ request: DeleteStorageGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteStorageGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteStorageGateway",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteStorageGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStorageGateway(_ request: DeleteStorageGatewayRequest) async throws -> DeleteStorageGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteStorageGatewayWithOptions(request as! DeleteStorageGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStorageVolumeWithOptions(_ request: DeleteStorageVolumeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteStorageVolumeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.volumeId)) {
            query["VolumeId"] = request.volumeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteStorageVolume",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteStorageVolumeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStorageVolume(_ request: DeleteStorageVolumeRequest) async throws -> DeleteStorageVolumeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteStorageVolumeWithOptions(request as! DeleteStorageVolumeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVSwitchWithOptions(_ request: DeleteVSwitchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVSwitchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVSwitch",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVSwitchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVSwitch(_ request: DeleteVSwitchRequest) async throws -> DeleteVSwitchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVSwitchWithOptions(request as! DeleteVSwitchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployInstanceSDGWithOptions(_ tmpReq: DeployInstanceSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployInstanceSDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeployInstanceSDGShrinkRequest = DeployInstanceSDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deploymentType)) {
            query["DeploymentType"] = request.deploymentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskAccessProtocol)) {
            query["DiskAccessProtocol"] = request.diskAccessProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskType)) {
            query["DiskType"] = request.diskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SDGId)) {
            query["SDGId"] = request.SDGId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeployInstanceSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeployInstanceSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployInstanceSDG(_ request: DeployInstanceSDGRequest) async throws -> DeployInstanceSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deployInstanceSDGWithOptions(request as! DeployInstanceSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deploySDGWithOptions(_ tmpReq: DeploySDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeploySDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeploySDGShrinkRequest = DeploySDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeploySDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeploySDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deploySDG(_ request: DeploySDGRequest) async throws -> DeploySDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deploySDGWithOptions(request as! DeploySDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAICImagesWithOptions(_ request: DescribeAICImagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAICImagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageType)) {
            query["ImageType"] = request.imageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxDate)) {
            query["MaxDate"] = request.maxDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minDate)) {
            query["MinDate"] = request.minDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAICImages",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAICImagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAICImages(_ request: DescribeAICImagesRequest) async throws -> DescribeAICImagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAICImagesWithOptions(request as! DescribeAICImagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeARMServerInstancesWithOptions(_ tmpReq: DescribeARMServerInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeARMServerInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeARMServerInstancesShrinkRequest = DescribeARMServerInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.AICSpecs)) {
            request.AICSpecsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.AICSpecs, "AICSpecs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ensRegionIds)) {
            request.ensRegionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ensRegionIds, "EnsRegionIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.serverIds)) {
            request.serverIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.serverIds, "ServerIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.serverSpecs)) {
            request.serverSpecsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.serverSpecs, "ServerSpecs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.states)) {
            request.statesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.states, "States", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeARMServerInstances",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeARMServerInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeARMServerInstances(_ request: DescribeARMServerInstancesRequest) async throws -> DescribeARMServerInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeARMServerInstancesWithOptions(request as! DescribeARMServerInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicationWithOptions(_ request: DescribeApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appVersions)) {
            query["AppVersions"] = request.appVersions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            query["Level"] = request.level ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outDetailStatParams)) {
            query["OutDetailStatParams"] = request.outDetailStatParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceSelector)) {
            query["ResourceSelector"] = request.resourceSelector ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApplication",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplication(_ request: DescribeApplicationRequest) async throws -> DescribeApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApplicationWithOptions(request as! DescribeApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableResourceWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAvailableResourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAvailableResource",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAvailableResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableResource() async throws -> DescribeAvailableResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAvailableResourceWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableResourceInfoWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAvailableResourceInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAvailableResourceInfo",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAvailableResourceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableResourceInfo() async throws -> DescribeAvailableResourceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAvailableResourceInfoWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBandWithdChargeTypeWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBandWithdChargeTypeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBandWithdChargeType",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBandWithdChargeTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBandWithdChargeType() async throws -> DescribeBandWithdChargeTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBandWithdChargeTypeWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBandwitdhByInternetChargeTypeWithOptions(_ request: DescribeBandwitdhByInternetChargeTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBandwitdhByInternetChargeTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isp)) {
            query["Isp"] = request.isp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBandwitdhByInternetChargeType",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBandwitdhByInternetChargeTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBandwitdhByInternetChargeType(_ request: DescribeBandwitdhByInternetChargeTypeRequest) async throws -> DescribeBandwitdhByInternetChargeTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBandwitdhByInternetChargeTypeWithOptions(request as! DescribeBandwitdhByInternetChargeTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudDiskAvailableResourceInfoWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCloudDiskAvailableResourceInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCloudDiskAvailableResourceInfo",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCloudDiskAvailableResourceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudDiskAvailableResourceInfo() async throws -> DescribeCloudDiskAvailableResourceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCloudDiskAvailableResourceInfoWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudDiskTypesWithOptions(_ tmpReq: DescribeCloudDiskTypesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCloudDiskTypesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeCloudDiskTypesShrinkRequest = DescribeCloudDiskTypesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ensRegionIds)) {
            request.ensRegionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ensRegionIds, "EnsRegionIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCloudDiskTypes",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCloudDiskTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudDiskTypes(_ request: DescribeCloudDiskTypesRequest) async throws -> DescribeCloudDiskTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCloudDiskTypesWithOptions(request as! DescribeCloudDiskTypesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterWithOptions(_ request: DescribeClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCluster",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCluster(_ request: DescribeClusterRequest) async throws -> DescribeClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClusterWithOptions(request as! DescribeClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterKubeConfigWithOptions(_ request: DescribeClusterKubeConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterKubeConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterKubeConfig",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterKubeConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterKubeConfig(_ request: DescribeClusterKubeConfigRequest) async throws -> DescribeClusterKubeConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClusterKubeConfigWithOptions(request as! DescribeClusterKubeConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClustersV1WithOptions(_ request: DescribeClustersV1Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClustersV1Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClustersV1",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClustersV1Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClustersV1(_ request: DescribeClustersV1Request) async throws -> DescribeClustersV1Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClustersV1WithOptions(request as! DescribeClustersV1Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCreatePrePaidInstanceResultWithOptions(_ request: DescribeCreatePrePaidInstanceResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCreatePrePaidInstanceResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCreatePrePaidInstanceResult",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCreatePrePaidInstanceResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCreatePrePaidInstanceResult(_ request: DescribeCreatePrePaidInstanceResultRequest) async throws -> DescribeCreatePrePaidInstanceResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCreatePrePaidInstanceResultWithOptions(request as! DescribeCreatePrePaidInstanceResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataDistResultWithOptions(_ tmpReq: DescribeDataDistResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDataDistResultResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeDataDistResultShrinkRequest = DescribeDataDistResultShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ensRegionIds)) {
            request.ensRegionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ensRegionIds, "EnsRegionIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataNames)) {
            query["DataNames"] = request.dataNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataVersions)) {
            query["DataVersions"] = request.dataVersions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionIdsShrink)) {
            query["EnsRegionIds"] = request.ensRegionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxDate)) {
            query["MaxDate"] = request.maxDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minDate)) {
            query["MinDate"] = request.minDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDataDistResult",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDataDistResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataDistResult(_ request: DescribeDataDistResultRequest) async throws -> DescribeDataDistResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDataDistResultWithOptions(request as! DescribeDataDistResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataDownloadURLWithOptions(_ request: DescribeDataDownloadURLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDataDownloadURLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDataDownloadURL",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDataDownloadURLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataDownloadURL(_ request: DescribeDataDownloadURLRequest) async throws -> DescribeDataDownloadURLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDataDownloadURLWithOptions(request as! DescribeDataDownloadURLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataPushResultWithOptions(_ request: DescribeDataPushResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDataPushResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataNames)) {
            query["DataNames"] = request.dataNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataVersions)) {
            query["DataVersions"] = request.dataVersions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxDate)) {
            query["MaxDate"] = request.maxDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minDate)) {
            query["MinDate"] = request.minDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionIds)) {
            query["RegionIds"] = request.regionIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDataPushResult",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDataPushResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataPushResult(_ request: DescribeDataPushResultRequest) async throws -> DescribeDataPushResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDataPushResultWithOptions(request as! DescribeDataPushResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeviceServiceWithOptions(_ request: DescribeDeviceServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDeviceServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDeviceService",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDeviceServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeviceService(_ request: DescribeDeviceServiceRequest) async throws -> DescribeDeviceServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDeviceServiceWithOptions(request as! DescribeDeviceServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDiskIopsListWithOptions(_ request: DescribeDiskIopsListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDiskIopsListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDiskIopsList",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDiskIopsListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDiskIopsList(_ request: DescribeDiskIopsListRequest) async throws -> DescribeDiskIopsListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDiskIopsListWithOptions(request as! DescribeDiskIopsListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDisksWithOptions(_ request: DescribeDisksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDisksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskChargeType)) {
            query["DiskChargeType"] = request.diskChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskId)) {
            query["DiskId"] = request.diskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskIds)) {
            query["DiskIds"] = request.diskIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskName)) {
            query["DiskName"] = request.diskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskType)) {
            query["DiskType"] = request.diskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionIds)) {
            query["EnsRegionIds"] = request.ensRegionIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderByParams)) {
            query["OrderByParams"] = request.orderByParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDisks",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDisksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDisks(_ request: DescribeDisksRequest) async throws -> DescribeDisksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDisksWithOptions(request as! DescribeDisksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeElbAvailableResourceInfoWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeElbAvailableResourceInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeElbAvailableResourceInfo",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeElbAvailableResourceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeElbAvailableResourceInfo() async throws -> DescribeElbAvailableResourceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeElbAvailableResourceInfoWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsCommodityCodeWithOptions(_ request: DescribeEnsCommodityCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsCommodityCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsCommodityCode",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsCommodityCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsCommodityCode(_ request: DescribeEnsCommodityCodeRequest) async throws -> DescribeEnsCommodityCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsCommodityCodeWithOptions(request as! DescribeEnsCommodityCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsCommodityModuleCodeWithOptions(_ request: DescribeEnsCommodityModuleCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsCommodityModuleCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleCode)) {
            query["ModuleCode"] = request.moduleCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsCommodityModuleCode",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsCommodityModuleCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsCommodityModuleCode(_ request: DescribeEnsCommodityModuleCodeRequest) async throws -> DescribeEnsCommodityModuleCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsCommodityModuleCodeWithOptions(request as! DescribeEnsCommodityModuleCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsEipAddressesWithOptions(_ request: DescribeEnsEipAddressesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsEipAddressesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allocationId)) {
            query["AllocationId"] = request.allocationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.associatedInstanceId)) {
            query["AssociatedInstanceId"] = request.associatedInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.associatedInstanceType)) {
            query["AssociatedInstanceType"] = request.associatedInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eipAddress)) {
            query["EipAddress"] = request.eipAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eipName)) {
            query["EipName"] = request.eipName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionIds)) {
            query["EnsRegionIds"] = request.ensRegionIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.icmpReplyEnabled)) {
            query["IcmpReplyEnabled"] = request.icmpReplyEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.standby)) {
            query["Standby"] = request.standby ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsEipAddresses",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsEipAddressesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsEipAddresses(_ request: DescribeEnsEipAddressesRequest) async throws -> DescribeEnsEipAddressesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsEipAddressesWithOptions(request as! DescribeEnsEipAddressesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsNetDistrictWithOptions(_ request: DescribeEnsNetDistrictRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsNetDistrictResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.netDistrictCode)) {
            query["NetDistrictCode"] = request.netDistrictCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.netDistrictCodeNode)) {
            query["NetDistrictCodeNode"] = request.netDistrictCodeNode!;
        }
        if (!TeaUtils.Client.isUnset(request.netLevelCode)) {
            query["NetLevelCode"] = request.netLevelCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsNetDistrict",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsNetDistrictResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsNetDistrict(_ request: DescribeEnsNetDistrictRequest) async throws -> DescribeEnsNetDistrictResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsNetDistrictWithOptions(request as! DescribeEnsNetDistrictRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsNetLevelWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsNetLevelResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsNetLevel",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsNetLevelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsNetLevel() async throws -> DescribeEnsNetLevelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsNetLevelWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsNetSaleDistrictWithOptions(_ request: DescribeEnsNetSaleDistrictRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsNetSaleDistrictResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.netDistrictCode)) {
            query["NetDistrictCode"] = request.netDistrictCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.netLevelCode)) {
            query["NetLevelCode"] = request.netLevelCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsNetSaleDistrict",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsNetSaleDistrictResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsNetSaleDistrict(_ request: DescribeEnsNetSaleDistrictRequest) async throws -> DescribeEnsNetSaleDistrictResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsNetSaleDistrictWithOptions(request as! DescribeEnsNetSaleDistrictRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsRegionIdIpv6InfoWithOptions(_ request: DescribeEnsRegionIdIpv6InfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsRegionIdIpv6InfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsRegionIdIpv6Info",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsRegionIdIpv6InfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsRegionIdIpv6Info(_ request: DescribeEnsRegionIdIpv6InfoRequest) async throws -> DescribeEnsRegionIdIpv6InfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsRegionIdIpv6InfoWithOptions(request as! DescribeEnsRegionIdIpv6InfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsRegionIdResourceWithOptions(_ request: DescribeEnsRegionIdResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsRegionIdResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isp)) {
            query["Isp"] = request.isp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderByParams)) {
            query["OrderByParams"] = request.orderByParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsRegionIdResource",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsRegionIdResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsRegionIdResource(_ request: DescribeEnsRegionIdResourceRequest) async throws -> DescribeEnsRegionIdResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsRegionIdResourceWithOptions(request as! DescribeEnsRegionIdResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsRegionsWithOptions(_ request: DescribeEnsRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsRegions",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsRegions(_ request: DescribeEnsRegionsRequest) async throws -> DescribeEnsRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsRegionsWithOptions(request as! DescribeEnsRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsResourceUsageWithOptions(_ request: DescribeEnsResourceUsageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsResourceUsageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsResourceUsage",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsResourceUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsResourceUsage(_ request: DescribeEnsResourceUsageRequest) async throws -> DescribeEnsResourceUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsResourceUsageWithOptions(request as! DescribeEnsResourceUsageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsRouteEntryListWithOptions(_ request: DescribeEnsRouteEntryListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsRouteEntryListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationCidrBlock)) {
            query["DestinationCidrBlock"] = request.destinationCidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextHopId)) {
            query["NextHopId"] = request.nextHopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextHopType)) {
            query["NextHopType"] = request.nextHopType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.routeEntryId)) {
            query["RouteEntryId"] = request.routeEntryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeEntryName)) {
            query["RouteEntryName"] = request.routeEntryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeEntryType)) {
            query["RouteEntryType"] = request.routeEntryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeTableId)) {
            query["RouteTableId"] = request.routeTableId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsRouteEntryList",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsRouteEntryListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsRouteEntryList(_ request: DescribeEnsRouteEntryListRequest) async throws -> DescribeEnsRouteEntryListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsRouteEntryListWithOptions(request as! DescribeEnsRouteEntryListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsRouteTablesWithOptions(_ request: DescribeEnsRouteTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsRouteTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.associateType)) {
            query["AssociateType"] = request.associateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionIds)) {
            query["EnsRegionIds"] = request.ensRegionIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.networkId)) {
            query["NetworkId"] = request.networkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.routeTableId)) {
            query["RouteTableId"] = request.routeTableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeTableName)) {
            query["RouteTableName"] = request.routeTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsRouteTables",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsRouteTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsRouteTables(_ request: DescribeEnsRouteTablesRequest) async throws -> DescribeEnsRouteTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsRouteTablesWithOptions(request as! DescribeEnsRouteTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsSaleControlWithOptions(_ request: DescribeEnsSaleControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsSaleControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliUidAccount)) {
            query["AliUidAccount"] = request.aliUidAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customAccount)) {
            query["CustomAccount"] = request.customAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleCode)) {
            query["ModuleCode"] = request.moduleCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsSaleControl",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsSaleControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsSaleControl(_ request: DescribeEnsSaleControlRequest) async throws -> DescribeEnsSaleControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsSaleControlWithOptions(request as! DescribeEnsSaleControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsSaleControlAvailableResourceWithOptions(_ request: DescribeEnsSaleControlAvailableResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsSaleControlAvailableResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customAccount)) {
            query["CustomAccount"] = request.customAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsSaleControlAvailableResource",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsSaleControlAvailableResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsSaleControlAvailableResource(_ request: DescribeEnsSaleControlAvailableResourceRequest) async throws -> DescribeEnsSaleControlAvailableResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsSaleControlAvailableResourceWithOptions(request as! DescribeEnsSaleControlAvailableResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsSaleControlStockWithOptions(_ request: DescribeEnsSaleControlStockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnsSaleControlStockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliUidAccount)) {
            query["AliUidAccount"] = request.aliUidAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customAccount)) {
            query["CustomAccount"] = request.customAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleCode)) {
            query["ModuleCode"] = request.moduleCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnsSaleControlStock",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnsSaleControlStockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnsSaleControlStock(_ request: DescribeEnsSaleControlStockRequest) async throws -> DescribeEnsSaleControlStockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnsSaleControlStockWithOptions(request as! DescribeEnsSaleControlStockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEpnBandWidthDataWithOptions(_ request: DescribeEpnBandWidthDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEpnBandWidthDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.EPNInstanceId)) {
            query["EPNInstanceId"] = request.EPNInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isp)) {
            query["Isp"] = request.isp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkingModel)) {
            query["NetworkingModel"] = request.networkingModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEpnBandWidthData",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEpnBandWidthDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEpnBandWidthData(_ request: DescribeEpnBandWidthDataRequest) async throws -> DescribeEpnBandWidthDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEpnBandWidthDataWithOptions(request as! DescribeEpnBandWidthDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEpnBandwitdhByInternetChargeTypeWithOptions(_ request: DescribeEpnBandwitdhByInternetChargeTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEpnBandwitdhByInternetChargeTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isp)) {
            query["Isp"] = request.isp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkingModel)) {
            query["NetworkingModel"] = request.networkingModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEpnBandwitdhByInternetChargeType",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEpnBandwitdhByInternetChargeTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEpnBandwitdhByInternetChargeType(_ request: DescribeEpnBandwitdhByInternetChargeTypeRequest) async throws -> DescribeEpnBandwitdhByInternetChargeTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEpnBandwitdhByInternetChargeTypeWithOptions(request as! DescribeEpnBandwitdhByInternetChargeTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEpnInstanceAttributeWithOptions(_ request: DescribeEpnInstanceAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEpnInstanceAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.EPNInstanceId)) {
            query["EPNInstanceId"] = request.EPNInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEpnInstanceAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEpnInstanceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEpnInstanceAttribute(_ request: DescribeEpnInstanceAttributeRequest) async throws -> DescribeEpnInstanceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEpnInstanceAttributeWithOptions(request as! DescribeEpnInstanceAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEpnInstancesWithOptions(_ request: DescribeEpnInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEpnInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.EPNInstanceId)) {
            query["EPNInstanceId"] = request.EPNInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.EPNInstanceName)) {
            query["EPNInstanceName"] = request.EPNInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEpnInstances",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEpnInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEpnInstances(_ request: DescribeEpnInstancesRequest) async throws -> DescribeEpnInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEpnInstancesWithOptions(request as! DescribeEpnInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEpnMeasurementDataWithOptions(_ request: DescribeEpnMeasurementDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEpnMeasurementDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEpnMeasurementData",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEpnMeasurementDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEpnMeasurementData(_ request: DescribeEpnMeasurementDataRequest) async throws -> DescribeEpnMeasurementDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEpnMeasurementDataWithOptions(request as! DescribeEpnMeasurementDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExportImageInfoWithOptions(_ request: DescribeExportImageInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeExportImageInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            query["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeExportImageInfo",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeExportImageInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExportImageInfo(_ request: DescribeExportImageInfoRequest) async throws -> DescribeExportImageInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeExportImageInfoWithOptions(request as! DescribeExportImageInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExportImageStatusWithOptions(_ request: DescribeExportImageStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeExportImageStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeExportImageStatus",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeExportImageStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExportImageStatus(_ request: DescribeExportImageStatusRequest) async throws -> DescribeExportImageStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeExportImageStatusWithOptions(request as! DescribeExportImageStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFileSystemsWithOptions(_ request: DescribeFileSystemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFileSystemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFileSystems",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFileSystemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFileSystems(_ request: DescribeFileSystemsRequest) async throws -> DescribeFileSystemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFileSystemsWithOptions(request as! DescribeFileSystemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeForwardEntryAttributeWithOptions(_ request: DescribeForwardEntryAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeForwardEntryAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forwardEntryId)) {
            query["ForwardEntryId"] = request.forwardEntryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeForwardEntryAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeForwardEntryAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeForwardEntryAttribute(_ request: DescribeForwardEntryAttributeRequest) async throws -> DescribeForwardEntryAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeForwardEntryAttributeWithOptions(request as! DescribeForwardEntryAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeForwardTableEntriesWithOptions(_ request: DescribeForwardTableEntriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeForwardTableEntriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.externalIp)) {
            query["ExternalIp"] = request.externalIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forwardEntryId)) {
            query["ForwardEntryId"] = request.forwardEntryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forwardEntryName)) {
            query["ForwardEntryName"] = request.forwardEntryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internalIp)) {
            query["InternalIp"] = request.internalIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipProtocol)) {
            query["IpProtocol"] = request.ipProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.natGatewayId)) {
            query["NatGatewayId"] = request.natGatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeForwardTableEntries",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeForwardTableEntriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeForwardTableEntries(_ request: DescribeForwardTableEntriesRequest) async throws -> DescribeForwardTableEntriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeForwardTableEntriesWithOptions(request as! DescribeForwardTableEntriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHaVipsWithOptions(_ request: DescribeHaVipsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHaVipsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHaVips",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHaVipsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHaVips(_ request: DescribeHaVipsRequest) async throws -> DescribeHaVipsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHaVipsWithOptions(request as! DescribeHaVipsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHistoryEventsWithOptions(_ tmpReq: DescribeHistoryEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHistoryEventsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeHistoryEventsShrinkRequest = DescribeHistoryEventsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.eventLevels)) {
            request.eventLevelsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventLevels, "EventLevels", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.eventStatus)) {
            request.eventStatusShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventStatus, "EventStatus", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.eventTypes)) {
            request.eventTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventTypes, "EventTypes", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.resourceIds)) {
            request.resourceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceIds, "ResourceIds", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventLevelsShrink)) {
            query["EventLevels"] = request.eventLevelsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventStatusShrink)) {
            query["EventStatus"] = request.eventStatusShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventTypesShrink)) {
            query["EventTypes"] = request.eventTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsShrink)) {
            query["ResourceIds"] = request.resourceIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHistoryEvents",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHistoryEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHistoryEvents(_ request: DescribeHistoryEventsRequest) async throws -> DescribeHistoryEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHistoryEventsWithOptions(request as! DescribeHistoryEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImageInfosWithOptions(_ request: DescribeImageInfosRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeImageInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.osType)) {
            query["OsType"] = request.osType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeImageInfos",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeImageInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImageInfos(_ request: DescribeImageInfosRequest) async throws -> DescribeImageInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeImageInfosWithOptions(request as! DescribeImageInfosRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImageSharePermissionWithOptions(_ request: DescribeImageSharePermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeImageSharePermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunId)) {
            query["AliyunId"] = request.aliyunId!;
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeImageSharePermission",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeImageSharePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImageSharePermission(_ request: DescribeImageSharePermissionRequest) async throws -> DescribeImageSharePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeImageSharePermissionWithOptions(request as! DescribeImageSharePermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImagesWithOptions(_ request: DescribeImagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeImagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            query["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeImages",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeImagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImages(_ request: DescribeImagesRequest) async throws -> DescribeImagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeImagesWithOptions(request as! DescribeImagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceAutoRenewAttributeWithOptions(_ request: DescribeInstanceAutoRenewAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceAutoRenewAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceAutoRenewAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceAutoRenewAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceAutoRenewAttribute(_ request: DescribeInstanceAutoRenewAttributeRequest) async throws -> DescribeInstanceAutoRenewAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceAutoRenewAttributeWithOptions(request as! DescribeInstanceAutoRenewAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceBandwidthDetailWithOptions(_ request: DescribeInstanceBandwidthDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceBandwidthDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceBandwidthDetail",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceBandwidthDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceBandwidthDetail(_ request: DescribeInstanceBandwidthDetailRequest) async throws -> DescribeInstanceBandwidthDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceBandwidthDetailWithOptions(request as! DescribeInstanceBandwidthDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceBootConfigurationWithOptions(_ request: DescribeInstanceBootConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceBootConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bootSet)) {
            query["BootSet"] = request.bootSet ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bootType)) {
            query["BootType"] = request.bootType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskSet)) {
            query["DiskSet"] = request.diskSet ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceBootConfiguration",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceBootConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceBootConfiguration(_ request: DescribeInstanceBootConfigurationRequest) async throws -> DescribeInstanceBootConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceBootConfigurationWithOptions(request as! DescribeInstanceBootConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceMonitorDataWithOptions(_ request: DescribeInstanceMonitorDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceMonitorDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceMonitorData",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceMonitorDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceMonitorData(_ request: DescribeInstanceMonitorDataRequest) async throws -> DescribeInstanceMonitorDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceMonitorDataWithOptions(request as! DescribeInstanceMonitorDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceSDGStatusWithOptions(_ tmpReq: DescribeInstanceSDGStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceSDGStatusResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeInstanceSDGStatusShrinkRequest = DescribeInstanceSDGStatusShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.SDGIds)) {
            request.SDGIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.SDGIds, "SDGIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceSDGStatus",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceSDGStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceSDGStatus(_ request: DescribeInstanceSDGStatusRequest) async throws -> DescribeInstanceSDGStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceSDGStatusWithOptions(request as! DescribeInstanceSDGStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceSpecWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceSpecResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceSpec",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceSpecResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceSpec() async throws -> DescribeInstanceSpecResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceSpecWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceTypesWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceTypesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceTypes",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceTypes() async throws -> DescribeInstanceTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceTypesWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceVncUrlWithOptions(_ request: DescribeInstanceVncUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceVncUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceVncUrl",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceVncUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceVncUrl(_ request: DescribeInstanceVncUrlRequest) async throws -> DescribeInstanceVncUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceVncUrlWithOptions(request as! DescribeInstanceVncUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstancesWithOptions(_ tmpReq: DescribeInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeInstancesShrinkRequest = DescribeInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.eipAddresses)) {
            request.eipAddressesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eipAddresses, "EipAddresses", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.serviceStatus)) {
            request.serviceStatusShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.serviceStatus, "ServiceStatus", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eipAddressesShrink)) {
            query["EipAddresses"] = request.eipAddressesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionIds)) {
            query["EnsRegionIds"] = request.ensRegionIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensServiceId)) {
            query["EnsServiceId"] = request.ensServiceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceResourceType)) {
            query["InstanceResourceType"] = request.instanceResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intranetIp)) {
            query["IntranetIp"] = request.intranetIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkId)) {
            query["NetworkId"] = request.networkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderByParams)) {
            query["OrderByParams"] = request.orderByParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            query["SearchKey"] = request.searchKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceStatusShrink)) {
            query["ServiceStatus"] = request.serviceStatusShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstances",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstances(_ request: DescribeInstancesRequest) async throws -> DescribeInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstancesWithOptions(request as! DescribeInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeKeyPairsWithOptions(_ request: DescribeKeyPairsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeKeyPairsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyPairId)) {
            query["KeyPairId"] = request.keyPairId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeKeyPairs",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeKeyPairsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeKeyPairs(_ request: DescribeKeyPairsRequest) async throws -> DescribeKeyPairsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeKeyPairsWithOptions(request as! DescribeKeyPairsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerAttributeWithOptions(_ request: DescribeLoadBalancerAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLoadBalancerAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLoadBalancerAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLoadBalancerAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerAttribute(_ request: DescribeLoadBalancerAttributeRequest) async throws -> DescribeLoadBalancerAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLoadBalancerAttributeWithOptions(request as! DescribeLoadBalancerAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerHTTPListenerAttributeWithOptions(_ request: DescribeLoadBalancerHTTPListenerAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLoadBalancerHTTPListenerAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLoadBalancerHTTPListenerAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLoadBalancerHTTPListenerAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerHTTPListenerAttribute(_ request: DescribeLoadBalancerHTTPListenerAttributeRequest) async throws -> DescribeLoadBalancerHTTPListenerAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLoadBalancerHTTPListenerAttributeWithOptions(request as! DescribeLoadBalancerHTTPListenerAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerHTTPSListenerAttributeWithOptions(_ request: DescribeLoadBalancerHTTPSListenerAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLoadBalancerHTTPSListenerAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLoadBalancerHTTPSListenerAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLoadBalancerHTTPSListenerAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerHTTPSListenerAttribute(_ request: DescribeLoadBalancerHTTPSListenerAttributeRequest) async throws -> DescribeLoadBalancerHTTPSListenerAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLoadBalancerHTTPSListenerAttributeWithOptions(request as! DescribeLoadBalancerHTTPSListenerAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerListenMonitorWithOptions(_ request: DescribeLoadBalancerListenMonitorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLoadBalancerListenMonitorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLoadBalancerListenMonitor",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLoadBalancerListenMonitorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerListenMonitor(_ request: DescribeLoadBalancerListenMonitorRequest) async throws -> DescribeLoadBalancerListenMonitorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLoadBalancerListenMonitorWithOptions(request as! DescribeLoadBalancerListenMonitorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerListenersWithOptions(_ request: DescribeLoadBalancerListenersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLoadBalancerListenersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLoadBalancerListeners",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLoadBalancerListenersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerListeners(_ request: DescribeLoadBalancerListenersRequest) async throws -> DescribeLoadBalancerListenersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLoadBalancerListenersWithOptions(request as! DescribeLoadBalancerListenersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerSpecWithOptions(_ request: DescribeLoadBalancerSpecRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLoadBalancerSpecResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLoadBalancerSpec",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLoadBalancerSpecResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerSpec(_ request: DescribeLoadBalancerSpecRequest) async throws -> DescribeLoadBalancerSpecResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLoadBalancerSpecWithOptions(request as! DescribeLoadBalancerSpecRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerTCPListenerAttributeWithOptions(_ request: DescribeLoadBalancerTCPListenerAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLoadBalancerTCPListenerAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLoadBalancerTCPListenerAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLoadBalancerTCPListenerAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerTCPListenerAttribute(_ request: DescribeLoadBalancerTCPListenerAttributeRequest) async throws -> DescribeLoadBalancerTCPListenerAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLoadBalancerTCPListenerAttributeWithOptions(request as! DescribeLoadBalancerTCPListenerAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerUDPListenerAttributeWithOptions(_ request: DescribeLoadBalancerUDPListenerAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLoadBalancerUDPListenerAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLoadBalancerUDPListenerAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLoadBalancerUDPListenerAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancerUDPListenerAttribute(_ request: DescribeLoadBalancerUDPListenerAttributeRequest) async throws -> DescribeLoadBalancerUDPListenerAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLoadBalancerUDPListenerAttributeWithOptions(request as! DescribeLoadBalancerUDPListenerAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancersWithOptions(_ request: DescribeLoadBalancersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLoadBalancersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLoadBalancers",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLoadBalancersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLoadBalancers(_ request: DescribeLoadBalancersRequest) async throws -> DescribeLoadBalancersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLoadBalancersWithOptions(request as! DescribeLoadBalancersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMeasurementDataWithOptions(_ request: DescribeMeasurementDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMeasurementDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMeasurementData",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMeasurementDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMeasurementData(_ request: DescribeMeasurementDataRequest) async throws -> DescribeMeasurementDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMeasurementDataWithOptions(request as! DescribeMeasurementDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMountTargetsWithOptions(_ request: DescribeMountTargetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMountTargetsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileSystemId)) {
            query["FileSystemId"] = request.fileSystemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountTargetName)) {
            query["MountTargetName"] = request.mountTargetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMountTargets",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMountTargetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMountTargets(_ request: DescribeMountTargetsRequest) async throws -> DescribeMountTargetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMountTargetsWithOptions(request as! DescribeMountTargetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNASAvailableResourceInfoWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNASAvailableResourceInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNASAvailableResourceInfo",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNASAvailableResourceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNASAvailableResourceInfo() async throws -> DescribeNASAvailableResourceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNASAvailableResourceInfoWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNCInformationWithOptions(_ request: DescribeNCInformationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNCInformationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNCInformation",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNCInformationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNCInformation(_ request: DescribeNCInformationRequest) async throws -> DescribeNCInformationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNCInformationWithOptions(request as! DescribeNCInformationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNatGatewaysWithOptions(_ request: DescribeNatGatewaysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNatGatewaysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNatGateways",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNatGatewaysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNatGateways(_ request: DescribeNatGatewaysRequest) async throws -> DescribeNatGatewaysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNatGatewaysWithOptions(request as! DescribeNatGatewaysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworkAclsWithOptions(_ request: DescribeNetworkAclsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNetworkAclsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkAclId)) {
            query["NetworkAclId"] = request.networkAclId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkAclName)) {
            query["NetworkAclName"] = request.networkAclName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNetworkAcls",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNetworkAclsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworkAcls(_ request: DescribeNetworkAclsRequest) async throws -> DescribeNetworkAclsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNetworkAclsWithOptions(request as! DescribeNetworkAclsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworkAttributeWithOptions(_ request: DescribeNetworkAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNetworkAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkId)) {
            query["NetworkId"] = request.networkId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNetworkAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNetworkAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworkAttribute(_ request: DescribeNetworkAttributeRequest) async throws -> DescribeNetworkAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNetworkAttributeWithOptions(request as! DescribeNetworkAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworkInterfacesWithOptions(_ request: DescribeNetworkInterfacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNetworkInterfacesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionIds)) {
            query["EnsRegionIds"] = request.ensRegionIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipv6Address)) {
            query["Ipv6Address"] = request.ipv6Address ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.networkId)) {
            query["NetworkId"] = request.networkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            query["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceIds)) {
            query["NetworkInterfaceIds"] = request.networkInterfaceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceName)) {
            query["NetworkInterfaceName"] = request.networkInterfaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryIpAddress)) {
            query["PrimaryIpAddress"] = request.primaryIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNetworkInterfaces",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNetworkInterfacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworkInterfaces(_ request: DescribeNetworkInterfacesRequest) async throws -> DescribeNetworkInterfacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNetworkInterfacesWithOptions(request as! DescribeNetworkInterfacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworksWithOptions(_ request: DescribeNetworksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNetworksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionIds)) {
            query["EnsRegionIds"] = request.ensRegionIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.networkId)) {
            query["NetworkId"] = request.networkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkIds)) {
            query["NetworkIds"] = request.networkIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.networkName)) {
            query["NetworkName"] = request.networkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNetworks",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNetworksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworks(_ request: DescribeNetworksRequest) async throws -> DescribeNetworksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNetworksWithOptions(request as! DescribeNetworksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePrePaidInstanceStockWithOptions(_ request: DescribePrePaidInstanceStockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePrePaidInstanceStockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataDiskSize)) {
            query["DataDiskSize"] = request.dataDiskSize!;
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceSpec)) {
            query["InstanceSpec"] = request.instanceSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemDiskSize)) {
            query["SystemDiskSize"] = request.systemDiskSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePrePaidInstanceStock",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePrePaidInstanceStockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePrePaidInstanceStock(_ request: DescribePrePaidInstanceStockRequest) async throws -> DescribePrePaidInstanceStockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePrePaidInstanceStockWithOptions(request as! DescribePrePaidInstanceStockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePriceWithOptions(_ tmpReq: DescribePriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePriceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribePriceShrinkRequest = DescribePriceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataDisks)) {
            request.dataDisksShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataDisks, "DataDisks", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataDisksShrink)) {
            query["DataDisks"] = request.dataDisksShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetChargeType)) {
            query["InternetChargeType"] = request.internetChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quantity)) {
            query["Quantity"] = request.quantity!;
        }
        if (!TeaUtils.Client.isUnset(request.dataDisk)) {
            query["DataDisk"] = request.dataDisk ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.systemDisk)) {
            query["SystemDisk"] = request.systemDisk!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePrice",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePrice(_ request: DescribePriceRequest) async throws -> DescribePriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePriceWithOptions(request as! DescribePriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionIspsWithOptions(_ request: DescribeRegionIspsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionIspsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegionIsps",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionIspsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionIsps(_ request: DescribeRegionIspsRequest) async throws -> DescribeRegionIspsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRegionIspsWithOptions(request as! DescribeRegionIspsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionResourceWithOptions(_ request: DescribeRegionResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegionResource",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionResource(_ request: DescribeRegionResourceRequest) async throws -> DescribeRegionResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRegionResourceWithOptions(request as! DescribeRegionResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeReservedResourceWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeReservedResourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeReservedResource",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeReservedResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeReservedResource() async throws -> DescribeReservedResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeReservedResourceWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceTimelineWithOptions(_ request: DescribeResourceTimelineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceTimelineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceTimeline",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceTimelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceTimeline(_ request: DescribeResourceTimelineRequest) async throws -> DescribeResourceTimelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourceTimelineWithOptions(request as! DescribeResourceTimelineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSDGWithOptions(_ tmpReq: DescribeSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeSDGShrinkRequest = DescribeSDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.SDGIds)) {
            request.SDGIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.SDGIds, "SDGIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.SDGIdsShrink)) {
            query["SDGIds"] = request.SDGIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSDG(_ request: DescribeSDGRequest) async throws -> DescribeSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSDGWithOptions(request as! DescribeSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSDGDeploymentStatusWithOptions(_ tmpReq: DescribeSDGDeploymentStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSDGDeploymentStatusResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeSDGDeploymentStatusShrinkRequest = DescribeSDGDeploymentStatusShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.diskIds)) {
            request.diskIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.diskIds, "DiskIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.regionIds)) {
            request.regionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.regionIds, "RegionIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deploymentType)) {
            query["DeploymentType"] = request.deploymentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskIdsShrink)) {
            query["DiskIds"] = request.diskIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsShrink)) {
            query["RegionIds"] = request.regionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SDGId)) {
            query["SDGId"] = request.SDGId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSDGDeploymentStatus",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSDGDeploymentStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSDGDeploymentStatus(_ request: DescribeSDGDeploymentStatusRequest) async throws -> DescribeSDGDeploymentStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSDGDeploymentStatusWithOptions(request as! DescribeSDGDeploymentStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSDGSharedDisksWithOptions(_ request: DescribeSDGSharedDisksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSDGSharedDisksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["Namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sdgId)) {
            query["SdgId"] = request.sdgId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSDGSharedDisks",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSDGSharedDisksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSDGSharedDisks(_ request: DescribeSDGSharedDisksRequest) async throws -> DescribeSDGSharedDisksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSDGSharedDisksWithOptions(request as! DescribeSDGSharedDisksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSDGsWithOptions(_ tmpReq: DescribeSDGsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSDGsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeSDGsShrinkRequest = DescribeSDGsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.SDGIds)) {
            request.SDGIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.SDGIds, "SDGIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SDGIdsShrink)) {
            query["SDGIds"] = request.SDGIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSDGs",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSDGsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSDGs(_ request: DescribeSDGsRequest) async throws -> DescribeSDGsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSDGsWithOptions(request as! DescribeSDGsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecondaryPublicIpAddressesWithOptions(_ request: DescribeSecondaryPublicIpAddressesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecondaryPublicIpAddressesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionIds)) {
            query["EnsRegionIds"] = request.ensRegionIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.isp)) {
            query["Isp"] = request.isp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.secondaryPublicIpAddress)) {
            query["SecondaryPublicIpAddress"] = request.secondaryPublicIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryPublicIpId)) {
            query["SecondaryPublicIpId"] = request.secondaryPublicIpId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecondaryPublicIpAddresses",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecondaryPublicIpAddressesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecondaryPublicIpAddresses(_ request: DescribeSecondaryPublicIpAddressesRequest) async throws -> DescribeSecondaryPublicIpAddressesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecondaryPublicIpAddressesWithOptions(request as! DescribeSecondaryPublicIpAddressesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityGroupAttributeWithOptions(_ request: DescribeSecurityGroupAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityGroupAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityGroupAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityGroupAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityGroupAttribute(_ request: DescribeSecurityGroupAttributeRequest) async throws -> DescribeSecurityGroupAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityGroupAttributeWithOptions(request as! DescribeSecurityGroupAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityGroupsWithOptions(_ request: DescribeSecurityGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupName)) {
            query["SecurityGroupName"] = request.securityGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityGroups",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityGroups(_ request: DescribeSecurityGroupsRequest) async throws -> DescribeSecurityGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityGroupsWithOptions(request as! DescribeSecurityGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSelfImagesWithOptions(_ request: DescribeSelfImagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSelfImagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            query["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSelfImages",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSelfImagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSelfImages(_ request: DescribeSelfImagesRequest) async throws -> DescribeSelfImagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSelfImagesWithOptions(request as! DescribeSelfImagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServcieScheduleWithOptions(_ request: DescribeServcieScheduleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServcieScheduleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.podConfigName)) {
            query["PodConfigName"] = request.podConfigName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServcieSchedule",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServcieScheduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServcieSchedule(_ request: DescribeServcieScheduleRequest) async throws -> DescribeServcieScheduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServcieScheduleWithOptions(request as! DescribeServcieScheduleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServerLoadBalancerListenMonitorWithOptions(_ request: DescribeServerLoadBalancerListenMonitorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServerLoadBalancerListenMonitorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServerLoadBalancerListenMonitor",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServerLoadBalancerListenMonitorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServerLoadBalancerListenMonitor(_ request: DescribeServerLoadBalancerListenMonitorRequest) async throws -> DescribeServerLoadBalancerListenMonitorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServerLoadBalancerListenMonitorWithOptions(request as! DescribeServerLoadBalancerListenMonitorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServerLoadBalancerMonitorWithOptions(_ request: DescribeServerLoadBalancerMonitorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServerLoadBalancerMonitorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServerLoadBalancerMonitor",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServerLoadBalancerMonitorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServerLoadBalancerMonitor(_ request: DescribeServerLoadBalancerMonitorRequest) async throws -> DescribeServerLoadBalancerMonitorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServerLoadBalancerMonitorWithOptions(request as! DescribeServerLoadBalancerMonitorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSnapshotsWithOptions(_ request: DescribeSnapshotsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSnapshotsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diskId)) {
            query["DiskId"] = request.diskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionIds)) {
            query["EnsRegionIds"] = request.ensRegionIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotName)) {
            query["SnapshotName"] = request.snapshotName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSnapshots",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSnapshotsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSnapshots(_ request: DescribeSnapshotsRequest) async throws -> DescribeSnapshotsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSnapshotsWithOptions(request as! DescribeSnapshotsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSnatAttributeWithOptions(_ request: DescribeSnatAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSnatAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.snatEntryId)) {
            query["SnatEntryId"] = request.snatEntryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSnatAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSnatAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSnatAttribute(_ request: DescribeSnatAttributeRequest) async throws -> DescribeSnatAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSnatAttributeWithOptions(request as! DescribeSnatAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSnatTableEntriesWithOptions(_ request: DescribeSnatTableEntriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSnatTableEntriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSnatTableEntries",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSnatTableEntriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSnatTableEntries(_ request: DescribeSnatTableEntriesRequest) async throws -> DescribeSnatTableEntriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSnatTableEntriesWithOptions(request as! DescribeSnatTableEntriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStorageGatewayWithOptions(_ request: DescribeStorageGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeStorageGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayType)) {
            query["GatewayType"] = request.gatewayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeStorageGateway",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeStorageGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStorageGateway(_ request: DescribeStorageGatewayRequest) async throws -> DescribeStorageGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeStorageGatewayWithOptions(request as! DescribeStorageGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStorageVolumeWithOptions(_ request: DescribeStorageVolumeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeStorageVolumeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isEnable)) {
            query["IsEnable"] = request.isEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.storageId)) {
            query["StorageId"] = request.storageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volumeId)) {
            query["VolumeId"] = request.volumeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeStorageVolume",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeStorageVolumeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStorageVolume(_ request: DescribeStorageVolumeRequest) async throws -> DescribeStorageVolumeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeStorageVolumeWithOptions(request as! DescribeStorageVolumeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserBandWidthDataWithOptions(_ request: DescribeUserBandWidthDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserBandWidthDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isp)) {
            query["Isp"] = request.isp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserBandWidthData",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserBandWidthDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserBandWidthData(_ request: DescribeUserBandWidthDataRequest) async throws -> DescribeUserBandWidthDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserBandWidthDataWithOptions(request as! DescribeUserBandWidthDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVSwitchAttributesWithOptions(_ request: DescribeVSwitchAttributesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVSwitchAttributesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVSwitchAttributes",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVSwitchAttributesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVSwitchAttributes(_ request: DescribeVSwitchAttributesRequest) async throws -> DescribeVSwitchAttributesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVSwitchAttributesWithOptions(request as! DescribeVSwitchAttributesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVSwitchesWithOptions(_ request: DescribeVSwitchesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVSwitchesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionIds)) {
            query["EnsRegionIds"] = request.ensRegionIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.networkId)) {
            query["NetworkId"] = request.networkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchIds)) {
            query["VSwitchIds"] = request.vSwitchIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchName)) {
            query["VSwitchName"] = request.vSwitchName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVSwitches",
            "version": "2017-11-10",
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
    public func detachDiskWithOptions(_ request: DetachDiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachDiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diskId)) {
            query["DiskId"] = request.diskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachDisk",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachDiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachDisk(_ request: DetachDiskRequest) async throws -> DetachDiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachDiskWithOptions(request as! DetachDiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachInstanceSDGWithOptions(_ tmpReq: DetachInstanceSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachInstanceSDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DetachInstanceSDGShrinkRequest = DetachInstanceSDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SDGId)) {
            query["SDGId"] = request.SDGId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachInstanceSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachInstanceSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachInstanceSDG(_ request: DetachInstanceSDGRequest) async throws -> DetachInstanceSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachInstanceSDGWithOptions(request as! DetachInstanceSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachNetworkInterfaceWithOptions(_ request: DetachNetworkInterfaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachNetworkInterfaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            query["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachNetworkInterface",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachNetworkInterfaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachNetworkInterface(_ request: DetachNetworkInterfaceRequest) async throws -> DetachNetworkInterfaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachNetworkInterfaceWithOptions(request as! DetachNetworkInterfaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func distApplicationDataWithOptions(_ request: DistApplicationDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DistApplicationDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distStrategy)) {
            query["DistStrategy"] = request.distStrategy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DistApplicationData",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DistApplicationDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func distApplicationData(_ request: DistApplicationDataRequest) async throws -> DistApplicationDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await distApplicationDataWithOptions(request as! DistApplicationDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func eventMigrateInstanceWithOptions(_ request: EventMigrateInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EventMigrateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataPolicy)) {
            query["DataPolicy"] = request.dataPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            query["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opsType)) {
            query["OpsType"] = request.opsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planTime)) {
            query["PlanTime"] = request.planTime!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EventMigrateInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EventMigrateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func eventMigrateInstance(_ request: EventMigrateInstanceRequest) async throws -> EventMigrateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await eventMigrateInstanceWithOptions(request as! EventMigrateInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func eventRebootInstanceWithOptions(_ request: EventRebootInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EventRebootInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            query["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opsType)) {
            query["OpsType"] = request.opsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planTime)) {
            query["PlanTime"] = request.planTime!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EventRebootInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EventRebootInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func eventRebootInstance(_ request: EventRebootInstanceRequest) async throws -> EventRebootInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await eventRebootInstanceWithOptions(request as! EventRebootInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func eventRedeployInstanceWithOptions(_ request: EventRedeployInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EventRedeployInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            query["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opsType)) {
            query["OpsType"] = request.opsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planTime)) {
            query["PlanTime"] = request.planTime!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EventRedeployInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EventRedeployInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func eventRedeployInstance(_ request: EventRedeployInstanceRequest) async throws -> EventRedeployInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await eventRedeployInstanceWithOptions(request as! EventRedeployInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportBillDetailDataWithOptions(_ request: ExportBillDetailDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportBillDetailDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportBillDetailData",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportBillDetailDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportBillDetailData(_ request: ExportBillDetailDataRequest) async throws -> ExportBillDetailDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await exportBillDetailDataWithOptions(request as! ExportBillDetailDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportImageWithOptions(_ request: ExportImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSSBucket)) {
            query["OSSBucket"] = request.OSSBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSSPrefix)) {
            query["OSSPrefix"] = request.OSSPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSSRegionId)) {
            query["OSSRegionId"] = request.OSSRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            query["RoleName"] = request.roleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportImage",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportImage(_ request: ExportImageRequest) async throws -> ExportImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await exportImageWithOptions(request as! ExportImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportMeasurementDataWithOptions(_ request: ExportMeasurementDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportMeasurementDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportMeasurementData",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportMeasurementDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportMeasurementData(_ request: ExportMeasurementDataRequest) async throws -> ExportMeasurementDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await exportMeasurementDataWithOptions(request as! ExportMeasurementDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBucketAclWithOptions(_ request: GetBucketAclRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBucketAclResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBucketAcl",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBucketAclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBucketAcl(_ request: GetBucketAclRequest) async throws -> GetBucketAclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBucketAclWithOptions(request as! GetBucketAclRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBucketInfoWithOptions(_ request: GetBucketInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBucketInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBucketInfo",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBucketInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBucketInfo(_ request: GetBucketInfoRequest) async throws -> GetBucketInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBucketInfoWithOptions(request as! GetBucketInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBucketLifecycleWithOptions(_ request: GetBucketLifecycleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBucketLifecycleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBucketLifecycle",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBucketLifecycleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBucketLifecycle(_ request: GetBucketLifecycleRequest) async throws -> GetBucketLifecycleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBucketLifecycleWithOptions(request as! GetBucketLifecycleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOssStorageAndAccByBucketsWithOptions(_ request: GetOssStorageAndAccByBucketsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOssStorageAndAccByBucketsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOssStorageAndAccByBuckets",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOssStorageAndAccByBucketsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOssStorageAndAccByBuckets(_ request: GetOssStorageAndAccByBucketsRequest) async throws -> GetOssStorageAndAccByBucketsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOssStorageAndAccByBucketsWithOptions(request as! GetOssStorageAndAccByBucketsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOssUsageDataWithOptions(_ request: GetOssUsageDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOssUsageDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOssUsageData",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOssUsageDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOssUsageData(_ request: GetOssUsageDataRequest) async throws -> GetOssUsageDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOssUsageDataWithOptions(request as! GetOssUsageDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importImageWithOptions(_ tmpReq: ImportImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportImageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ImportImageShrinkRequest = ImportImageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.diskDeviceMapping)) {
            request.diskDeviceMappingShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.diskDeviceMapping, "DiskDeviceMapping", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.architecture)) {
            query["Architecture"] = request.architecture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.computeType)) {
            query["ComputeType"] = request.computeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskDeviceMappingShrink)) {
            query["DiskDeviceMapping"] = request.diskDeviceMappingShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageFormat)) {
            query["ImageFormat"] = request.imageFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            query["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.licenseType)) {
            query["LicenseType"] = request.licenseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSSBucket)) {
            query["OSSBucket"] = request.OSSBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSSObject)) {
            query["OSSObject"] = request.OSSObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSSRegion)) {
            query["OSSRegion"] = request.OSSRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSType)) {
            query["OSType"] = request.OSType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSVersion)) {
            query["OSVersion"] = request.OSVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            query["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetOSSRegionId)) {
            query["TargetOSSRegionId"] = request.targetOSSRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportImage",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importImage(_ request: ImportImageRequest) async throws -> ImportImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await importImageWithOptions(request as! ImportImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importKeyPairWithOptions(_ request: ImportKeyPairRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportKeyPairResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicKeyBody)) {
            query["PublicKeyBody"] = request.publicKeyBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportKeyPair",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportKeyPairResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importKeyPair(_ request: ImportKeyPairRequest) async throws -> ImportKeyPairResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await importKeyPairWithOptions(request as! ImportKeyPairRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func joinPublicIpsToEpnInstanceWithOptions(_ request: JoinPublicIpsToEpnInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> JoinPublicIpsToEpnInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.EPNInstanceId)) {
            query["EPNInstanceId"] = request.EPNInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceInfos)) {
            query["InstanceInfos"] = request.instanceInfos ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "JoinPublicIpsToEpnInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(JoinPublicIpsToEpnInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func joinPublicIpsToEpnInstance(_ request: JoinPublicIpsToEpnInstanceRequest) async throws -> JoinPublicIpsToEpnInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await joinPublicIpsToEpnInstanceWithOptions(request as! JoinPublicIpsToEpnInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func joinSecurityGroupWithOptions(_ request: JoinSecurityGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> JoinSecurityGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            query["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "JoinSecurityGroup",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(JoinSecurityGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func joinSecurityGroup(_ request: JoinSecurityGroupRequest) async throws -> JoinSecurityGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await joinSecurityGroupWithOptions(request as! JoinSecurityGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func joinVSwitchesToEpnInstanceWithOptions(_ request: JoinVSwitchesToEpnInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> JoinVSwitchesToEpnInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.EPNInstanceId)) {
            query["EPNInstanceId"] = request.EPNInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchesInfo)) {
            query["VSwitchesInfo"] = request.vSwitchesInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "JoinVSwitchesToEpnInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(JoinVSwitchesToEpnInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func joinVSwitchesToEpnInstance(_ request: JoinVSwitchesToEpnInstanceRequest) async throws -> JoinVSwitchesToEpnInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await joinVSwitchesToEpnInstanceWithOptions(request as! JoinVSwitchesToEpnInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func leaveSecurityGroupWithOptions(_ request: LeaveSecurityGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LeaveSecurityGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            query["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LeaveSecurityGroup",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LeaveSecurityGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func leaveSecurityGroup(_ request: LeaveSecurityGroupRequest) async throws -> LeaveSecurityGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await leaveSecurityGroupWithOptions(request as! LeaveSecurityGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAICPublicKeyDeliveriesWithOptions(_ request: ListAICPublicKeyDeliveriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAICPublicKeyDeliveriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyGroup)) {
            query["KeyGroup"] = request.keyGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyName)) {
            query["KeyName"] = request.keyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyType)) {
            query["KeyType"] = request.keyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAICPublicKeyDeliveries",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAICPublicKeyDeliveriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAICPublicKeyDeliveries(_ request: ListAICPublicKeyDeliveriesRequest) async throws -> ListAICPublicKeyDeliveriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAICPublicKeyDeliveriesWithOptions(request as! ListAICPublicKeyDeliveriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAICPublicKeysWithOptions(_ request: ListAICPublicKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAICPublicKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyGroup)) {
            query["KeyGroup"] = request.keyGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyName)) {
            query["KeyName"] = request.keyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyType)) {
            query["KeyType"] = request.keyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAICPublicKeys",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAICPublicKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAICPublicKeys(_ request: ListAICPublicKeysRequest) async throws -> ListAICPublicKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAICPublicKeysWithOptions(request as! ListAICPublicKeysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAddonsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListAddonsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAddons",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAddonsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAddons() async throws -> ListAddonsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAddonsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationsWithOptions(_ request: ListApplicationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApplicationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersions)) {
            query["AppVersions"] = request.appVersions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterNames)) {
            query["ClusterNames"] = request.clusterNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            query["Level"] = request.level ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxDate)) {
            query["MaxDate"] = request.maxDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minDate)) {
            query["MinDate"] = request.minDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outAppInfoParams)) {
            query["OutAppInfoParams"] = request.outAppInfoParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApplications",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApplicationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplications(_ request: ListApplicationsRequest) async throws -> ListApplicationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApplicationsWithOptions(request as! ListApplicationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBucketsWithOptions(_ request: ListBucketsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBucketsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["Prefix"] = request.prefix_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBuckets",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBucketsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBuckets(_ request: ListBucketsRequest) async throws -> ListBucketsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listBucketsWithOptions(request as! ListBucketsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterAddonInstancesWithOptions(_ request: ListClusterAddonInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClusterAddonInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClusterAddonInstances",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClusterAddonInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterAddonInstances(_ request: ListClusterAddonInstancesRequest) async throws -> ListClusterAddonInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listClusterAddonInstancesWithOptions(request as! ListClusterAddonInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listObjectsWithOptions(_ request: ListObjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListObjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.continuationToken)) {
            query["ContinuationToken"] = request.continuationToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encodingType)) {
            query["EncodingType"] = request.encodingType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["Marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxKeys)) {
            query["MaxKeys"] = request.maxKeys!;
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["Prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startAfter)) {
            query["StartAfter"] = request.startAfter ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListObjects",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListObjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listObjects(_ request: ListObjectsRequest) async throws -> ListObjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listObjectsWithOptions(request as! ListObjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductAbilitiesWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductAbilitiesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductAbilities",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductAbilitiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductAbilities() async throws -> ListProductAbilitiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProductAbilitiesWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
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
            "version": "2017-11-10",
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
    public func manageAICLoginWithOptions(_ request: ManageAICLoginRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ManageAICLoginResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionName)) {
            query["ActionName"] = request.actionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyGroup)) {
            query["KeyGroup"] = request.keyGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyName)) {
            query["KeyName"] = request.keyName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ManageAICLogin",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ManageAICLoginResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func manageAICLogin(_ request: ManageAICLoginRequest) async throws -> ManageAICLoginResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await manageAICLoginWithOptions(request as! ManageAICLoginRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEnsEipAddressAttributeWithOptions(_ request: ModifyEnsEipAddressAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyEnsEipAddressAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allocationId)) {
            query["AllocationId"] = request.allocationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bandwidth)) {
            query["Bandwidth"] = request.bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyEnsEipAddressAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyEnsEipAddressAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEnsEipAddressAttribute(_ request: ModifyEnsEipAddressAttributeRequest) async throws -> ModifyEnsEipAddressAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyEnsEipAddressAttributeWithOptions(request as! ModifyEnsEipAddressAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEnsRouteEntryWithOptions(_ request: ModifyEnsRouteEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyEnsRouteEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeEntryId)) {
            query["RouteEntryId"] = request.routeEntryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeEntryName)) {
            query["RouteEntryName"] = request.routeEntryName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyEnsRouteEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyEnsRouteEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEnsRouteEntry(_ request: ModifyEnsRouteEntryRequest) async throws -> ModifyEnsRouteEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyEnsRouteEntryWithOptions(request as! ModifyEnsRouteEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEpnInstanceWithOptions(_ request: ModifyEpnInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyEpnInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.EPNInstanceId)) {
            query["EPNInstanceId"] = request.EPNInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.EPNInstanceName)) {
            query["EPNInstanceName"] = request.EPNInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetMaxBandwidthOut)) {
            query["InternetMaxBandwidthOut"] = request.internetMaxBandwidthOut!;
        }
        if (!TeaUtils.Client.isUnset(request.networkingModel)) {
            query["NetworkingModel"] = request.networkingModel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyEpnInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyEpnInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEpnInstance(_ request: ModifyEpnInstanceRequest) async throws -> ModifyEpnInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyEpnInstanceWithOptions(request as! ModifyEpnInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyFileSystemWithOptions(_ request: ModifyFileSystemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyFileSystemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileSystemId)) {
            query["FileSystemId"] = request.fileSystemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyFileSystem",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyFileSystemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyFileSystem(_ request: ModifyFileSystemRequest) async throws -> ModifyFileSystemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyFileSystemWithOptions(request as! ModifyFileSystemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyForwardEntryWithOptions(_ request: ModifyForwardEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyForwardEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.externalIp)) {
            query["ExternalIp"] = request.externalIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalPort)) {
            query["ExternalPort"] = request.externalPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forwardEntryId)) {
            query["ForwardEntryId"] = request.forwardEntryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forwardEntryName)) {
            query["ForwardEntryName"] = request.forwardEntryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckPort)) {
            query["HealthCheckPort"] = request.healthCheckPort!;
        }
        if (!TeaUtils.Client.isUnset(request.internalIp)) {
            query["InternalIp"] = request.internalIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internalPort)) {
            query["InternalPort"] = request.internalPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipProtocol)) {
            query["IpProtocol"] = request.ipProtocol ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyForwardEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyForwardEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyForwardEntry(_ request: ModifyForwardEntryRequest) async throws -> ModifyForwardEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyForwardEntryWithOptions(request as! ModifyForwardEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHaVipAttributeWithOptions(_ request: ModifyHaVipAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHaVipAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.haVipId)) {
            query["HaVipId"] = request.haVipId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHaVipAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHaVipAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHaVipAttribute(_ request: ModifyHaVipAttributeRequest) async throws -> ModifyHaVipAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHaVipAttributeWithOptions(request as! ModifyHaVipAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyImageAttributeWithOptions(_ request: ModifyImageAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyImageAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            query["ImageName"] = request.imageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyImageAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyImageAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyImageAttribute(_ request: ModifyImageAttributeRequest) async throws -> ModifyImageAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyImageAttributeWithOptions(request as! ModifyImageAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyImageSharePermissionWithOptions(_ request: ModifyImageSharePermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyImageSharePermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addAccounts)) {
            query["AddAccounts"] = request.addAccounts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.removeAccounts)) {
            query["RemoveAccounts"] = request.removeAccounts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyImageSharePermission",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyImageSharePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyImageSharePermission(_ request: ModifyImageSharePermissionRequest) async throws -> ModifyImageSharePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyImageSharePermissionWithOptions(request as! ModifyImageSharePermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceAttributeWithOptions(_ request: ModifyInstanceAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deletionProtection)) {
            query["DeletionProtection"] = request.deletionProtection!;
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceAttribute(_ request: ModifyInstanceAttributeRequest) async throws -> ModifyInstanceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceAttributeWithOptions(request as! ModifyInstanceAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceAutoRenewAttributeWithOptions(_ request: ModifyInstanceAutoRenewAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceAutoRenewAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewalStatus)) {
            query["RenewalStatus"] = request.renewalStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceAutoRenewAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceAutoRenewAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceAutoRenewAttribute(_ request: ModifyInstanceAutoRenewAttributeRequest) async throws -> ModifyInstanceAutoRenewAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceAutoRenewAttributeWithOptions(request as! ModifyInstanceAutoRenewAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceBootConfigurationWithOptions(_ request: ModifyInstanceBootConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceBootConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceBootConfiguration",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceBootConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceBootConfiguration(_ request: ModifyInstanceBootConfigurationRequest) async throws -> ModifyInstanceBootConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceBootConfigurationWithOptions(request as! ModifyInstanceBootConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceChargeTypeWithOptions(_ tmpReq: ModifyInstanceChargeTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceChargeTypeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyInstanceChargeTypeShrinkRequest = ModifyInstanceChargeTypeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            query["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeDataDisks)) {
            query["IncludeDataDisks"] = request.includeDataDisks!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceChargeType)) {
            query["InstanceChargeType"] = request.instanceChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceChargeType",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceChargeTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceChargeType(_ request: ModifyInstanceChargeTypeRequest) async throws -> ModifyInstanceChargeTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceChargeTypeWithOptions(request as! ModifyInstanceChargeTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceNetworkAttributeWithOptions(_ request: ModifyInstanceNetworkAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceNetworkAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            query["PrivateIpAddress"] = request.privateIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceNetworkAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceNetworkAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceNetworkAttribute(_ request: ModifyInstanceNetworkAttributeRequest) async throws -> ModifyInstanceNetworkAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceNetworkAttributeWithOptions(request as! ModifyInstanceNetworkAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLoadBalancerAttributeWithOptions(_ request: ModifyLoadBalancerAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyLoadBalancerAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerName)) {
            query["LoadBalancerName"] = request.loadBalancerName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyLoadBalancerAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyLoadBalancerAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLoadBalancerAttribute(_ request: ModifyLoadBalancerAttributeRequest) async throws -> ModifyLoadBalancerAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyLoadBalancerAttributeWithOptions(request as! ModifyLoadBalancerAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNetworkAttributeWithOptions(_ request: ModifyNetworkAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNetworkAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkId)) {
            query["NetworkId"] = request.networkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkName)) {
            query["NetworkName"] = request.networkName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNetworkAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNetworkAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNetworkAttribute(_ request: ModifyNetworkAttributeRequest) async throws -> ModifyNetworkAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyNetworkAttributeWithOptions(request as! ModifyNetworkAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNetworkInterfaceAttributeWithOptions(_ request: ModifyNetworkInterfaceAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNetworkInterfaceAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            query["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkInterfaceName)) {
            query["NetworkInterfaceName"] = request.networkInterfaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNetworkInterfaceAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNetworkInterfaceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNetworkInterfaceAttribute(_ request: ModifyNetworkInterfaceAttributeRequest) async throws -> ModifyNetworkInterfaceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyNetworkInterfaceAttributeWithOptions(request as! ModifyNetworkInterfaceAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPrepayInstanceSpecWithOptions(_ request: ModifyPrepayInstanceSpecRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyPrepayInstanceSpecResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyPrepayInstanceSpec",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyPrepayInstanceSpecResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPrepayInstanceSpec(_ request: ModifyPrepayInstanceSpecRequest) async throws -> ModifyPrepayInstanceSpecResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyPrepayInstanceSpecWithOptions(request as! ModifyPrepayInstanceSpecRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySecurityGroupAttributeWithOptions(_ request: ModifySecurityGroupAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySecurityGroupAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupName)) {
            query["SecurityGroupName"] = request.securityGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySecurityGroupAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySecurityGroupAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySecurityGroupAttribute(_ request: ModifySecurityGroupAttributeRequest) async throws -> ModifySecurityGroupAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySecurityGroupAttributeWithOptions(request as! ModifySecurityGroupAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySnapshotAttributeWithOptions(_ request: ModifySnapshotAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySnapshotAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotName)) {
            query["SnapshotName"] = request.snapshotName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySnapshotAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySnapshotAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySnapshotAttribute(_ request: ModifySnapshotAttributeRequest) async throws -> ModifySnapshotAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySnapshotAttributeWithOptions(request as! ModifySnapshotAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySnatEntryWithOptions(_ request: ModifySnatEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySnatEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eipAffinity)) {
            query["EipAffinity"] = request.eipAffinity!;
        }
        if (!TeaUtils.Client.isUnset(request.ispAffinity)) {
            query["IspAffinity"] = request.ispAffinity!;
        }
        if (!TeaUtils.Client.isUnset(request.snatEntryId)) {
            query["SnatEntryId"] = request.snatEntryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snatEntryName)) {
            query["SnatEntryName"] = request.snatEntryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snatIp)) {
            query["SnatIp"] = request.snatIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySnatEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySnatEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySnatEntry(_ request: ModifySnatEntryRequest) async throws -> ModifySnatEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySnatEntryWithOptions(request as! ModifySnatEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyVSwitchAttributeWithOptions(_ request: ModifyVSwitchAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyVSwitchAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchName)) {
            query["VSwitchName"] = request.vSwitchName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyVSwitchAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyVSwitchAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyVSwitchAttribute(_ request: ModifyVSwitchAttributeRequest) async throws -> ModifyVSwitchAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyVSwitchAttributeWithOptions(request as! ModifyVSwitchAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mountInstanceSDGWithOptions(_ tmpReq: MountInstanceSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MountInstanceSDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: MountInstanceSDGShrinkRequest = MountInstanceSDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SDGId)) {
            query["SDGId"] = request.SDGId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MountInstanceSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MountInstanceSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mountInstanceSDG(_ request: MountInstanceSDGRequest) async throws -> MountInstanceSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mountInstanceSDGWithOptions(request as! MountInstanceSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func preloadRegionSDGWithOptions(_ tmpReq: PreloadRegionSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PreloadRegionSDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PreloadRegionSDGShrinkRequest = PreloadRegionSDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.destinationRegionIds)) {
            request.destinationRegionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.destinationRegionIds, "DestinationRegionIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.namespaces)) {
            request.namespacesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.namespaces, "Namespaces", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationRegionIdsShrink)) {
            query["DestinationRegionIds"] = request.destinationRegionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskType)) {
            query["DiskType"] = request.diskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespacesShrink)) {
            query["Namespaces"] = request.namespacesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.redundantNum)) {
            query["RedundantNum"] = request.redundantNum!;
        }
        if (!TeaUtils.Client.isUnset(request.SDGId)) {
            query["SDGId"] = request.SDGId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PreloadRegionSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PreloadRegionSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func preloadRegionSDG(_ request: PreloadRegionSDGRequest) async throws -> PreloadRegionSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await preloadRegionSDGWithOptions(request as! PreloadRegionSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func prepareUploadWithOptions(_ request: PrepareUploadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PrepareUploadResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientIp)) {
            query["ClientIp"] = request.clientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PrepareUpload",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PrepareUploadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func prepareUpload(_ request: PrepareUploadRequest) async throws -> PrepareUploadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await prepareUploadWithOptions(request as! PrepareUploadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushApplicationDataWithOptions(_ request: PushApplicationDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushApplicationDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushStrategy)) {
            query["PushStrategy"] = request.pushStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushApplicationData",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushApplicationDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushApplicationData(_ request: PushApplicationDataRequest) async throws -> PushApplicationDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushApplicationDataWithOptions(request as! PushApplicationDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putBucketWithOptions(_ request: PutBucketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutBucketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketAcl)) {
            query["BucketAcl"] = request.bucketAcl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dispatchScope)) {
            query["DispatchScope"] = request.dispatchScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalBucketType)) {
            query["LogicalBucketType"] = request.logicalBucketType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutBucket",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutBucketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putBucket(_ request: PutBucketRequest) async throws -> PutBucketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putBucketWithOptions(request as! PutBucketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putBucketAclWithOptions(_ request: PutBucketAclRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutBucketAclResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketAcl)) {
            query["BucketAcl"] = request.bucketAcl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutBucketAcl",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutBucketAclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putBucketAcl(_ request: PutBucketAclRequest) async throws -> PutBucketAclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putBucketAclWithOptions(request as! PutBucketAclRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putBucketLifecycleWithOptions(_ request: PutBucketLifecycleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutBucketLifecycleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowSameActionOverlap)) {
            query["AllowSameActionOverlap"] = request.allowSameActionOverlap ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdBeforeDate)) {
            query["CreatedBeforeDate"] = request.createdBeforeDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expirationDays)) {
            query["ExpirationDays"] = request.expirationDays!;
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["Prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutBucketLifecycle",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutBucketLifecycleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putBucketLifecycle(_ request: PutBucketLifecycleRequest) async throws -> PutBucketLifecycleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putBucketLifecycleWithOptions(request as! PutBucketLifecycleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reInitDiskWithOptions(_ request: ReInitDiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReInitDiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diskId)) {
            query["DiskId"] = request.diskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReInitDisk",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReInitDiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reInitDisk(_ request: ReInitDiskRequest) async throws -> ReInitDiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reInitDiskWithOptions(request as! ReInitDiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootAICInstanceWithOptions(_ tmpReq: RebootAICInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RebootAICInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RebootAICInstanceShrinkRequest = RebootAICInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebootAICInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebootAICInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootAICInstance(_ request: RebootAICInstanceRequest) async throws -> RebootAICInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rebootAICInstanceWithOptions(request as! RebootAICInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootARMServerInstanceWithOptions(_ request: RebootARMServerInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RebootARMServerInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebootARMServerInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebootARMServerInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootARMServerInstance(_ request: RebootARMServerInstanceRequest) async throws -> RebootARMServerInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rebootARMServerInstanceWithOptions(request as! RebootARMServerInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootInstanceWithOptions(_ request: RebootInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RebootInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forceStop)) {
            query["ForceStop"] = request.forceStop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebootInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebootInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootInstance(_ request: RebootInstanceRequest) async throws -> RebootInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rebootInstanceWithOptions(request as! RebootInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootInstancesWithOptions(_ tmpReq: RebootInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RebootInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RebootInstancesShrinkRequest = RebootInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebootInstances",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebootInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootInstances(_ request: RebootInstancesRequest) async throws -> RebootInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rebootInstancesWithOptions(request as! RebootInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recoverAICInstanceWithOptions(_ request: RecoverAICInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecoverAICInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecoverAICInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecoverAICInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recoverAICInstance(_ request: RecoverAICInstanceRequest) async throws -> RecoverAICInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recoverAICInstanceWithOptions(request as! RecoverAICInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reinitInstanceWithOptions(_ request: ReinitInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReinitInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["Password"] = request.password ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReinitInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReinitInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reinitInstance(_ request: ReinitInstanceRequest) async throws -> ReinitInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reinitInstanceWithOptions(request as! ReinitInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reinitInstancesWithOptions(_ tmpReq: ReinitInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReinitInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ReinitInstancesShrinkRequest = ReinitInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReinitInstances",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReinitInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reinitInstances(_ request: ReinitInstancesRequest) async throws -> ReinitInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reinitInstancesWithOptions(request as! ReinitInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseAICInstanceWithOptions(_ request: ReleaseAICInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseAICInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseAICInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseAICInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseAICInstance(_ request: ReleaseAICInstanceRequest) async throws -> ReleaseAICInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseAICInstanceWithOptions(request as! ReleaseAICInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseARMServerInstanceWithOptions(_ request: ReleaseARMServerInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseARMServerInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseARMServerInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseARMServerInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseARMServerInstance(_ request: ReleaseARMServerInstanceRequest) async throws -> ReleaseARMServerInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseARMServerInstanceWithOptions(request as! ReleaseARMServerInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstanceWithOptions(_ request: ReleaseInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstance(_ request: ReleaseInstanceRequest) async throws -> ReleaseInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseInstanceWithOptions(request as! ReleaseInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releasePostPaidInstanceWithOptions(_ request: ReleasePostPaidInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleasePostPaidInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleasePostPaidInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleasePostPaidInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releasePostPaidInstance(_ request: ReleasePostPaidInstanceRequest) async throws -> ReleasePostPaidInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releasePostPaidInstanceWithOptions(request as! ReleasePostPaidInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releasePrePaidInstanceWithOptions(_ request: ReleasePrePaidInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleasePrePaidInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleasePrePaidInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleasePrePaidInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releasePrePaidInstance(_ request: ReleasePrePaidInstanceRequest) async throws -> ReleasePrePaidInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releasePrePaidInstanceWithOptions(request as! ReleasePrePaidInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeBackendServersWithOptions(_ tmpReq: RemoveBackendServersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveBackendServersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveBackendServersShrinkRequest = RemoveBackendServersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.backendServers)) {
            request.backendServersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.backendServers, "BackendServers", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendServersShrink)) {
            query["BackendServers"] = request.backendServersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveBackendServers",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveBackendServersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeBackendServers(_ request: RemoveBackendServersRequest) async throws -> RemoveBackendServersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeBackendServersWithOptions(request as! RemoveBackendServersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeInstanceSDGWithOptions(_ tmpReq: RemoveInstanceSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveInstanceSDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveInstanceSDGShrinkRequest = RemoveInstanceSDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveInstanceSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveInstanceSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeInstanceSDG(_ request: RemoveInstanceSDGRequest) async throws -> RemoveInstanceSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeInstanceSDGWithOptions(request as! RemoveInstanceSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removePublicIpsFromEpnInstanceWithOptions(_ request: RemovePublicIpsFromEpnInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemovePublicIpsFromEpnInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.EPNInstanceId)) {
            query["EPNInstanceId"] = request.EPNInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceInfos)) {
            query["InstanceInfos"] = request.instanceInfos ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemovePublicIpsFromEpnInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemovePublicIpsFromEpnInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removePublicIpsFromEpnInstance(_ request: RemovePublicIpsFromEpnInstanceRequest) async throws -> RemovePublicIpsFromEpnInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removePublicIpsFromEpnInstanceWithOptions(request as! RemovePublicIpsFromEpnInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSDGWithOptions(_ tmpReq: RemoveSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveSDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveSDGShrinkRequest = RemoveSDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSDG(_ request: RemoveSDGRequest) async throws -> RemoveSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeSDGWithOptions(request as! RemoveSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSDGsWithOptions(_ tmpReq: RemoveSDGsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveSDGsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveSDGsShrinkRequest = RemoveSDGsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sdgIds)) {
            request.sdgIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sdgIds, "SdgIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sdgIdsShrink)) {
            query["SdgIds"] = request.sdgIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveSDGs",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveSDGsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSDGs(_ request: RemoveSDGsRequest) async throws -> RemoveSDGsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeSDGsWithOptions(request as! RemoveSDGsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeVSwitchesFromEpnInstanceWithOptions(_ request: RemoveVSwitchesFromEpnInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveVSwitchesFromEpnInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.EPNInstanceId)) {
            query["EPNInstanceId"] = request.EPNInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchesInfo)) {
            query["VSwitchesInfo"] = request.vSwitchesInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveVSwitchesFromEpnInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveVSwitchesFromEpnInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeVSwitchesFromEpnInstance(_ request: RemoveVSwitchesFromEpnInstanceRequest) async throws -> RemoveVSwitchesFromEpnInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeVSwitchesFromEpnInstanceWithOptions(request as! RemoveVSwitchesFromEpnInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewARMServerInstanceWithOptions(_ request: RenewARMServerInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewARMServerInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewARMServerInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewARMServerInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewARMServerInstance(_ request: RenewARMServerInstanceRequest) async throws -> RenewARMServerInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewARMServerInstanceWithOptions(request as! RenewARMServerInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewInstanceWithOptions(_ request: RenewInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewInstance(_ request: RenewInstanceRequest) async throws -> RenewInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewInstanceWithOptions(request as! RenewInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rescaleApplicationWithOptions(_ request: RescaleApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RescaleApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rescaleLevel)) {
            query["RescaleLevel"] = request.rescaleLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rescaleType)) {
            query["RescaleType"] = request.rescaleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceSelector)) {
            query["ResourceSelector"] = request.resourceSelector ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.toAppVersion)) {
            query["ToAppVersion"] = request.toAppVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RescaleApplication",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RescaleApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rescaleApplication(_ request: RescaleApplicationRequest) async throws -> RescaleApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rescaleApplicationWithOptions(request as! RescaleApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rescaleDeviceServiceWithOptions(_ request: RescaleDeviceServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RescaleDeviceServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipType)) {
            query["IpType"] = request.ipType!;
        }
        if (!TeaUtils.Client.isUnset(request.rescaleLevel)) {
            query["RescaleLevel"] = request.rescaleLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rescaleType)) {
            query["RescaleType"] = request.rescaleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceSpec)) {
            query["ResourceSpec"] = request.resourceSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            query["ServiceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceInfo)) {
            body["ResourceInfo"] = request.resourceInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceSelector)) {
            body["ResourceSelector"] = request.resourceSelector ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RescaleDeviceService",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RescaleDeviceServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rescaleDeviceService(_ request: RescaleDeviceServiceRequest) async throws -> RescaleDeviceServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rescaleDeviceServiceWithOptions(request as! RescaleDeviceServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAICInstanceWithOptions(_ request: ResetAICInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetAICInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetAICInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetAICInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAICInstance(_ request: ResetAICInstanceRequest) async throws -> ResetAICInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetAICInstanceWithOptions(request as! ResetAICInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetDiskWithOptions(_ request: ResetDiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetDiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diskId)) {
            query["DiskId"] = request.diskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetDisk",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetDiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetDisk(_ request: ResetDiskRequest) async throws -> ResetDiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetDiskWithOptions(request as! ResetDiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resizeDiskWithOptions(_ request: ResizeDiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResizeDiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diskId)) {
            query["DiskId"] = request.diskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newSize)) {
            query["NewSize"] = request.newSize ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResizeDisk",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResizeDiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resizeDisk(_ request: ResizeDiskRequest) async throws -> ResizeDiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resizeDiskWithOptions(request as! ResizeDiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeSecurityGroupWithOptions(_ request: RevokeSecurityGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeSecurityGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ipProtocol)) {
            query["IpProtocol"] = request.ipProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portRange)) {
            query["PortRange"] = request.portRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            query["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCidrIp)) {
            query["SourceCidrIp"] = request.sourceCidrIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePortRange)) {
            query["SourcePortRange"] = request.sourcePortRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeSecurityGroup",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeSecurityGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeSecurityGroup(_ request: RevokeSecurityGroupRequest) async throws -> RevokeSecurityGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokeSecurityGroupWithOptions(request as! RevokeSecurityGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeSecurityGroupEgressWithOptions(_ request: RevokeSecurityGroupEgressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeSecurityGroupEgressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destCidrIp)) {
            query["DestCidrIp"] = request.destCidrIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipProtocol)) {
            query["IpProtocol"] = request.ipProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portRange)) {
            query["PortRange"] = request.portRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            query["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePortRange)) {
            query["SourcePortRange"] = request.sourcePortRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeSecurityGroupEgress",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeSecurityGroupEgressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeSecurityGroupEgress(_ request: RevokeSecurityGroupEgressRequest) async throws -> RevokeSecurityGroupEgressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokeSecurityGroupEgressWithOptions(request as! RevokeSecurityGroupEgressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackApplicationWithOptions(_ request: RollbackApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RollbackApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromAppVersion)) {
            query["FromAppVersion"] = request.fromAppVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.toAppVersion)) {
            query["ToAppVersion"] = request.toAppVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RollbackApplication",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RollbackApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackApplication(_ request: RollbackApplicationRequest) async throws -> RollbackApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rollbackApplicationWithOptions(request as! RollbackApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runInstancesWithOptions(_ tmpReq: RunInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunInstancesShrinkRequest = RunInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataDisk)) {
            request.dataDiskShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataDisk, "DataDisk", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.systemDisk)) {
            request.systemDiskShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.systemDisk, "SystemDisk", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.autoReleaseTime)) {
            query["AutoReleaseTime"] = request.autoReleaseTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.autoUseCoupon)) {
            query["AutoUseCoupon"] = request.autoUseCoupon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            query["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.carrier)) {
            query["Carrier"] = request.carrier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataDiskShrink)) {
            query["DataDisk"] = request.dataDiskShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deletionProtection)) {
            query["DeletionProtection"] = request.deletionProtection!;
        }
        if (!TeaUtils.Client.isUnset(request.ensRegionId)) {
            query["EnsRegionId"] = request.ensRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceChargeStrategy)) {
            query["InstanceChargeStrategy"] = request.instanceChargeStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceChargeType)) {
            query["InstanceChargeType"] = request.instanceChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetChargeType)) {
            query["InternetChargeType"] = request.internetChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetMaxBandwidthOut)) {
            query["InternetMaxBandwidthOut"] = request.internetMaxBandwidthOut!;
        }
        if (!TeaUtils.Client.isUnset(request.ipType)) {
            query["IpType"] = request.ipType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipv6AddressCount)) {
            query["Ipv6AddressCount"] = request.ipv6AddressCount!;
        }
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.launchTemplateId)) {
            query["LaunchTemplateId"] = request.launchTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.launchTemplateName)) {
            query["LaunchTemplateName"] = request.launchTemplateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.launchTemplateVersion)) {
            query["LaunchTemplateVersion"] = request.launchTemplateVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.netDistrictCode)) {
            query["NetDistrictCode"] = request.netDistrictCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.netWorkId)) {
            query["NetWorkId"] = request.netWorkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passwordInherit)) {
            query["PasswordInherit"] = request.passwordInherit!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            query["PrivateIpAddress"] = request.privateIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicIpIdentification)) {
            query["PublicIpIdentification"] = request.publicIpIdentification!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleAreaLevel)) {
            query["ScheduleAreaLevel"] = request.scheduleAreaLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedulingPriceStrategy)) {
            query["SchedulingPriceStrategy"] = request.schedulingPriceStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedulingStrategy)) {
            query["SchedulingStrategy"] = request.schedulingStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityId)) {
            query["SecurityId"] = request.securityId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spotDuration)) {
            query["SpotDuration"] = request.spotDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.spotStrategy)) {
            query["SpotStrategy"] = request.spotStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemDiskShrink)) {
            query["SystemDisk"] = request.systemDiskShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.uniqueSuffix)) {
            query["UniqueSuffix"] = request.uniqueSuffix!;
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunInstances",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runInstances(_ request: RunInstancesRequest) async throws -> RunInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runInstancesWithOptions(request as! RunInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runServiceScheduleWithOptions(_ request: RunServiceScheduleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunServiceScheduleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientIp)) {
            query["ClientIp"] = request.clientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directorys)) {
            query["Directorys"] = request.directorys ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.podConfigName)) {
            query["PodConfigName"] = request.podConfigName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preLockedTimeout)) {
            query["PreLockedTimeout"] = request.preLockedTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleStrategy)) {
            query["ScheduleStrategy"] = request.scheduleStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceAction)) {
            query["ServiceAction"] = request.serviceAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCommands)) {
            query["ServiceCommands"] = request.serviceCommands ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunServiceSchedule",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunServiceScheduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runServiceSchedule(_ request: RunServiceScheduleRequest) async throws -> RunServiceScheduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runServiceScheduleWithOptions(request as! RunServiceScheduleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSDGWithOptions(_ request: SaveSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSDGResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSDG(_ request: SaveSDGRequest) async throws -> SaveSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSDGWithOptions(request as! SaveSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setBackendServersWithOptions(_ tmpReq: SetBackendServersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetBackendServersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetBackendServersShrinkRequest = SetBackendServersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.backendServers)) {
            request.backendServersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.backendServers, "BackendServers", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendServersShrink)) {
            query["BackendServers"] = request.backendServersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetBackendServers",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetBackendServersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setBackendServers(_ request: SetBackendServersRequest) async throws -> SetBackendServersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setBackendServersWithOptions(request as! SetBackendServersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setLoadBalancerHTTPListenerAttributeWithOptions(_ request: SetLoadBalancerHTTPListenerAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetLoadBalancerHTTPListenerAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheck)) {
            query["HealthCheck"] = request.healthCheck ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConnectPort)) {
            query["HealthCheckConnectPort"] = request.healthCheckConnectPort!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckDomain)) {
            query["HealthCheckDomain"] = request.healthCheckDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckHttpCode)) {
            query["HealthCheckHttpCode"] = request.healthCheckHttpCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckInterval)) {
            query["HealthCheckInterval"] = request.healthCheckInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckMethod)) {
            query["HealthCheckMethod"] = request.healthCheckMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckTimeout)) {
            query["HealthCheckTimeout"] = request.healthCheckTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckURI)) {
            query["HealthCheckURI"] = request.healthCheckURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthyThreshold)) {
            query["HealthyThreshold"] = request.healthyThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.idleTimeout)) {
            query["IdleTimeout"] = request.idleTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestTimeout)) {
            query["RequestTimeout"] = request.requestTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduler)) {
            query["Scheduler"] = request.scheduler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unhealthyThreshold)) {
            query["UnhealthyThreshold"] = request.unhealthyThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.XForwardedFor)) {
            query["XForwardedFor"] = request.XForwardedFor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetLoadBalancerHTTPListenerAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetLoadBalancerHTTPListenerAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setLoadBalancerHTTPListenerAttribute(_ request: SetLoadBalancerHTTPListenerAttributeRequest) async throws -> SetLoadBalancerHTTPListenerAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setLoadBalancerHTTPListenerAttributeWithOptions(request as! SetLoadBalancerHTTPListenerAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setLoadBalancerHTTPSListenerAttributeWithOptions(_ request: SetLoadBalancerHTTPSListenerAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetLoadBalancerHTTPSListenerAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheck)) {
            query["HealthCheck"] = request.healthCheck ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConnectPort)) {
            query["HealthCheckConnectPort"] = request.healthCheckConnectPort!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckDomain)) {
            query["HealthCheckDomain"] = request.healthCheckDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckHttpCode)) {
            query["HealthCheckHttpCode"] = request.healthCheckHttpCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckInterval)) {
            query["HealthCheckInterval"] = request.healthCheckInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckMethod)) {
            query["HealthCheckMethod"] = request.healthCheckMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckTimeout)) {
            query["HealthCheckTimeout"] = request.healthCheckTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckURI)) {
            query["HealthCheckURI"] = request.healthCheckURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthyThreshold)) {
            query["HealthyThreshold"] = request.healthyThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.idleTimeout)) {
            query["IdleTimeout"] = request.idleTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestTimeout)) {
            query["RequestTimeout"] = request.requestTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduler)) {
            query["Scheduler"] = request.scheduler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverCertificateId)) {
            query["ServerCertificateId"] = request.serverCertificateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unhealthyThreshold)) {
            query["UnhealthyThreshold"] = request.unhealthyThreshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetLoadBalancerHTTPSListenerAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetLoadBalancerHTTPSListenerAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setLoadBalancerHTTPSListenerAttribute(_ request: SetLoadBalancerHTTPSListenerAttributeRequest) async throws -> SetLoadBalancerHTTPSListenerAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setLoadBalancerHTTPSListenerAttributeWithOptions(request as! SetLoadBalancerHTTPSListenerAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setLoadBalancerStatusWithOptions(_ request: SetLoadBalancerStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetLoadBalancerStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerStatus)) {
            query["LoadBalancerStatus"] = request.loadBalancerStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetLoadBalancerStatus",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetLoadBalancerStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setLoadBalancerStatus(_ request: SetLoadBalancerStatusRequest) async throws -> SetLoadBalancerStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setLoadBalancerStatusWithOptions(request as! SetLoadBalancerStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setLoadBalancerTCPListenerAttributeWithOptions(_ request: SetLoadBalancerTCPListenerAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetLoadBalancerTCPListenerAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eipTransmit)) {
            query["EipTransmit"] = request.eipTransmit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.establishedTimeout)) {
            query["EstablishedTimeout"] = request.establishedTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConnectPort)) {
            query["HealthCheckConnectPort"] = request.healthCheckConnectPort!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConnectTimeout)) {
            query["HealthCheckConnectTimeout"] = request.healthCheckConnectTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckDomain)) {
            query["HealthCheckDomain"] = request.healthCheckDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckHttpCode)) {
            query["HealthCheckHttpCode"] = request.healthCheckHttpCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckInterval)) {
            query["HealthCheckInterval"] = request.healthCheckInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckType)) {
            query["HealthCheckType"] = request.healthCheckType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckURI)) {
            query["HealthCheckURI"] = request.healthCheckURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthyThreshold)) {
            query["HealthyThreshold"] = request.healthyThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.persistenceTimeout)) {
            query["PersistenceTimeout"] = request.persistenceTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduler)) {
            query["Scheduler"] = request.scheduler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unhealthyThreshold)) {
            query["UnhealthyThreshold"] = request.unhealthyThreshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetLoadBalancerTCPListenerAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetLoadBalancerTCPListenerAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setLoadBalancerTCPListenerAttribute(_ request: SetLoadBalancerTCPListenerAttributeRequest) async throws -> SetLoadBalancerTCPListenerAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setLoadBalancerTCPListenerAttributeWithOptions(request as! SetLoadBalancerTCPListenerAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setLoadBalancerUDPListenerAttributeWithOptions(_ request: SetLoadBalancerUDPListenerAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetLoadBalancerUDPListenerAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eipTransmit)) {
            query["EipTransmit"] = request.eipTransmit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.establishedTimeout)) {
            query["EstablishedTimeout"] = request.establishedTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConnectPort)) {
            query["HealthCheckConnectPort"] = request.healthCheckConnectPort!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckConnectTimeout)) {
            query["HealthCheckConnectTimeout"] = request.healthCheckConnectTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckExp)) {
            query["HealthCheckExp"] = request.healthCheckExp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckInterval)) {
            query["HealthCheckInterval"] = request.healthCheckInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.healthCheckReq)) {
            query["HealthCheckReq"] = request.healthCheckReq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthyThreshold)) {
            query["HealthyThreshold"] = request.healthyThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduler)) {
            query["Scheduler"] = request.scheduler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unhealthyThreshold)) {
            query["UnhealthyThreshold"] = request.unhealthyThreshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetLoadBalancerUDPListenerAttribute",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetLoadBalancerUDPListenerAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setLoadBalancerUDPListenerAttribute(_ request: SetLoadBalancerUDPListenerAttributeRequest) async throws -> SetLoadBalancerUDPListenerAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setLoadBalancerUDPListenerAttributeWithOptions(request as! SetLoadBalancerUDPListenerAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func shareAICImageWithOptions(_ tmpReq: ShareAICImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ShareAICImageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ShareAICImageShrinkRequest = ShareAICImageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.users)) {
            request.usersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.users, "Users", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usersShrink)) {
            query["Users"] = request.usersShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ShareAICImage",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ShareAICImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func shareAICImage(_ request: ShareAICImageRequest) async throws -> ShareAICImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await shareAICImageWithOptions(request as! ShareAICImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startEpnInstanceWithOptions(_ request: StartEpnInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartEpnInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.EPNInstanceId)) {
            query["EPNInstanceId"] = request.EPNInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartEpnInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartEpnInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startEpnInstance(_ request: StartEpnInstanceRequest) async throws -> StartEpnInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startEpnInstanceWithOptions(request as! StartEpnInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startInstanceWithOptions(_ request: StartInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startInstance(_ request: StartInstanceRequest) async throws -> StartInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startInstanceWithOptions(request as! StartInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startInstancesWithOptions(_ tmpReq: StartInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: StartInstancesShrinkRequest = StartInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartInstances",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startInstances(_ request: StartInstancesRequest) async throws -> StartInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startInstancesWithOptions(request as! StartInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startLoadBalancerListenerWithOptions(_ request: StartLoadBalancerListenerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartLoadBalancerListenerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerProtocol)) {
            query["ListenerProtocol"] = request.listenerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartLoadBalancerListener",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartLoadBalancerListenerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startLoadBalancerListener(_ request: StartLoadBalancerListenerRequest) async throws -> StartLoadBalancerListenerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startLoadBalancerListenerWithOptions(request as! StartLoadBalancerListenerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSnatIpForSnatEntryWithOptions(_ request: StartSnatIpForSnatEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartSnatIpForSnatEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.snatEntryId)) {
            query["SnatEntryId"] = request.snatEntryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snatIp)) {
            query["SnatIp"] = request.snatIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartSnatIpForSnatEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartSnatIpForSnatEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSnatIpForSnatEntry(_ request: StartSnatIpForSnatEntryRequest) async throws -> StartSnatIpForSnatEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startSnatIpForSnatEntryWithOptions(request as! StartSnatIpForSnatEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopEpnInstanceWithOptions(_ request: StopEpnInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopEpnInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.EPNInstanceId)) {
            query["EPNInstanceId"] = request.EPNInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopEpnInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopEpnInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopEpnInstance(_ request: StopEpnInstanceRequest) async throws -> StopEpnInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopEpnInstanceWithOptions(request as! StopEpnInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopInstanceWithOptions(_ request: StopInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forceStop)) {
            query["ForceStop"] = request.forceStop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopInstance",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopInstance(_ request: StopInstanceRequest) async throws -> StopInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopInstanceWithOptions(request as! StopInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopInstancesWithOptions(_ tmpReq: StopInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: StopInstancesShrinkRequest = StopInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopInstances",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopInstances(_ request: StopInstancesRequest) async throws -> StopInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopInstancesWithOptions(request as! StopInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopLoadBalancerListenerWithOptions(_ request: StopLoadBalancerListenerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopLoadBalancerListenerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listenerPort)) {
            query["ListenerPort"] = request.listenerPort!;
        }
        if (!TeaUtils.Client.isUnset(request.listenerProtocol)) {
            query["ListenerProtocol"] = request.listenerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalancerId)) {
            query["LoadBalancerId"] = request.loadBalancerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopLoadBalancerListener",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopLoadBalancerListenerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopLoadBalancerListener(_ request: StopLoadBalancerListenerRequest) async throws -> StopLoadBalancerListenerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopLoadBalancerListenerWithOptions(request as! StopLoadBalancerListenerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopSnatIpForSnatEntryWithOptions(_ request: StopSnatIpForSnatEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopSnatIpForSnatEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.snatEntryId)) {
            query["SnatEntryId"] = request.snatEntryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snatIp)) {
            query["SnatIp"] = request.snatIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopSnatIpForSnatEntry",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopSnatIpForSnatEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopSnatIpForSnatEntry(_ request: StopSnatIpForSnatEntryRequest) async throws -> StopSnatIpForSnatEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopSnatIpForSnatEntryWithOptions(request as! StopSnatIpForSnatEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
            "version": "2017-11-10",
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
    public func unAssociateEnsEipAddressWithOptions(_ request: UnAssociateEnsEipAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnAssociateEnsEipAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allocationId)) {
            query["AllocationId"] = request.allocationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["Force"] = request.force!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnAssociateEnsEipAddress",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnAssociateEnsEipAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unAssociateEnsEipAddress(_ request: UnAssociateEnsEipAddressRequest) async throws -> UnAssociateEnsEipAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unAssociateEnsEipAddressWithOptions(request as! UnAssociateEnsEipAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassignPrivateIpAddressesWithOptions(_ request: UnassignPrivateIpAddressesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnassignPrivateIpAddressesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkInterfaceId)) {
            query["NetworkInterfaceId"] = request.networkInterfaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            query["PrivateIpAddress"] = request.privateIpAddress ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnassignPrivateIpAddresses",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnassignPrivateIpAddressesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassignPrivateIpAddresses(_ request: UnassignPrivateIpAddressesRequest) async throws -> UnassignPrivateIpAddressesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unassignPrivateIpAddressesWithOptions(request as! UnassignPrivateIpAddressesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassociateHaVipWithOptions(_ request: UnassociateHaVipRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnassociateHaVipResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.haVipId)) {
            query["HaVipId"] = request.haVipId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnassociateHaVip",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnassociateHaVipResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassociateHaVip(_ request: UnassociateHaVipRequest) async throws -> UnassociateHaVipResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unassociateHaVipWithOptions(request as! UnassociateHaVipRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassociateNetworkAclWithOptions(_ request: UnassociateNetworkAclRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnassociateNetworkAclResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkAclId)) {
            query["NetworkAclId"] = request.networkAclId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnassociateNetworkAcl",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnassociateNetworkAclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassociateNetworkAcl(_ request: UnassociateNetworkAclRequest) async throws -> UnassociateNetworkAclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unassociateNetworkAclWithOptions(request as! UnassociateNetworkAclRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unloadRegionSDGWithOptions(_ tmpReq: UnloadRegionSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnloadRegionSDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UnloadRegionSDGShrinkRequest = UnloadRegionSDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.destinationRegionIds)) {
            request.destinationRegionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.destinationRegionIds, "DestinationRegionIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.namespaces)) {
            request.namespacesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.namespaces, "Namespaces", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationRegionIdsShrink)) {
            query["DestinationRegionIds"] = request.destinationRegionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespacesShrink)) {
            query["Namespaces"] = request.namespacesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SDGId)) {
            query["SDGId"] = request.SDGId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnloadRegionSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnloadRegionSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unloadRegionSDG(_ request: UnloadRegionSDGRequest) async throws -> UnloadRegionSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unloadRegionSDGWithOptions(request as! UnloadRegionSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unmountInstanceSDGWithOptions(_ tmpReq: UnmountInstanceSDGRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnmountInstanceSDGResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UnmountInstanceSDGShrinkRequest = UnmountInstanceSDGShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SDGId)) {
            query["SDGId"] = request.SDGId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnmountInstanceSDG",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnmountInstanceSDGResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unmountInstanceSDG(_ request: UnmountInstanceSDGRequest) async throws -> UnmountInstanceSDGResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unmountInstanceSDGWithOptions(request as! UnmountInstanceSDGRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
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
            "version": "2017-11-10",
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
    public func updateEnsSaleControlWithOptions(_ tmpReq: UpdateEnsSaleControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEnsSaleControlResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateEnsSaleControlShrinkRequest = UpdateEnsSaleControlShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.saleControls)) {
            request.saleControlsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.saleControls, "SaleControls", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliUidAccount)) {
            query["AliUidAccount"] = request.aliUidAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customAccount)) {
            query["CustomAccount"] = request.customAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleControlsShrink)) {
            query["SaleControls"] = request.saleControlsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEnsSaleControl",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEnsSaleControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEnsSaleControl(_ request: UpdateEnsSaleControlRequest) async throws -> UpdateEnsSaleControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateEnsSaleControlWithOptions(request as! UpdateEnsSaleControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeAICInstanceImageWithOptions(_ tmpReq: UpgradeAICInstanceImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeAICInstanceImageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpgradeAICInstanceImageShrinkRequest = UpgradeAICInstanceImageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.serverIds)) {
            request.serverIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.serverIds, "ServerIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeAICInstanceImage",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeAICInstanceImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeAICInstanceImage(_ request: UpgradeAICInstanceImageRequest) async throws -> UpgradeAICInstanceImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeAICInstanceImageWithOptions(request as! UpgradeAICInstanceImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeApplicationWithOptions(_ request: UpgradeApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.template)) {
            query["Template"] = request.template ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeApplication",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeApplication(_ request: UpgradeApplicationRequest) async throws -> UpgradeApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeApplicationWithOptions(request as! UpgradeApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadAICPublicKeyWithOptions(_ request: UploadAICPublicKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadAICPublicKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyGroup)) {
            query["KeyGroup"] = request.keyGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyName)) {
            query["KeyName"] = request.keyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyType)) {
            query["KeyType"] = request.keyType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadAICPublicKey",
            "version": "2017-11-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadAICPublicKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadAICPublicKey(_ request: UploadAICPublicKeyRequest) async throws -> UploadAICPublicKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadAICPublicKeyWithOptions(request as! UploadAICPublicKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
