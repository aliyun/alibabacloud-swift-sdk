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
        self._endpoint = try getEndpoint("starrocks", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func modifyCuWithOptions(_ request: ModifyCuRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCuResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fastMode)) {
            query["FastMode"] = request.fastMode!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCu",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyCu",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCuResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCu(_ request: ModifyCuRequest) async throws -> ModifyCuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyCuWithOptions(request as! ModifyCuRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCuPreCheckWithOptions(_ request: ModifyCuPreCheckRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCuPreCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCuPreCheck",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyCuPreCheck",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCuPreCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCuPreCheck(_ request: ModifyCuPreCheckRequest) async throws -> ModifyCuPreCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyCuPreCheckWithOptions(request as! ModifyCuPreCheckRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskNumberWithOptions(_ request: ModifyDiskNumberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDiskNumberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fastMode)) {
            query["FastMode"] = request.fastMode!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDiskNumber",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyDiskNumber",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDiskNumberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskNumber(_ request: ModifyDiskNumberRequest) async throws -> ModifyDiskNumberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyDiskNumberWithOptions(request as! ModifyDiskNumberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskPerformanceLevelWithOptions(_ request: ModifyDiskPerformanceLevelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDiskPerformanceLevelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDiskPerformanceLevel",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyDiskPerformanceLevel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDiskPerformanceLevelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskPerformanceLevel(_ request: ModifyDiskPerformanceLevelRequest) async throws -> ModifyDiskPerformanceLevelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyDiskPerformanceLevelWithOptions(request as! ModifyDiskPerformanceLevelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskSizeWithOptions(_ request: ModifyDiskSizeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDiskSizeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDiskSize",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyDiskSize",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDiskSizeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskSize(_ request: ModifyDiskSizeRequest) async throws -> ModifyDiskSizeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyDiskSizeWithOptions(request as! ModifyDiskSizeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodeNumberWithOptions(_ request: ModifyNodeNumberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNodeNumberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionOptionNo)) {
            query["PromotionOptionNo"] = request.promotionOptionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNodeNumber",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyNodeNumber",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNodeNumberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodeNumber(_ request: ModifyNodeNumberRequest) async throws -> ModifyNodeNumberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyNodeNumberWithOptions(request as! ModifyNodeNumberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodeNumberPreCheckWithOptions(_ request: ModifyNodeNumberPreCheckRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNodeNumberPreCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNodeNumberPreCheck",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/resourceChange/modifyNodeNumberPreCheck",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNodeNumberPreCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodeNumberPreCheck(_ request: ModifyNodeNumberPreCheckRequest) async throws -> ModifyNodeNumberPreCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyNodeNumberPreCheckWithOptions(request as! ModifyNodeNumberPreCheckRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUpgradableVersionsWithOptions(_ request: QueryUpgradableVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUpgradableVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minor)) {
            query["Minor"] = request.minor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUpgradableVersions",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/queryUpgradableVersions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUpgradableVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUpgradableVersions(_ request: QueryUpgradableVersionsRequest) async throws -> QueryUpgradableVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryUpgradableVersionsWithOptions(request as! QueryUpgradableVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstanceWithOptions(_ request: ReleaseInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseInstance",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/cluster/release",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstance(_ request: ReleaseInstanceRequest) async throws -> ReleaseInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await releaseInstanceWithOptions(request as! ReleaseInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartInstanceWithOptions(_ request: RestartInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fastMode)) {
            query["FastMode"] = request.fastMode!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartInstance",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/restartCluster",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartInstance(_ request: RestartInstanceRequest) async throws -> RestartInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await restartInstanceWithOptions(request as! RestartInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceNameWithOptions(_ request: UpdateInstanceNameRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterName)) {
            query["ClusterName"] = request.clusterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstanceName",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/cluster/update_name",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceName(_ request: UpdateInstanceNameRequest) async throws -> UpdateInstanceNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateInstanceNameWithOptions(request as! UpdateInstanceNameRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeVersionWithOptions(_ request: UpgradeVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fastMode)) {
            query["FastMode"] = request.fastMode!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minor)) {
            query["Minor"] = request.minor!;
        }
        if (!TeaUtils.Client.isUnset(request.targetVersion)) {
            query["TargetVersion"] = request.targetVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeVersion",
            "version": "2022-10-19",
            "protocol": "HTTPS",
            "pathname": "/webapi/starrocks/upgradeVersion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeVersion(_ request: UpgradeVersionRequest) async throws -> UpgradeVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await upgradeVersionWithOptions(request as! UpgradeVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
