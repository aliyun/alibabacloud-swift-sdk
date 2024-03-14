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
            "cn-qingdao": "sgw.cn-shanghai.aliyuncs.com",
            "cn-beijing": "sgw.cn-shanghai.aliyuncs.com",
            "cn-chengdu": "sgw.cn-shanghai.aliyuncs.com",
            "cn-zhangjiakou": "sgw.cn-shanghai.aliyuncs.com",
            "cn-huhehaote": "sgw.cn-shanghai.aliyuncs.com",
            "cn-hangzhou": "sgw.cn-shanghai.aliyuncs.com",
            "cn-shenzhen": "sgw.cn-shanghai.aliyuncs.com",
            "cn-hongkong": "sgw.cn-shanghai.aliyuncs.com",
            "us-east-1": "sgw.us-west-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("sgw", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func activateAllInOneGatewayWithOptions(_ request: ActivateAllInOneGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ActivateAllInOneGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientUUID)) {
            query["ClientUUID"] = request.clientUUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceNumber)) {
            query["DeviceNumber"] = request.deviceNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            query["SerialNumber"] = request.serialNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActivateAllInOneGateway",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ActivateAllInOneGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activateAllInOneGateway(_ request: ActivateAllInOneGatewayRequest) async throws -> ActivateAllInOneGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await activateAllInOneGatewayWithOptions(request as! ActivateAllInOneGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activateGatewayWithOptions(_ request: ActivateGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ActivateGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientUUID)) {
            query["ClientUUID"] = request.clientUUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            query["SerialNumber"] = request.serialNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActivateGateway",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ActivateGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activateGateway(_ request: ActivateGatewayRequest) async throws -> ActivateGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await activateGatewayWithOptions(request as! ActivateGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSharesToExpressSyncWithOptions(_ request: AddSharesToExpressSyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddSharesToExpressSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expressSyncId)) {
            query["ExpressSyncId"] = request.expressSyncId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayShares)) {
            query["GatewayShares"] = request.gatewayShares ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddSharesToExpressSync",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddSharesToExpressSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSharesToExpressSync(_ request: AddSharesToExpressSyncRequest) async throws -> AddSharesToExpressSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addSharesToExpressSyncWithOptions(request as! AddSharesToExpressSyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTagsToGatewayWithOptions(_ request: AddTagsToGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddTagsToGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddTagsToGateway",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddTagsToGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTagsToGateway(_ request: AddTagsToGatewayRequest) async throws -> AddTagsToGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addTagsToGatewayWithOptions(request as! AddTagsToGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkActivationKeyWithOptions(_ request: CheckActivationKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckActivationKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cryptKey)) {
            query["CryptKey"] = request.cryptKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cryptText)) {
            query["CryptText"] = request.cryptText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckActivationKey",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckActivationKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkActivationKey(_ request: CheckActivationKeyRequest) async throws -> CheckActivationKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkActivationKeyWithOptions(request as! CheckActivationKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkBlockVolumeNameWithOptions(_ request: CheckBlockVolumeNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckBlockVolumeNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketEndpoint)) {
            query["BucketEndpoint"] = request.bucketEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volumeName)) {
            query["VolumeName"] = request.volumeName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckBlockVolumeName",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckBlockVolumeNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkBlockVolumeName(_ request: CheckBlockVolumeNameRequest) async throws -> CheckBlockVolumeNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkBlockVolumeNameWithOptions(request as! CheckBlockVolumeNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkGatewayEssdSupportWithOptions(_ request: CheckGatewayEssdSupportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckGatewayEssdSupportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckGatewayEssdSupport",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckGatewayEssdSupportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkGatewayEssdSupport(_ request: CheckGatewayEssdSupportRequest) async throws -> CheckGatewayEssdSupportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkGatewayEssdSupportWithOptions(request as! CheckGatewayEssdSupportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkMnsServiceWithOptions(_ request: CheckMnsServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckMnsServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckMnsService",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckMnsServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkMnsService(_ request: CheckMnsServiceRequest) async throws -> CheckMnsServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkMnsServiceWithOptions(request as! CheckMnsServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkRoleWithOptions(_ request: CheckRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleType)) {
            query["RoleType"] = request.roleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckRole",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkRole(_ request: CheckRoleRequest) async throws -> CheckRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkRoleWithOptions(request as! CheckRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkSlrRoleWithOptions(_ request: CheckSlrRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckSlrRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createIfNotExist)) {
            query["CreateIfNotExist"] = request.createIfNotExist!;
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            query["RoleName"] = request.roleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckSlrRole",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckSlrRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkSlrRole(_ request: CheckSlrRoleRequest) async throws -> CheckSlrRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkSlrRoleWithOptions(request as! CheckSlrRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkUpgradeVersionWithOptions(_ request: CheckUpgradeVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckUpgradeVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientUUID)) {
            query["ClientUUID"] = request.clientUUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayVersion)) {
            query["GatewayVersion"] = request.gatewayVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckUpgradeVersion",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckUpgradeVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkUpgradeVersion(_ request: CheckUpgradeVersionRequest) async throws -> CheckUpgradeVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkUpgradeVersionWithOptions(request as! CheckUpgradeVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCacheWithOptions(_ request: CreateCacheRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCacheResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sizeInGB)) {
            query["SizeInGB"] = request.sizeInGB!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCache",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCacheResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCache(_ request: CreateCacheRequest) async throws -> CreateCacheResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCacheWithOptions(request as! CreateCacheRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createElasticGatewayPrivateZoneWithOptions(_ request: CreateElasticGatewayPrivateZoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateElasticGatewayPrivateZoneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateElasticGatewayPrivateZone",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateElasticGatewayPrivateZoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createElasticGatewayPrivateZone(_ request: CreateElasticGatewayPrivateZoneRequest) async throws -> CreateElasticGatewayPrivateZoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createElasticGatewayPrivateZoneWithOptions(request as! CreateElasticGatewayPrivateZoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExpressSyncWithOptions(_ request: CreateExpressSyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateExpressSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketPrefix)) {
            query["BucketPrefix"] = request.bucketPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketRegion)) {
            query["BucketRegion"] = request.bucketRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateExpressSync",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateExpressSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExpressSync(_ request: CreateExpressSyncRequest) async throws -> CreateExpressSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createExpressSyncWithOptions(request as! CreateExpressSyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayWithOptions(_ request: CreateGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayClass)) {
            query["GatewayClass"] = request.gatewayClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.location)) {
            query["Location"] = request.location ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postPaid)) {
            query["PostPaid"] = request.postPaid!;
        }
        if (!TeaUtils.Client.isUnset(request.publicNetworkBandwidth)) {
            query["PublicNetworkBandwidth"] = request.publicNetworkBandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.releaseAfterExpiration)) {
            query["ReleaseAfterExpiration"] = request.releaseAfterExpiration!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryVSwitchId)) {
            query["SecondaryVSwitchId"] = request.secondaryVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageBundleId)) {
            query["StorageBundleId"] = request.storageBundleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.untrustedEnvId)) {
            query["UntrustedEnvId"] = request.untrustedEnvId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.untrustedEnvInstanceType)) {
            query["UntrustedEnvInstanceType"] = request.untrustedEnvInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGateway",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGateway(_ request: CreateGatewayRequest) async throws -> CreateGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGatewayWithOptions(request as! CreateGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayBlockVolumeWithOptions(_ request: CreateGatewayBlockVolumeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGatewayBlockVolumeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cacheMode)) {
            query["CacheMode"] = request.cacheMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chapEnabled)) {
            query["ChapEnabled"] = request.chapEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.chapInPassword)) {
            query["ChapInPassword"] = request.chapInPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chapInUser)) {
            query["ChapInUser"] = request.chapInUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chunkSize)) {
            query["ChunkSize"] = request.chunkSize!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localFilePath)) {
            query["LocalFilePath"] = request.localFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            query["OssBucketName"] = request.ossBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketSsl)) {
            query["OssBucketSsl"] = request.ossBucketSsl!;
        }
        if (!TeaUtils.Client.isUnset(request.ossEndpoint)) {
            query["OssEndpoint"] = request.ossEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recovery)) {
            query["Recovery"] = request.recovery!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.volumeProtocol)) {
            query["VolumeProtocol"] = request.volumeProtocol ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGatewayBlockVolume",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGatewayBlockVolumeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayBlockVolume(_ request: CreateGatewayBlockVolumeRequest) async throws -> CreateGatewayBlockVolumeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGatewayBlockVolumeWithOptions(request as! CreateGatewayBlockVolumeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayCacheDiskWithOptions(_ request: CreateGatewayCacheDiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGatewayCacheDiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cacheDiskCategory)) {
            query["CacheDiskCategory"] = request.cacheDiskCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cacheDiskSizeInGB)) {
            query["CacheDiskSizeInGB"] = request.cacheDiskSizeInGB!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.performanceLevel)) {
            query["PerformanceLevel"] = request.performanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGatewayCacheDisk",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGatewayCacheDiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayCacheDisk(_ request: CreateGatewayCacheDiskRequest) async throws -> CreateGatewayCacheDiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGatewayCacheDiskWithOptions(request as! CreateGatewayCacheDiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayFileShareWithOptions(_ request: CreateGatewayFileShareRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGatewayFileShareResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessBasedEnumeration)) {
            query["AccessBasedEnumeration"] = request.accessBasedEnumeration!;
        }
        if (!TeaUtils.Client.isUnset(request.backendLimit)) {
            query["BackendLimit"] = request.backendLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.browsable)) {
            query["Browsable"] = request.browsable!;
        }
        if (!TeaUtils.Client.isUnset(request.bypassCacheRead)) {
            query["BypassCacheRead"] = request.bypassCacheRead!;
        }
        if (!TeaUtils.Client.isUnset(request.cacheMode)) {
            query["CacheMode"] = request.cacheMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSideCmk)) {
            query["ClientSideCmk"] = request.clientSideCmk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSideEncryption)) {
            query["ClientSideEncryption"] = request.clientSideEncryption!;
        }
        if (!TeaUtils.Client.isUnset(request.directIO)) {
            query["DirectIO"] = request.directIO!;
        }
        if (!TeaUtils.Client.isUnset(request.downloadLimit)) {
            query["DownloadLimit"] = request.downloadLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.fastReclaim)) {
            query["FastReclaim"] = request.fastReclaim!;
        }
        if (!TeaUtils.Client.isUnset(request.frontendLimit)) {
            query["FrontendLimit"] = request.frontendLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreDelete)) {
            query["IgnoreDelete"] = request.ignoreDelete!;
        }
        if (!TeaUtils.Client.isUnset(request.inPlace)) {
            query["InPlace"] = request.inPlace!;
        }
        if (!TeaUtils.Client.isUnset(request.kmsRotatePeriod)) {
            query["KmsRotatePeriod"] = request.kmsRotatePeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.lagPeriod)) {
            query["LagPeriod"] = request.lagPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.localFilePath)) {
            query["LocalFilePath"] = request.localFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nfsV4Optimization)) {
            query["NfsV4Optimization"] = request.nfsV4Optimization!;
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            query["OssBucketName"] = request.ossBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketSsl)) {
            query["OssBucketSsl"] = request.ossBucketSsl!;
        }
        if (!TeaUtils.Client.isUnset(request.ossEndpoint)) {
            query["OssEndpoint"] = request.ossEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partialSyncPaths)) {
            query["PartialSyncPaths"] = request.partialSyncPaths ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pathPrefix)) {
            query["PathPrefix"] = request.pathPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pollingInterval)) {
            query["PollingInterval"] = request.pollingInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.readOnlyClientList)) {
            query["ReadOnlyClientList"] = request.readOnlyClientList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readOnlyUserList)) {
            query["ReadOnlyUserList"] = request.readOnlyUserList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readWriteClientList)) {
            query["ReadWriteClientList"] = request.readWriteClientList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readWriteUserList)) {
            query["ReadWriteUserList"] = request.readWriteUserList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remoteSync)) {
            query["RemoteSync"] = request.remoteSync!;
        }
        if (!TeaUtils.Client.isUnset(request.remoteSyncDownload)) {
            query["RemoteSyncDownload"] = request.remoteSyncDownload!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverSideAlgorithm)) {
            query["ServerSideAlgorithm"] = request.serverSideAlgorithm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverSideCmk)) {
            query["ServerSideCmk"] = request.serverSideCmk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverSideEncryption)) {
            query["ServerSideEncryption"] = request.serverSideEncryption!;
        }
        if (!TeaUtils.Client.isUnset(request.shareProtocol)) {
            query["ShareProtocol"] = request.shareProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.squash)) {
            query["Squash"] = request.squash ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportArchive)) {
            query["SupportArchive"] = request.supportArchive!;
        }
        if (!TeaUtils.Client.isUnset(request.transferAcceleration)) {
            query["TransferAcceleration"] = request.transferAcceleration!;
        }
        if (!TeaUtils.Client.isUnset(request.windowsAcl)) {
            query["WindowsAcl"] = request.windowsAcl!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGatewayFileShare",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGatewayFileShareResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayFileShare(_ request: CreateGatewayFileShareRequest) async throws -> CreateGatewayFileShareResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGatewayFileShareWithOptions(request as! CreateGatewayFileShareRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayLoggingWithOptions(_ request: CreateGatewayLoggingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGatewayLoggingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsLogstore)) {
            query["SlsLogstore"] = request.slsLogstore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsProject)) {
            query["SlsProject"] = request.slsProject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGatewayLogging",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGatewayLoggingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayLogging(_ request: CreateGatewayLoggingRequest) async throws -> CreateGatewayLoggingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGatewayLoggingWithOptions(request as! CreateGatewayLoggingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewaySMBUserWithOptions(_ request: CreateGatewaySMBUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGatewaySMBUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGatewaySMBUser",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGatewaySMBUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewaySMBUser(_ request: CreateGatewaySMBUserRequest) async throws -> CreateGatewaySMBUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGatewaySMBUserWithOptions(request as! CreateGatewaySMBUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStorageBundleWithOptions(_ request: CreateStorageBundleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStorageBundleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendBucketRegionId)) {
            query["BackendBucketRegionId"] = request.backendBucketRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStorageBundle",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStorageBundleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStorageBundle(_ request: CreateStorageBundleRequest) async throws -> CreateStorageBundleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStorageBundleWithOptions(request as! CreateStorageBundleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCSGClientsWithOptions(_ tmpReq: DeleteCSGClientsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCSGClientsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteCSGClientsShrinkRequest = DeleteCSGClientsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.clientIds)) {
            request.clientIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.clientIds, "ClientIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientIdsShrink)) {
            query["ClientIds"] = request.clientIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientRegionId)) {
            query["ClientRegionId"] = request.clientRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCSGClients",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCSGClientsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCSGClients(_ request: DeleteCSGClientsRequest) async throws -> DeleteCSGClientsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCSGClientsWithOptions(request as! DeleteCSGClientsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteElasticGatewayPrivateZoneWithOptions(_ request: DeleteElasticGatewayPrivateZoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteElasticGatewayPrivateZoneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteElasticGatewayPrivateZone",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteElasticGatewayPrivateZoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteElasticGatewayPrivateZone(_ request: DeleteElasticGatewayPrivateZoneRequest) async throws -> DeleteElasticGatewayPrivateZoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteElasticGatewayPrivateZoneWithOptions(request as! DeleteElasticGatewayPrivateZoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExpressSyncWithOptions(_ request: DeleteExpressSyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteExpressSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expressSyncId)) {
            query["ExpressSyncId"] = request.expressSyncId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteExpressSync",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteExpressSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExpressSync(_ request: DeleteExpressSyncRequest) async throws -> DeleteExpressSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteExpressSyncWithOptions(request as! DeleteExpressSyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayWithOptions(_ request: DeleteGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reasonDetail)) {
            query["ReasonDetail"] = request.reasonDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reasonType)) {
            query["ReasonType"] = request.reasonType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGateway",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGateway(_ request: DeleteGatewayRequest) async throws -> DeleteGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGatewayWithOptions(request as! DeleteGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayBlockVolumesWithOptions(_ request: DeleteGatewayBlockVolumesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewayBlockVolumesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isSourceDeletion)) {
            query["IsSourceDeletion"] = request.isSourceDeletion!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGatewayBlockVolumes",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewayBlockVolumesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayBlockVolumes(_ request: DeleteGatewayBlockVolumesRequest) async throws -> DeleteGatewayBlockVolumesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGatewayBlockVolumesWithOptions(request as! DeleteGatewayBlockVolumesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayCacheDiskWithOptions(_ request: DeleteGatewayCacheDiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewayCacheDiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cacheId)) {
            query["CacheId"] = request.cacheId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localFilePath)) {
            query["LocalFilePath"] = request.localFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGatewayCacheDisk",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewayCacheDiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayCacheDisk(_ request: DeleteGatewayCacheDiskRequest) async throws -> DeleteGatewayCacheDiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGatewayCacheDiskWithOptions(request as! DeleteGatewayCacheDiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayFileSharesWithOptions(_ request: DeleteGatewayFileSharesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewayFileSharesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["Force"] = request.force!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGatewayFileShares",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewayFileSharesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayFileShares(_ request: DeleteGatewayFileSharesRequest) async throws -> DeleteGatewayFileSharesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGatewayFileSharesWithOptions(request as! DeleteGatewayFileSharesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayLoggingWithOptions(_ request: DeleteGatewayLoggingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewayLoggingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGatewayLogging",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewayLoggingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayLogging(_ request: DeleteGatewayLoggingRequest) async throws -> DeleteGatewayLoggingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGatewayLoggingWithOptions(request as! DeleteGatewayLoggingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewaySMBUserWithOptions(_ request: DeleteGatewaySMBUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewaySMBUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGatewaySMBUser",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewaySMBUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewaySMBUser(_ request: DeleteGatewaySMBUserRequest) async throws -> DeleteGatewaySMBUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGatewaySMBUserWithOptions(request as! DeleteGatewaySMBUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStorageBundleWithOptions(_ request: DeleteStorageBundleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteStorageBundleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageBundleId)) {
            query["StorageBundleId"] = request.storageBundleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteStorageBundle",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteStorageBundleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStorageBundle(_ request: DeleteStorageBundleRequest) async throws -> DeleteStorageBundleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteStorageBundleWithOptions(request as! DeleteStorageBundleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployCSGClientsWithOptions(_ tmpReq: DeployCSGClientsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployCSGClientsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeployCSGClientsShrinkRequest = DeployCSGClientsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecsInstanceIds)) {
            request.ecsInstanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecsInstanceIds, "EcsInstanceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientRegionId)) {
            query["ClientRegionId"] = request.clientRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsInstanceIdsShrink)) {
            query["EcsInstanceIds"] = request.ecsInstanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeployCSGClients",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeployCSGClientsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployCSGClients(_ request: DeployCSGClientsRequest) async throws -> DeployCSGClientsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deployCSGClientsWithOptions(request as! DeployCSGClientsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployCacheDiskWithOptions(_ request: DeployCacheDiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployCacheDiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cacheConfig)) {
            query["CacheConfig"] = request.cacheConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskCategory)) {
            query["DiskCategory"] = request.diskCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sizeInGB)) {
            query["SizeInGB"] = request.sizeInGB!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeployCacheDisk",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeployCacheDiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployCacheDisk(_ request: DeployCacheDiskRequest) async throws -> DeployCacheDiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deployCacheDiskWithOptions(request as! DeployCacheDiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployGatewayWithOptions(_ request: DeployGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayClass)) {
            query["GatewayClass"] = request.gatewayClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeployGateway",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeployGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployGateway(_ request: DeployGatewayRequest) async throws -> DeployGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deployGatewayWithOptions(request as! DeployGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountConfigWithOptions(_ request: DescribeAccountConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAccountConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAccountConfig",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAccountConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountConfig(_ request: DescribeAccountConfigRequest) async throws -> DescribeAccountConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAccountConfigWithOptions(request as! DescribeAccountConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBlockVolumeSnapshotsWithOptions(_ request: DescribeBlockVolumeSnapshotsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBlockVolumeSnapshotsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBlockVolumeSnapshots",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBlockVolumeSnapshotsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBlockVolumeSnapshots(_ request: DescribeBlockVolumeSnapshotsRequest) async throws -> DescribeBlockVolumeSnapshotsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBlockVolumeSnapshotsWithOptions(request as! DescribeBlockVolumeSnapshotsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCSGClientTasksWithOptions(_ request: DescribeCSGClientTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCSGClientTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientRegionId)) {
            query["ClientRegionId"] = request.clientRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCSGClientTasks",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCSGClientTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCSGClientTasks(_ request: DescribeCSGClientTasksRequest) async throws -> DescribeCSGClientTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCSGClientTasksWithOptions(request as! DescribeCSGClientTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCSGClientsWithOptions(_ request: DescribeCSGClientsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCSGClientsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientRegionId)) {
            query["ClientRegionId"] = request.clientRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCSGClients",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCSGClientsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCSGClients(_ request: DescribeCSGClientsRequest) async throws -> DescribeCSGClientsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCSGClientsWithOptions(request as! DescribeCSGClientsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDashboardWithOptions(_ request: DescribeDashboardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDashboardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendBucketRegionId)) {
            query["BackendBucketRegionId"] = request.backendBucketRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDashboard",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDashboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDashboard(_ request: DescribeDashboardRequest) async throws -> DescribeDashboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDashboardWithOptions(request as! DescribeDashboardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExpireCachesWithOptions(_ request: DescribeExpireCachesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeExpireCachesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeExpireCaches",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeExpireCachesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExpireCaches(_ request: DescribeExpireCachesRequest) async throws -> DescribeExpireCachesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeExpireCachesWithOptions(request as! DescribeExpireCachesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExpressSyncSharesWithOptions(_ request: DescribeExpressSyncSharesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeExpressSyncSharesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expressSyncIds)) {
            query["ExpressSyncIds"] = request.expressSyncIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isExternal)) {
            query["IsExternal"] = request.isExternal!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeExpressSyncShares",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeExpressSyncSharesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExpressSyncShares(_ request: DescribeExpressSyncSharesRequest) async throws -> DescribeExpressSyncSharesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeExpressSyncSharesWithOptions(request as! DescribeExpressSyncSharesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExpressSyncsWithOptions(_ request: DescribeExpressSyncsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeExpressSyncsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketPrefix)) {
            query["BucketPrefix"] = request.bucketPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeExpressSyncs",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeExpressSyncsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExpressSyncs(_ request: DescribeExpressSyncsRequest) async throws -> DescribeExpressSyncsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeExpressSyncsWithOptions(request as! DescribeExpressSyncsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayWithOptions(_ request: DescribeGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGateway",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGateway(_ request: DescribeGatewayRequest) async throws -> DescribeGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayWithOptions(request as! DescribeGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayADInfoWithOptions(_ request: DescribeGatewayADInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayADInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayADInfo",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayADInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayADInfo(_ request: DescribeGatewayADInfoRequest) async throws -> DescribeGatewayADInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayADInfoWithOptions(request as! DescribeGatewayADInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayActionsWithOptions(_ request: DescribeGatewayActionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayActionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayActions",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayActionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayActions(_ request: DescribeGatewayActionsRequest) async throws -> DescribeGatewayActionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayActionsWithOptions(request as! DescribeGatewayActionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayAuthInfoWithOptions(_ request: DescribeGatewayAuthInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayAuthInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayAuthInfo",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayAuthInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayAuthInfo(_ request: DescribeGatewayAuthInfoRequest) async throws -> DescribeGatewayAuthInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayAuthInfoWithOptions(request as! DescribeGatewayAuthInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayAutoPlansWithOptions(_ request: DescribeGatewayAutoPlansRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayAutoPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayAutoPlans",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayAutoPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayAutoPlans(_ request: DescribeGatewayAutoPlansRequest) async throws -> DescribeGatewayAutoPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayAutoPlansWithOptions(request as! DescribeGatewayAutoPlansRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayAutoUpgradeConfigurationWithOptions(_ request: DescribeGatewayAutoUpgradeConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayAutoUpgradeConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayAutoUpgradeConfiguration",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayAutoUpgradeConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayAutoUpgradeConfiguration(_ request: DescribeGatewayAutoUpgradeConfigurationRequest) async throws -> DescribeGatewayAutoUpgradeConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayAutoUpgradeConfigurationWithOptions(request as! DescribeGatewayAutoUpgradeConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayBlockVolumesWithOptions(_ request: DescribeGatewayBlockVolumesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayBlockVolumesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refresh)) {
            query["Refresh"] = request.refresh!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayBlockVolumes",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayBlockVolumesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayBlockVolumes(_ request: DescribeGatewayBlockVolumesRequest) async throws -> DescribeGatewayBlockVolumesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayBlockVolumesWithOptions(request as! DescribeGatewayBlockVolumesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayBucketCachesWithOptions(_ request: DescribeGatewayBucketCachesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayBucketCachesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayBucketCaches",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayBucketCachesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayBucketCaches(_ request: DescribeGatewayBucketCachesRequest) async throws -> DescribeGatewayBucketCachesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayBucketCachesWithOptions(request as! DescribeGatewayBucketCachesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayCachesWithOptions(_ request: DescribeGatewayCachesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayCachesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayCaches",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayCachesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayCaches(_ request: DescribeGatewayCachesRequest) async throws -> DescribeGatewayCachesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayCachesWithOptions(request as! DescribeGatewayCachesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayCapacityLimitWithOptions(_ request: DescribeGatewayCapacityLimitRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayCapacityLimitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sizeInGB)) {
            query["SizeInGB"] = request.sizeInGB!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayCapacityLimit",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayCapacityLimitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayCapacityLimit(_ request: DescribeGatewayCapacityLimitRequest) async throws -> DescribeGatewayCapacityLimitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayCapacityLimitWithOptions(request as! DescribeGatewayCapacityLimitRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayCategoriesWithOptions(_ request: DescribeGatewayCategoriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayCategoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayLocation)) {
            query["GatewayLocation"] = request.gatewayLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayCategories",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayCategoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayCategories(_ request: DescribeGatewayCategoriesRequest) async throws -> DescribeGatewayCategoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayCategoriesWithOptions(request as! DescribeGatewayCategoriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayClassesWithOptions(_ request: DescribeGatewayClassesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayClassesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayClasses",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayClassesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayClasses(_ request: DescribeGatewayClassesRequest) async throws -> DescribeGatewayClassesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayClassesWithOptions(request as! DescribeGatewayClassesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayCredentialWithOptions(_ request: DescribeGatewayCredentialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayCredentialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayCredential",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayCredentialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayCredential(_ request: DescribeGatewayCredentialRequest) async throws -> DescribeGatewayCredentialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayCredentialWithOptions(request as! DescribeGatewayCredentialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayDNSWithOptions(_ request: DescribeGatewayDNSRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayDNSResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayDNS",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayDNSResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayDNS(_ request: DescribeGatewayDNSRequest) async throws -> DescribeGatewayDNSResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayDNSWithOptions(request as! DescribeGatewayDNSRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayFileSharesWithOptions(_ request: DescribeGatewayFileSharesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayFileSharesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refresh)) {
            query["Refresh"] = request.refresh!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayFileShares",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayFileSharesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayFileShares(_ request: DescribeGatewayFileSharesRequest) async throws -> DescribeGatewayFileSharesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayFileSharesWithOptions(request as! DescribeGatewayFileSharesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayFileStatusWithOptions(_ request: DescribeGatewayFileStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayFileStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            query["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayFileStatus",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayFileStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayFileStatus(_ request: DescribeGatewayFileStatusRequest) async throws -> DescribeGatewayFileStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayFileStatusWithOptions(request as! DescribeGatewayFileStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayImagesWithOptions(_ request: DescribeGatewayImagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayImagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayImages",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayImagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayImages(_ request: DescribeGatewayImagesRequest) async throws -> DescribeGatewayImagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayImagesWithOptions(request as! DescribeGatewayImagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayInfoWithOptions(_ request: DescribeGatewayInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayInfo",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayInfo(_ request: DescribeGatewayInfoRequest) async throws -> DescribeGatewayInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayInfoWithOptions(request as! DescribeGatewayInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayLDAPInfoWithOptions(_ request: DescribeGatewayLDAPInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayLDAPInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayLDAPInfo",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayLDAPInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayLDAPInfo(_ request: DescribeGatewayLDAPInfoRequest) async throws -> DescribeGatewayLDAPInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayLDAPInfoWithOptions(request as! DescribeGatewayLDAPInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayLocationsWithOptions(_ request: DescribeGatewayLocationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayLocationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayLocations",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayLocationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayLocations(_ request: DescribeGatewayLocationsRequest) async throws -> DescribeGatewayLocationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayLocationsWithOptions(request as! DescribeGatewayLocationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayLoggingWithOptions(_ request: DescribeGatewayLoggingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayLoggingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayLogging",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayLoggingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayLogging(_ request: DescribeGatewayLoggingRequest) async throws -> DescribeGatewayLoggingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayLoggingWithOptions(request as! DescribeGatewayLoggingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayLogsWithOptions(_ request: DescribeGatewayLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logFilePath)) {
            query["LogFilePath"] = request.logFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayLogs",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayLogs(_ request: DescribeGatewayLogsRequest) async throws -> DescribeGatewayLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayLogsWithOptions(request as! DescribeGatewayLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayModificationClassesWithOptions(_ request: DescribeGatewayModificationClassesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayModificationClassesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayModificationClasses",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayModificationClassesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayModificationClasses(_ request: DescribeGatewayModificationClassesRequest) async throws -> DescribeGatewayModificationClassesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayModificationClassesWithOptions(request as! DescribeGatewayModificationClassesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayNFSClientsWithOptions(_ request: DescribeGatewayNFSClientsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayNFSClientsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayNFSClients",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayNFSClientsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayNFSClients(_ request: DescribeGatewayNFSClientsRequest) async throws -> DescribeGatewayNFSClientsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayNFSClientsWithOptions(request as! DescribeGatewayNFSClientsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewaySMBUsersWithOptions(_ request: DescribeGatewaySMBUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewaySMBUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewaySMBUsers",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewaySMBUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewaySMBUsers(_ request: DescribeGatewaySMBUsersRequest) async throws -> DescribeGatewaySMBUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewaySMBUsersWithOptions(request as! DescribeGatewaySMBUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayStatisticsWithOptions(_ request: DescribeGatewayStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayCategory)) {
            query["GatewayCategory"] = request.gatewayCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayLocation)) {
            query["GatewayLocation"] = request.gatewayLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.targetAccountId)) {
            query["TargetAccountId"] = request.targetAccountId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayStatistics",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayStatistics(_ request: DescribeGatewayStatisticsRequest) async throws -> DescribeGatewayStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayStatisticsWithOptions(request as! DescribeGatewayStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayStockWithOptions(_ request: DescribeGatewayStockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayStockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayRegionId)) {
            query["GatewayRegionId"] = request.gatewayRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayStock",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayStockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayStock(_ request: DescribeGatewayStockRequest) async throws -> DescribeGatewayStockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayStockWithOptions(request as! DescribeGatewayStockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayTypesWithOptions(_ request: DescribeGatewayTypesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewayTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayLocation)) {
            query["GatewayLocation"] = request.gatewayLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewayTypes",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewayTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewayTypes(_ request: DescribeGatewayTypesRequest) async throws -> DescribeGatewayTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewayTypesWithOptions(request as! DescribeGatewayTypesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewaysWithOptions(_ request: DescribeGatewaysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewaysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageBundleId)) {
            query["StorageBundleId"] = request.storageBundleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGateways",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewaysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGateways(_ request: DescribeGatewaysRequest) async throws -> DescribeGatewaysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewaysWithOptions(request as! DescribeGatewaysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewaysForCmsWithOptions(_ request: DescribeGatewaysForCmsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewaysForCmsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayRegionId)) {
            query["GatewayRegionId"] = request.gatewayRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewaysForCms",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewaysForCmsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewaysForCms(_ request: DescribeGatewaysForCmsRequest) async throws -> DescribeGatewaysForCmsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewaysForCmsWithOptions(request as! DescribeGatewaysForCmsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewaysTagsWithOptions(_ request: DescribeGatewaysTagsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGatewaysTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayIds)) {
            query["GatewayIds"] = request.gatewayIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageBundleId)) {
            query["StorageBundleId"] = request.storageBundleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagCategory)) {
            query["TagCategory"] = request.tagCategory ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGatewaysTags",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGatewaysTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGatewaysTags(_ request: DescribeGatewaysTagsRequest) async throws -> DescribeGatewaysTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGatewaysTagsWithOptions(request as! DescribeGatewaysTagsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeKmsKeyWithOptions(_ request: DescribeKmsKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeKmsKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kmsKey)) {
            query["KmsKey"] = request.kmsKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeKmsKey",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeKmsKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeKmsKey(_ request: DescribeKmsKeyRequest) async throws -> DescribeKmsKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeKmsKeyWithOptions(request as! DescribeKmsKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMqttConfigWithOptions(_ request: DescribeMqttConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMqttConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMqttConfig",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMqttConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMqttConfig(_ request: DescribeMqttConfigRequest) async throws -> DescribeMqttConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMqttConfigWithOptions(request as! DescribeMqttConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOssBucketInfoWithOptions(_ request: DescribeOssBucketInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOssBucketInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketEndpoint)) {
            query["BucketEndpoint"] = request.bucketEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeOssBucketInfo",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOssBucketInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOssBucketInfo(_ request: DescribeOssBucketInfoRequest) async throws -> DescribeOssBucketInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOssBucketInfoWithOptions(request as! DescribeOssBucketInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOssBucketsWithOptions(_ request: DescribeOssBucketsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOssBucketsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketEndpoint)) {
            query["BucketEndpoint"] = request.bucketEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeOssBuckets",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOssBucketsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOssBuckets(_ request: DescribeOssBucketsRequest) async throws -> DescribeOssBucketsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOssBucketsWithOptions(request as! DescribeOssBucketsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePayAsYouGoPriceWithOptions(_ request: DescribePayAsYouGoPriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePayAsYouGoPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayClass)) {
            query["GatewayClass"] = request.gatewayClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePayAsYouGoPrice",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePayAsYouGoPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePayAsYouGoPrice(_ request: DescribePayAsYouGoPriceRequest) async throws -> DescribePayAsYouGoPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePayAsYouGoPriceWithOptions(request as! DescribePayAsYouGoPriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegions(_ request: DescribeRegionsRequest) async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRegionsWithOptions(request as! DescribeRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSharesBucketInfoForExpressSyncWithOptions(_ request: DescribeSharesBucketInfoForExpressSyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSharesBucketInfoForExpressSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketRegion)) {
            query["BucketRegion"] = request.bucketRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSharesBucketInfoForExpressSync",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSharesBucketInfoForExpressSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSharesBucketInfoForExpressSync(_ request: DescribeSharesBucketInfoForExpressSyncRequest) async throws -> DescribeSharesBucketInfoForExpressSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSharesBucketInfoForExpressSyncWithOptions(request as! DescribeSharesBucketInfoForExpressSyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStorageBundleWithOptions(_ request: DescribeStorageBundleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeStorageBundleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageBundleId)) {
            query["StorageBundleId"] = request.storageBundleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeStorageBundle",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeStorageBundleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStorageBundle(_ request: DescribeStorageBundleRequest) async throws -> DescribeStorageBundleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeStorageBundleWithOptions(request as! DescribeStorageBundleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStorageBundlesWithOptions(_ request: DescribeStorageBundlesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeStorageBundlesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendBucketRegionId)) {
            query["BackendBucketRegionId"] = request.backendBucketRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeStorageBundles",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeStorageBundlesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStorageBundles(_ request: DescribeStorageBundlesRequest) async throws -> DescribeStorageBundlesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeStorageBundlesWithOptions(request as! DescribeStorageBundlesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSubscriptionPriceWithOptions(_ request: DescribeSubscriptionPriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSubscriptionPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cacheCloudEfficiencySize)) {
            query["CacheCloudEfficiencySize"] = request.cacheCloudEfficiencySize!;
        }
        if (!TeaUtils.Client.isUnset(request.cacheESSDPl1Size)) {
            query["CacheESSDPl1Size"] = request.cacheESSDPl1Size!;
        }
        if (!TeaUtils.Client.isUnset(request.cacheSSDSize)) {
            query["CacheSSDSize"] = request.cacheSSDSize!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayClass)) {
            query["GatewayClass"] = request.gatewayClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodQuantity)) {
            query["PeriodQuantity"] = request.periodQuantity!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSubscriptionPrice",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSubscriptionPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSubscriptionPrice(_ request: DescribeSubscriptionPriceRequest) async throws -> DescribeSubscriptionPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSubscriptionPriceWithOptions(request as! DescribeSubscriptionPriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTasksWithOptions(_ request: DescribeTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetId)) {
            query["TargetId"] = request.targetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTasks",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTasks(_ request: DescribeTasksRequest) async throws -> DescribeTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTasksWithOptions(request as! DescribeTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserBusinessStatusWithOptions(_ request: DescribeUserBusinessStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserBusinessStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserBusinessStatus",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserBusinessStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserBusinessStatus(_ request: DescribeUserBusinessStatusRequest) async throws -> DescribeUserBusinessStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserBusinessStatusWithOptions(request as! DescribeUserBusinessStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVSwitchesWithOptions(_ request: DescribeVSwitchesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVSwitchesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageBundleId)) {
            query["StorageBundleId"] = request.storageBundleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVSwitches",
            "version": "2018-05-11",
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
    public func describeVpcsWithOptions(_ request: DescribeVpcsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVpcsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageBundleId)) {
            query["StorageBundleId"] = request.storageBundleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVpcs",
            "version": "2018-05-11",
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
    public func describeZonesWithOptions(_ request: DescribeZonesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeZonesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeZones",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeZonesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeZones(_ request: DescribeZonesRequest) async throws -> DescribeZonesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeZonesWithOptions(request as! DescribeZonesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableGatewayLoggingWithOptions(_ request: DisableGatewayLoggingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableGatewayLoggingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableGatewayLogging",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableGatewayLoggingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableGatewayLogging(_ request: DisableGatewayLoggingRequest) async throws -> DisableGatewayLoggingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableGatewayLoggingWithOptions(request as! DisableGatewayLoggingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableGatewayNFSVersionWithOptions(_ request: DisableGatewayNFSVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableGatewayNFSVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.NFSVersion)) {
            query["NFSVersion"] = request.NFSVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableGatewayNFSVersion",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableGatewayNFSVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableGatewayNFSVersion(_ request: DisableGatewayNFSVersionRequest) async throws -> DisableGatewayNFSVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableGatewayNFSVersionWithOptions(request as! DisableGatewayNFSVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableGatewayIpv6WithOptions(_ request: EnableGatewayIpv6Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableGatewayIpv6Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableGatewayIpv6",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableGatewayIpv6Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableGatewayIpv6(_ request: EnableGatewayIpv6Request) async throws -> EnableGatewayIpv6Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableGatewayIpv6WithOptions(request as! EnableGatewayIpv6Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableGatewayLoggingWithOptions(_ request: EnableGatewayLoggingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableGatewayLoggingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableGatewayLogging",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableGatewayLoggingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableGatewayLogging(_ request: EnableGatewayLoggingRequest) async throws -> EnableGatewayLoggingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableGatewayLoggingWithOptions(request as! EnableGatewayLoggingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expandCacheDiskWithOptions(_ request: ExpandCacheDiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExpandCacheDiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localFilePath)) {
            query["LocalFilePath"] = request.localFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newSizeInGB)) {
            query["NewSizeInGB"] = request.newSizeInGB!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExpandCacheDisk",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExpandCacheDiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expandCacheDisk(_ request: ExpandCacheDiskRequest) async throws -> ExpandCacheDiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await expandCacheDiskWithOptions(request as! ExpandCacheDiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expandGatewayFileShareWithOptions(_ request: ExpandGatewayFileShareRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExpandGatewayFileShareResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExpandGatewayFileShare",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExpandGatewayFileShareResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expandGatewayFileShare(_ request: ExpandGatewayFileShareRequest) async throws -> ExpandGatewayFileShareResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await expandGatewayFileShareWithOptions(request as! ExpandGatewayFileShareRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expandGatewayNetworkBandwidthWithOptions(_ request: ExpandGatewayNetworkBandwidthRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExpandGatewayNetworkBandwidthResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newNetworkBandwidth)) {
            query["NewNetworkBandwidth"] = request.newNetworkBandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExpandGatewayNetworkBandwidth",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExpandGatewayNetworkBandwidthResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expandGatewayNetworkBandwidth(_ request: ExpandGatewayNetworkBandwidthRequest) async throws -> ExpandGatewayNetworkBandwidthResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await expandGatewayNetworkBandwidthWithOptions(request as! ExpandGatewayNetworkBandwidthRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateGatewayTokenWithOptions(_ request: GenerateGatewayTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateGatewayTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateGatewayToken",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateGatewayTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateGatewayToken(_ request: GenerateGatewayTokenRequest) async throws -> GenerateGatewayTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateGatewayTokenWithOptions(request as! GenerateGatewayTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateMqttTokenWithOptions(_ request: GenerateMqttTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateMqttTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientUUID)) {
            query["ClientUUID"] = request.clientUUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateMqttToken",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateMqttTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateMqttToken(_ request: GenerateMqttTokenRequest) async throws -> GenerateMqttTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateMqttTokenWithOptions(request as! GenerateMqttTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateStsTokenWithOptions(_ request: GenerateStsTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateStsTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expireInSeconds)) {
            query["ExpireInSeconds"] = request.expireInSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenType)) {
            query["TokenType"] = request.tokenType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateStsToken",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateStsTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateStsToken(_ request: GenerateStsTokenRequest) async throws -> GenerateStsTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateStsTokenWithOptions(request as! GenerateStsTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func handleGatewayAutoPlanWithOptions(_ request: HandleGatewayAutoPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> HandleGatewayAutoPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cancel)) {
            query["Cancel"] = request.cancel!;
        }
        if (!TeaUtils.Client.isUnset(request.delayHours)) {
            query["DelayHours"] = request.delayHours!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HandleGatewayAutoPlan",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HandleGatewayAutoPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func handleGatewayAutoPlan(_ request: HandleGatewayAutoPlanRequest) async throws -> HandleGatewayAutoPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await handleGatewayAutoPlanWithOptions(request as! HandleGatewayAutoPlanRequest, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2018-05-11",
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
    public func modifyGatewayWithOptions(_ request: ModifyGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyGateway",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyGateway(_ request: ModifyGatewayRequest) async throws -> ModifyGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyGatewayWithOptions(request as! ModifyGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyGatewayBlockVolumeWithOptions(_ request: ModifyGatewayBlockVolumeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyGatewayBlockVolumeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cacheConfig)) {
            query["CacheConfig"] = request.cacheConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyGatewayBlockVolume",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyGatewayBlockVolumeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyGatewayBlockVolume(_ request: ModifyGatewayBlockVolumeRequest) async throws -> ModifyGatewayBlockVolumeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyGatewayBlockVolumeWithOptions(request as! ModifyGatewayBlockVolumeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyGatewayClassWithOptions(_ request: ModifyGatewayClassRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyGatewayClassResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayClass)) {
            query["GatewayClass"] = request.gatewayClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyGatewayClass",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyGatewayClassResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyGatewayClass(_ request: ModifyGatewayClassRequest) async throws -> ModifyGatewayClassResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyGatewayClassWithOptions(request as! ModifyGatewayClassRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyGatewayFileShareWithOptions(_ request: ModifyGatewayFileShareRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyGatewayFileShareResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cacheConfig)) {
            query["CacheConfig"] = request.cacheConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyGatewayFileShare",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyGatewayFileShareResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyGatewayFileShare(_ request: ModifyGatewayFileShareRequest) async throws -> ModifyGatewayFileShareResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyGatewayFileShareWithOptions(request as! ModifyGatewayFileShareRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyGatewayFileShareWatermarkWithOptions(_ request: ModifyGatewayFileShareWatermarkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyGatewayFileShareWatermarkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermark)) {
            query["Watermark"] = request.watermark!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyGatewayFileShareWatermark",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyGatewayFileShareWatermarkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyGatewayFileShareWatermark(_ request: ModifyGatewayFileShareWatermarkRequest) async throws -> ModifyGatewayFileShareWatermarkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyGatewayFileShareWatermarkWithOptions(request as! ModifyGatewayFileShareWatermarkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyStorageBundleWithOptions(_ request: ModifyStorageBundleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyStorageBundleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageBundleId)) {
            query["StorageBundleId"] = request.storageBundleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyStorageBundle",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyStorageBundleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyStorageBundle(_ request: ModifyStorageBundleRequest) async throws -> ModifyStorageBundleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyStorageBundleWithOptions(request as! ModifyStorageBundleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openSgwServiceWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> OpenSgwServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenSgwService",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenSgwServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openSgwService() async throws -> OpenSgwServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await openSgwServiceWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateGatewayWithOptions(_ request: OperateGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateAction)) {
            query["OperateAction"] = request.operateAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateGateway",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateGateway(_ request: OperateGatewayRequest) async throws -> OperateGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await operateGatewayWithOptions(request as! OperateGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseServiceWithOptions(_ request: ReleaseServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseService",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseService(_ request: ReleaseServiceRequest) async throws -> ReleaseServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseServiceWithOptions(request as! ReleaseServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSharesFromExpressSyncWithOptions(_ request: RemoveSharesFromExpressSyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveSharesFromExpressSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expressSyncId)) {
            query["ExpressSyncId"] = request.expressSyncId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayShares)) {
            query["GatewayShares"] = request.gatewayShares ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveSharesFromExpressSync",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveSharesFromExpressSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSharesFromExpressSync(_ request: RemoveSharesFromExpressSyncRequest) async throws -> RemoveSharesFromExpressSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeSharesFromExpressSyncWithOptions(request as! RemoveSharesFromExpressSyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeTagsFromGatewayWithOptions(_ request: RemoveTagsFromGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveTagsFromGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveTagsFromGateway",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveTagsFromGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeTagsFromGateway(_ request: RemoveTagsFromGatewayRequest) async throws -> RemoveTagsFromGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeTagsFromGatewayWithOptions(request as! RemoveTagsFromGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportBlockVolumesWithOptions(_ request: ReportBlockVolumesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReportBlockVolumesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientUUID)) {
            query["ClientUUID"] = request.clientUUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.info)) {
            query["Info"] = request.info ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReportBlockVolumes",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReportBlockVolumesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportBlockVolumes(_ request: ReportBlockVolumesRequest) async throws -> ReportBlockVolumesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reportBlockVolumesWithOptions(request as! ReportBlockVolumesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportFileSharesWithOptions(_ request: ReportFileSharesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReportFileSharesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientUUID)) {
            query["ClientUUID"] = request.clientUUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.info)) {
            query["Info"] = request.info ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReportFileShares",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReportFileSharesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportFileShares(_ request: ReportFileSharesRequest) async throws -> ReportFileSharesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reportFileSharesWithOptions(request as! ReportFileSharesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportGatewayInfoWithOptions(_ request: ReportGatewayInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReportGatewayInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientUUID)) {
            query["ClientUUID"] = request.clientUUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayStatus)) {
            query["GatewayStatus"] = request.gatewayStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.info)) {
            query["Info"] = request.info ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.time)) {
            query["Time"] = request.time!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReportGatewayInfo",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReportGatewayInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportGatewayInfo(_ request: ReportGatewayInfoRequest) async throws -> ReportGatewayInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reportGatewayInfoWithOptions(request as! ReportGatewayInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportGatewayUsageWithOptions(_ request: ReportGatewayUsageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReportGatewayUsageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientUUID)) {
            query["ClientUUID"] = request.clientUUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usage)) {
            query["Usage"] = request.usage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReportGatewayUsage",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReportGatewayUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportGatewayUsage(_ request: ReportGatewayUsageRequest) async throws -> ReportGatewayUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reportGatewayUsageWithOptions(request as! ReportGatewayUsageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetGatewayPasswordWithOptions(_ request: ResetGatewayPasswordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetGatewayPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetGatewayPassword",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetGatewayPasswordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetGatewayPassword(_ request: ResetGatewayPasswordRequest) async throws -> ResetGatewayPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetGatewayPasswordWithOptions(request as! ResetGatewayPasswordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartFileSharesWithOptions(_ request: RestartFileSharesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartFileSharesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shareProtocol)) {
            query["ShareProtocol"] = request.shareProtocol ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartFileShares",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartFileSharesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartFileShares(_ request: RestartFileSharesRequest) async throws -> RestartFileSharesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await restartFileSharesWithOptions(request as! RestartFileSharesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setGatewayADInfoWithOptions(_ request: SetGatewayADInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetGatewayADInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isEnabled)) {
            query["IsEnabled"] = request.isEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverIp)) {
            query["ServerIp"] = request.serverIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetGatewayADInfo",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetGatewayADInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setGatewayADInfo(_ request: SetGatewayADInfoRequest) async throws -> SetGatewayADInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setGatewayADInfoWithOptions(request as! SetGatewayADInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setGatewayAutoUpgradeConfigurationWithOptions(_ request: SetGatewayAutoUpgradeConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetGatewayAutoUpgradeConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoUpgradeEndHour)) {
            query["AutoUpgradeEndHour"] = request.autoUpgradeEndHour!;
        }
        if (!TeaUtils.Client.isUnset(request.autoUpgradeStartHour)) {
            query["AutoUpgradeStartHour"] = request.autoUpgradeStartHour!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAutoUpgrade)) {
            query["IsAutoUpgrade"] = request.isAutoUpgrade!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetGatewayAutoUpgradeConfiguration",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetGatewayAutoUpgradeConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setGatewayAutoUpgradeConfiguration(_ request: SetGatewayAutoUpgradeConfigurationRequest) async throws -> SetGatewayAutoUpgradeConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setGatewayAutoUpgradeConfigurationWithOptions(request as! SetGatewayAutoUpgradeConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setGatewayDNSWithOptions(_ request: SetGatewayDNSRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetGatewayDNSResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dnsServer)) {
            query["DnsServer"] = request.dnsServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetGatewayDNS",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetGatewayDNSResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setGatewayDNS(_ request: SetGatewayDNSRequest) async throws -> SetGatewayDNSResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setGatewayDNSWithOptions(request as! SetGatewayDNSRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setGatewayLDAPInfoWithOptions(_ request: SetGatewayLDAPInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetGatewayLDAPInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseDN)) {
            query["BaseDN"] = request.baseDN ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isEnabled)) {
            query["IsEnabled"] = request.isEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.isTls)) {
            query["IsTls"] = request.isTls!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rootDN)) {
            query["RootDN"] = request.rootDN ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverIp)) {
            query["ServerIp"] = request.serverIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetGatewayLDAPInfo",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetGatewayLDAPInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setGatewayLDAPInfo(_ request: SetGatewayLDAPInfoRequest) async throws -> SetGatewayLDAPInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setGatewayLDAPInfoWithOptions(request as! SetGatewayLDAPInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchCSGClientsReverseSyncConfigurationWithOptions(_ tmpReq: SwitchCSGClientsReverseSyncConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchCSGClientsReverseSyncConfigurationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SwitchCSGClientsReverseSyncConfigurationShrinkRequest = SwitchCSGClientsReverseSyncConfigurationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.clientIds)) {
            request.clientIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.clientIds, "ClientIds", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientIdsShrink)) {
            query["ClientIds"] = request.clientIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientRegionId)) {
            query["ClientRegionId"] = request.clientRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isReverseSync)) {
            query["IsReverseSync"] = request.isReverseSync!;
        }
        if (!TeaUtils.Client.isUnset(request.reverseSyncInternalSecond)) {
            query["ReverseSyncInternalSecond"] = request.reverseSyncInternalSecond!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchCSGClientsReverseSyncConfiguration",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchCSGClientsReverseSyncConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchCSGClientsReverseSyncConfiguration(_ request: SwitchCSGClientsReverseSyncConfigurationRequest) async throws -> SwitchCSGClientsReverseSyncConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await switchCSGClientsReverseSyncConfigurationWithOptions(request as! SwitchCSGClientsReverseSyncConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchGatewayExpirationPolicyWithOptions(_ request: SwitchGatewayExpirationPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchGatewayExpirationPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchGatewayExpirationPolicy",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchGatewayExpirationPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchGatewayExpirationPolicy(_ request: SwitchGatewayExpirationPolicyRequest) async throws -> SwitchGatewayExpirationPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await switchGatewayExpirationPolicyWithOptions(request as! SwitchGatewayExpirationPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchToSubscriptionWithOptions(_ request: SwitchToSubscriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchToSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchToSubscription",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchToSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchToSubscription(_ request: SwitchToSubscriptionRequest) async throws -> SwitchToSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await switchToSubscriptionWithOptions(request as! SwitchToSubscriptionRequest, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2018-05-11",
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
    public func triggerGatewayRemoteSyncWithOptions(_ request: TriggerGatewayRemoteSyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TriggerGatewayRemoteSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            query["Path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TriggerGatewayRemoteSync",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TriggerGatewayRemoteSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerGatewayRemoteSync(_ request: TriggerGatewayRemoteSyncRequest) async throws -> TriggerGatewayRemoteSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await triggerGatewayRemoteSyncWithOptions(request as! TriggerGatewayRemoteSyncRequest, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2018-05-11",
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
    public func updateGatewayBlockVolumeWithOptions(_ request: UpdateGatewayBlockVolumeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGatewayBlockVolumeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chapEnabled)) {
            query["ChapEnabled"] = request.chapEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.chapInPassword)) {
            query["ChapInPassword"] = request.chapInPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chapInUser)) {
            query["ChapInUser"] = request.chapInUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGatewayBlockVolume",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGatewayBlockVolumeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayBlockVolume(_ request: UpdateGatewayBlockVolumeRequest) async throws -> UpdateGatewayBlockVolumeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateGatewayBlockVolumeWithOptions(request as! UpdateGatewayBlockVolumeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayFileShareWithOptions(_ request: UpdateGatewayFileShareRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGatewayFileShareResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessBasedEnumeration)) {
            query["AccessBasedEnumeration"] = request.accessBasedEnumeration!;
        }
        if (!TeaUtils.Client.isUnset(request.backendLimit)) {
            query["BackendLimit"] = request.backendLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.browsable)) {
            query["Browsable"] = request.browsable!;
        }
        if (!TeaUtils.Client.isUnset(request.bypassCacheRead)) {
            query["BypassCacheRead"] = request.bypassCacheRead!;
        }
        if (!TeaUtils.Client.isUnset(request.cacheMode)) {
            query["CacheMode"] = request.cacheMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSideCmk)) {
            query["ClientSideCmk"] = request.clientSideCmk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSideEncryption)) {
            query["ClientSideEncryption"] = request.clientSideEncryption!;
        }
        if (!TeaUtils.Client.isUnset(request.directIO)) {
            query["DirectIO"] = request.directIO!;
        }
        if (!TeaUtils.Client.isUnset(request.downloadLimit)) {
            query["DownloadLimit"] = request.downloadLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.fastReclaim)) {
            query["FastReclaim"] = request.fastReclaim!;
        }
        if (!TeaUtils.Client.isUnset(request.frontendLimit)) {
            query["FrontendLimit"] = request.frontendLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreDelete)) {
            query["IgnoreDelete"] = request.ignoreDelete!;
        }
        if (!TeaUtils.Client.isUnset(request.inPlace)) {
            query["InPlace"] = request.inPlace!;
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kmsRotatePeriod)) {
            query["KmsRotatePeriod"] = request.kmsRotatePeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.lagPeriod)) {
            query["LagPeriod"] = request.lagPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nfsV4Optimization)) {
            query["NfsV4Optimization"] = request.nfsV4Optimization!;
        }
        if (!TeaUtils.Client.isUnset(request.pollingInterval)) {
            query["PollingInterval"] = request.pollingInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.readOnlyClientList)) {
            query["ReadOnlyClientList"] = request.readOnlyClientList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readOnlyUserList)) {
            query["ReadOnlyUserList"] = request.readOnlyUserList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readWriteClientList)) {
            query["ReadWriteClientList"] = request.readWriteClientList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readWriteUserList)) {
            query["ReadWriteUserList"] = request.readWriteUserList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remoteSync)) {
            query["RemoteSync"] = request.remoteSync!;
        }
        if (!TeaUtils.Client.isUnset(request.remoteSyncDownload)) {
            query["RemoteSyncDownload"] = request.remoteSyncDownload!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverSideCmk)) {
            query["ServerSideCmk"] = request.serverSideCmk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverSideEncryption)) {
            query["ServerSideEncryption"] = request.serverSideEncryption!;
        }
        if (!TeaUtils.Client.isUnset(request.squash)) {
            query["Squash"] = request.squash ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transferAcceleration)) {
            query["TransferAcceleration"] = request.transferAcceleration!;
        }
        if (!TeaUtils.Client.isUnset(request.windowsAcl)) {
            query["WindowsAcl"] = request.windowsAcl!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGatewayFileShare",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGatewayFileShareResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayFileShare(_ request: UpdateGatewayFileShareRequest) async throws -> UpdateGatewayFileShareResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateGatewayFileShareWithOptions(request as! UpdateGatewayFileShareRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeGatewayWithOptions(_ request: UpgradeGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeGateway",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeGateway(_ request: UpgradeGatewayRequest) async throws -> UpgradeGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeGatewayWithOptions(request as! UpgradeGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadCSGClientLogWithOptions(_ request: UploadCSGClientLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadCSGClientLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientRegionId)) {
            query["ClientRegionId"] = request.clientRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadCSGClientLog",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadCSGClientLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadCSGClientLog(_ request: UploadCSGClientLogRequest) async throws -> UploadCSGClientLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadCSGClientLogWithOptions(request as! UploadCSGClientLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadGatewayLogWithOptions(_ request: UploadGatewayLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadGatewayLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gatewayId)) {
            query["GatewayId"] = request.gatewayId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadGatewayLog",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadGatewayLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadGatewayLog(_ request: UploadGatewayLogRequest) async throws -> UploadGatewayLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadGatewayLogWithOptions(request as! UploadGatewayLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateExpressSyncConfigWithOptions(_ request: ValidateExpressSyncConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateExpressSyncConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            query["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketPrefix)) {
            query["BucketPrefix"] = request.bucketPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketRegion)) {
            query["BucketRegion"] = request.bucketRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateExpressSyncConfig",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateExpressSyncConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateExpressSyncConfig(_ request: ValidateExpressSyncConfigRequest) async throws -> ValidateExpressSyncConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await validateExpressSyncConfigWithOptions(request as! ValidateExpressSyncConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateGatewayNameWithOptions(_ request: ValidateGatewayNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateGatewayNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageBundleId)) {
            query["StorageBundleId"] = request.storageBundleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateGatewayName",
            "version": "2018-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateGatewayNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateGatewayName(_ request: ValidateGatewayNameRequest) async throws -> ValidateGatewayNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await validateGatewayNameWithOptions(request as! ValidateGatewayNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
