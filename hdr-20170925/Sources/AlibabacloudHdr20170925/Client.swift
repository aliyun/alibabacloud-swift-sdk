import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._signatureAlgorithm = "v2"
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("hdr", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func changeRecoveryPointWithOptions(_ request: ChangeRecoveryPointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeRecoveryPointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eipAddressId)) {
            query["EipAddressId"] = request.eipAddressId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryCpu)) {
            query["RecoveryCpu"] = request.recoveryCpu!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryEssdPerformanceLevel)) {
            query["RecoveryEssdPerformanceLevel"] = request.recoveryEssdPerformanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryInstanceName)) {
            query["RecoveryInstanceName"] = request.recoveryInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryInstanceType)) {
            query["RecoveryInstanceType"] = request.recoveryInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryIpAddress)) {
            query["RecoveryIpAddress"] = request.recoveryIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryMemory)) {
            query["RecoveryMemory"] = request.recoveryMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryNetwork)) {
            query["RecoveryNetwork"] = request.recoveryNetwork ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPointId)) {
            query["RecoveryPointId"] = request.recoveryPointId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPointTime)) {
            query["RecoveryPointTime"] = request.recoveryPointTime!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPostScriptContent)) {
            query["RecoveryPostScriptContent"] = request.recoveryPostScriptContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPostScriptType)) {
            query["RecoveryPostScriptType"] = request.recoveryPostScriptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryReserveIp)) {
            query["RecoveryReserveIp"] = request.recoveryReserveIp!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryUseDhcp)) {
            query["RecoveryUseDhcp"] = request.recoveryUseDhcp!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryUseEssd)) {
            query["RecoveryUseEssd"] = request.recoveryUseEssd!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryUseSsd)) {
            query["RecoveryUseSsd"] = request.recoveryUseSsd!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeRecoveryPoint",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeRecoveryPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeRecoveryPoint(_ request: ChangeRecoveryPointRequest) async throws -> ChangeRecoveryPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeRecoveryPointWithOptions(request as! ChangeRecoveryPointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commitFailoverWithOptions(_ request: CommitFailoverRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CommitFailoverResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CommitFailover",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CommitFailoverResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commitFailover(_ request: CommitFailoverRequest) async throws -> CommitFailoverResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await commitFailoverWithOptions(request as! CommitFailoverRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecoveryPlanWithOptions(_ request: CreateRecoveryPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRecoveryPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.direction)) {
            query["Direction"] = request.direction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sitePairId)) {
            query["SitePairId"] = request.sitePairId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRecoveryPlan",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRecoveryPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecoveryPlan(_ request: CreateRecoveryPlanRequest) async throws -> CreateRecoveryPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRecoveryPlanWithOptions(request as! CreateRecoveryPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSitePairWithOptions(_ request: CreateSitePairRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSitePairResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.primarySiteName)) {
            query["PrimarySiteName"] = request.primarySiteName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primarySiteRegionId)) {
            query["PrimarySiteRegionId"] = request.primarySiteRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primarySiteType)) {
            query["PrimarySiteType"] = request.primarySiteType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primarySiteVpcId)) {
            query["PrimarySiteVpcId"] = request.primarySiteVpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primarySiteZoneId)) {
            query["PrimarySiteZoneId"] = request.primarySiteZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondarySiteName)) {
            query["SecondarySiteName"] = request.secondarySiteName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondarySiteRegionId)) {
            query["SecondarySiteRegionId"] = request.secondarySiteRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondarySiteType)) {
            query["SecondarySiteType"] = request.secondarySiteType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondarySiteVpcId)) {
            query["SecondarySiteVpcId"] = request.secondarySiteVpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondarySiteZoneId)) {
            query["SecondarySiteZoneId"] = request.secondarySiteZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sitePairType)) {
            query["SitePairType"] = request.sitePairType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSitePair",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSitePairResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSitePair(_ request: CreateSitePairRequest) async throws -> CreateSitePairResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSitePairWithOptions(request as! CreateSitePairRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecoveryPlanWithOptions(_ request: DeleteRecoveryPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRecoveryPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.recoveryPlanId)) {
            query["RecoveryPlanId"] = request.recoveryPlanId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRecoveryPlan",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRecoveryPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecoveryPlan(_ request: DeleteRecoveryPlanRequest) async throws -> DeleteRecoveryPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRecoveryPlanWithOptions(request as! DeleteRecoveryPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSitePairWithOptions(_ request: DeleteSitePairRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSitePairResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sitePairId)) {
            query["SitePairId"] = request.sitePairId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSitePair",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSitePairResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSitePair(_ request: DeleteSitePairRequest) async throws -> DeleteSitePairResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSitePairWithOptions(request as! DeleteSitePairRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableInstanceTypesWithOptions(_ request: DescribeAvailableInstanceTypesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAvailableInstanceTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskType)) {
            query["DiskType"] = request.diskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ioOptimized)) {
            query["IoOptimized"] = request.ioOptimized!;
        }
        if (!TeaUtils.Client.isUnset(request.network)) {
            query["Network"] = request.network ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClient)) {
            query["UserClient"] = request.userClient!;
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAvailableInstanceTypes",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAvailableInstanceTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableInstanceTypes(_ request: DescribeAvailableInstanceTypesRequest) async throws -> DescribeAvailableInstanceTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAvailableInstanceTypesWithOptions(request as! DescribeAvailableInstanceTypesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInfrastructuresWithOptions(_ request: DescribeInfrastructuresRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInfrastructuresResponse {
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
        if (!TeaUtils.Client.isUnset(request.siteId)) {
            query["SiteId"] = request.siteId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInfrastructures",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInfrastructuresResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInfrastructures(_ request: DescribeInfrastructuresRequest) async throws -> DescribeInfrastructuresResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInfrastructuresWithOptions(request as! DescribeInfrastructuresRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecoveryPlanWithOptions(_ request: DescribeRecoveryPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRecoveryPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.recoveryPlanId)) {
            query["RecoveryPlanId"] = request.recoveryPlanId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRecoveryPlan",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRecoveryPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecoveryPlan(_ request: DescribeRecoveryPlanRequest) async throws -> DescribeRecoveryPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRecoveryPlanWithOptions(request as! DescribeRecoveryPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecoveryPlansWithOptions(_ request: DescribeRecoveryPlansRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRecoveryPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sitePairId)) {
            query["SitePairId"] = request.sitePairId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRecoveryPlans",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRecoveryPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecoveryPlans(_ request: DescribeRecoveryPlansRequest) async throws -> DescribeRecoveryPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRecoveryPlansWithOptions(request as! DescribeRecoveryPlansRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecoveryPointsWithOptions(_ request: DescribeRecoveryPointsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRecoveryPointsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRecoveryPoints",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRecoveryPointsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecoveryPoints(_ request: DescribeRecoveryPointsRequest) async throws -> DescribeRecoveryPointsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRecoveryPointsWithOptions(request as! DescribeRecoveryPointsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServerWithOptions(_ request: DescribeServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServer",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServer(_ request: DescribeServerRequest) async throws -> DescribeServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServerWithOptions(request as! DescribeServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServersWithOptions(_ request: DescribeServersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServersResponse {
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
        if (!TeaUtils.Client.isUnset(request.serverIds)) {
            query["ServerIds"] = request.serverIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sitePairId)) {
            query["SitePairId"] = request.sitePairId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServers",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServers(_ request: DescribeServersRequest) async throws -> DescribeServersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServersWithOptions(request as! DescribeServersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSiteWithOptions(_ request: DescribeSiteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSiteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.siteId)) {
            query["SiteId"] = request.siteId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSite",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSiteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSite(_ request: DescribeSiteRequest) async throws -> DescribeSiteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSiteWithOptions(request as! DescribeSiteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSitePairWithOptions(_ request: DescribeSitePairRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSitePairResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sitePairId)) {
            query["SitePairId"] = request.sitePairId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSitePair",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSitePairResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSitePair(_ request: DescribeSitePairRequest) async throws -> DescribeSitePairResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSitePairWithOptions(request as! DescribeSitePairRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSitePairStatisticsWithOptions(_ request: DescribeSitePairStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSitePairStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sitePairId)) {
            query["SitePairId"] = request.sitePairId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSitePairStatistics",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSitePairStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSitePairStatistics(_ request: DescribeSitePairStatisticsRequest) async throws -> DescribeSitePairStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSitePairStatisticsWithOptions(request as! DescribeSitePairStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSitePairsWithOptions(_ request: DescribeSitePairsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSitePairsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sitePairType)) {
            query["SitePairType"] = request.sitePairType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSitePairs",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSitePairsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSitePairs(_ request: DescribeSitePairsRequest) async throws -> DescribeSitePairsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSitePairsWithOptions(request as! DescribeSitePairsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSummaryWithOptions(_ request: DescribeSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSummary",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSummary(_ request: DescribeSummaryRequest) async throws -> DescribeSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSummaryWithOptions(request as! DescribeSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTaskWithOptions(_ request: DescribeTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTask",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTask(_ request: DescribeTaskRequest) async throws -> DescribeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTaskWithOptions(request as! DescribeTaskRequest, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(request.sitePairId)) {
            query["SitePairId"] = request.sitePairId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTasks",
            "version": "2017-09-25",
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
    public func disableReplicationWithOptions(_ request: DisableReplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableReplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableReplication",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableReplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableReplication(_ request: DisableReplicationRequest) async throws -> DisableReplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableReplicationWithOptions(request as! DisableReplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableReplicationWithOptions(_ request: EnableReplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableReplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.crashConsistentPointPolicy)) {
            query["CrashConsistentPointPolicy"] = request.crashConsistentPointPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryNetwork)) {
            query["RecoveryNetwork"] = request.recoveryNetwork ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationNetwork)) {
            query["ReplicationNetwork"] = request.replicationNetwork ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationUseEssd)) {
            query["ReplicationUseEssd"] = request.replicationUseEssd!;
        }
        if (!TeaUtils.Client.isUnset(request.replicationUseSsd)) {
            query["ReplicationUseSsd"] = request.replicationUseSsd!;
        }
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableReplication",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableReplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableReplication(_ request: EnableReplicationRequest) async throws -> EnableReplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableReplicationWithOptions(request as! EnableReplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func failbackWithOptions(_ request: FailbackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FailbackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.recoveryCpu)) {
            query["RecoveryCpu"] = request.recoveryCpu!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryInfrastructureId)) {
            query["RecoveryInfrastructureId"] = request.recoveryInfrastructureId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryInstanceName)) {
            query["RecoveryInstanceName"] = request.recoveryInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryInstanceType)) {
            query["RecoveryInstanceType"] = request.recoveryInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryIpAddress)) {
            query["RecoveryIpAddress"] = request.recoveryIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryMemory)) {
            query["RecoveryMemory"] = request.recoveryMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryNetwork)) {
            query["RecoveryNetwork"] = request.recoveryNetwork ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPointId)) {
            query["RecoveryPointId"] = request.recoveryPointId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPostScriptContent)) {
            query["RecoveryPostScriptContent"] = request.recoveryPostScriptContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPostScriptType)) {
            query["RecoveryPostScriptType"] = request.recoveryPostScriptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryReserveIp)) {
            query["RecoveryReserveIp"] = request.recoveryReserveIp!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryUseDhcp)) {
            query["RecoveryUseDhcp"] = request.recoveryUseDhcp!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Failback",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FailbackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func failback(_ request: FailbackRequest) async throws -> FailbackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await failbackWithOptions(request as! FailbackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func forcedFailoverWithOptions(_ request: ForcedFailoverRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ForcedFailoverResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eipAddressId)) {
            query["EipAddressId"] = request.eipAddressId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryCpu)) {
            query["RecoveryCpu"] = request.recoveryCpu!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryEssdPerformanceLevel)) {
            query["RecoveryEssdPerformanceLevel"] = request.recoveryEssdPerformanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryInstanceName)) {
            query["RecoveryInstanceName"] = request.recoveryInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryInstanceType)) {
            query["RecoveryInstanceType"] = request.recoveryInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryIpAddress)) {
            query["RecoveryIpAddress"] = request.recoveryIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryMemory)) {
            query["RecoveryMemory"] = request.recoveryMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryNetwork)) {
            query["RecoveryNetwork"] = request.recoveryNetwork ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPointId)) {
            query["RecoveryPointId"] = request.recoveryPointId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPointTime)) {
            query["RecoveryPointTime"] = request.recoveryPointTime!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPostScriptContent)) {
            query["RecoveryPostScriptContent"] = request.recoveryPostScriptContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPostScriptType)) {
            query["RecoveryPostScriptType"] = request.recoveryPostScriptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryReserveIp)) {
            query["RecoveryReserveIp"] = request.recoveryReserveIp!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryUseDhcp)) {
            query["RecoveryUseDhcp"] = request.recoveryUseDhcp!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryUseEssd)) {
            query["RecoveryUseEssd"] = request.recoveryUseEssd!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryUseSsd)) {
            query["RecoveryUseSsd"] = request.recoveryUseSsd!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ForcedFailover",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ForcedFailoverResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func forcedFailover(_ request: ForcedFailoverRequest) async throws -> ForcedFailoverResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await forcedFailoverWithOptions(request as! ForcedFailoverRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerServersWithOptions(_ request: RegisterServersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterServersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentPort)) {
            query["AgentPort"] = request.agentPort!;
        }
        if (!TeaUtils.Client.isUnset(request.serverInstancesInfo)) {
            query["ServerInstancesInfo"] = request.serverInstancesInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sitePairId)) {
            query["SitePairId"] = request.sitePairId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterServers",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterServersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerServers(_ request: RegisterServersRequest) async throws -> RegisterServersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registerServersWithOptions(request as! RegisterServersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reversedDisableReplicationWithOptions(_ request: ReversedDisableReplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReversedDisableReplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReversedDisableReplication",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReversedDisableReplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reversedDisableReplication(_ request: ReversedDisableReplicationRequest) async throws -> ReversedDisableReplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reversedDisableReplicationWithOptions(request as! ReversedDisableReplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reversedEnableReplicationWithOptions(_ request: ReversedEnableReplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReversedEnableReplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appConsistentPointPolicy)) {
            query["AppConsistentPointPolicy"] = request.appConsistentPointPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crashConsistentPointPolicy)) {
            query["CrashConsistentPointPolicy"] = request.crashConsistentPointPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryNetwork)) {
            query["RecoveryNetwork"] = request.recoveryNetwork ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationComputeResource)) {
            query["ReplicationComputeResource"] = request.replicationComputeResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationDatastore)) {
            query["ReplicationDatastore"] = request.replicationDatastore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationDns)) {
            query["ReplicationDns"] = request.replicationDns ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationGateway)) {
            query["ReplicationGateway"] = request.replicationGateway ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationInfrastructureId)) {
            query["ReplicationInfrastructureId"] = request.replicationInfrastructureId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationIpAddress)) {
            query["ReplicationIpAddress"] = request.replicationIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationLocation)) {
            query["ReplicationLocation"] = request.replicationLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationNetMask)) {
            query["ReplicationNetMask"] = request.replicationNetMask ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationNetwork)) {
            query["ReplicationNetwork"] = request.replicationNetwork ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationUseDhcp)) {
            query["ReplicationUseDhcp"] = request.replicationUseDhcp!;
        }
        if (!TeaUtils.Client.isUnset(request.replicationUseOriginalInstance)) {
            query["ReplicationUseOriginalInstance"] = request.replicationUseOriginalInstance!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shadowInstanceType)) {
            query["ShadowInstanceType"] = request.shadowInstanceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReversedEnableReplication",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReversedEnableReplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reversedEnableReplication(_ request: ReversedEnableReplicationRequest) async throws -> ReversedEnableReplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reversedEnableReplicationWithOptions(request as! ReversedEnableReplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func testCleanupWithOptions(_ request: TestCleanupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TestCleanupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TestCleanup",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TestCleanupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func testCleanup(_ request: TestCleanupRequest) async throws -> TestCleanupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await testCleanupWithOptions(request as! TestCleanupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func testFailoverWithOptions(_ request: TestFailoverRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TestFailoverResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eipAddressId)) {
            query["EipAddressId"] = request.eipAddressId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryCpu)) {
            query["RecoveryCpu"] = request.recoveryCpu!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryEssdPerformanceLevel)) {
            query["RecoveryEssdPerformanceLevel"] = request.recoveryEssdPerformanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryInstanceName)) {
            query["RecoveryInstanceName"] = request.recoveryInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryInstanceType)) {
            query["RecoveryInstanceType"] = request.recoveryInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryIpAddress)) {
            query["RecoveryIpAddress"] = request.recoveryIpAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryMemory)) {
            query["RecoveryMemory"] = request.recoveryMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryNetwork)) {
            query["RecoveryNetwork"] = request.recoveryNetwork ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPointId)) {
            query["RecoveryPointId"] = request.recoveryPointId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPointTime)) {
            query["RecoveryPointTime"] = request.recoveryPointTime!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPostScriptContent)) {
            query["RecoveryPostScriptContent"] = request.recoveryPostScriptContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPostScriptType)) {
            query["RecoveryPostScriptType"] = request.recoveryPostScriptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryReserveIp)) {
            query["RecoveryReserveIp"] = request.recoveryReserveIp!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryUseDhcp)) {
            query["RecoveryUseDhcp"] = request.recoveryUseDhcp!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryUseEssd)) {
            query["RecoveryUseEssd"] = request.recoveryUseEssd!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryUseSsd)) {
            query["RecoveryUseSsd"] = request.recoveryUseSsd!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TestFailover",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TestFailoverResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func testFailover(_ request: TestFailoverRequest) async throws -> TestFailoverResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await testFailoverWithOptions(request as! TestFailoverRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerReversedRegisterWithOptions(_ request: TriggerReversedRegisterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TriggerReversedRegisterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TriggerReversedRegister",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TriggerReversedRegisterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerReversedRegister(_ request: TriggerReversedRegisterRequest) async throws -> TriggerReversedRegisterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await triggerReversedRegisterWithOptions(request as! TriggerReversedRegisterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unregisterServerWithOptions(_ request: UnregisterServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnregisterServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            query["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnregisterServer",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnregisterServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unregisterServer(_ request: UnregisterServerRequest) async throws -> UnregisterServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unregisterServerWithOptions(request as! UnregisterServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRecoveryPlanWithOptions(_ request: UpdateRecoveryPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRecoveryPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPlanId)) {
            query["RecoveryPlanId"] = request.recoveryPlanId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRecoveryPlan",
            "version": "2017-09-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRecoveryPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRecoveryPlan(_ request: UpdateRecoveryPlanRequest) async throws -> UpdateRecoveryPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRecoveryPlanWithOptions(request as! UpdateRecoveryPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
