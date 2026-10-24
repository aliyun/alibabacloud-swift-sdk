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
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("csasedr", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createClientRuleStrategyWithOptions(_ tmpReq: CreateClientRuleStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateClientRuleStrategyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateClientRuleStrategyShrinkRequest = CreateClientRuleStrategyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.excludeUserNameList)) {
            request.excludeUserNameListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.excludeUserNameList, "ExcludeUserNameList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.includeGroupIdList)) {
            request.includeGroupIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.includeGroupIdList, "IncludeGroupIdList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.portOnList)) {
            request.portOnListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.portOnList, "PortOnList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.softWareOnList)) {
            request.softWareOnListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.softWareOnList, "SoftWareOnList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionType)) {
            query["ActionType"] = request.actionType!;
        }
        if (!TeaUtils.Client.isUnset(request.allGroup)) {
            query["AllGroup"] = request.allGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.approvalId)) {
            query["ApprovalId"] = request.approvalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cmdline)) {
            query["Cmdline"] = request.cmdline ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeUserNameListShrink)) {
            query["ExcludeUserNameList"] = request.excludeUserNameListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            query["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inSwitch)) {
            query["InSwitch"] = request.inSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.includeGroupIdListShrink)) {
            query["IncludeGroupIdList"] = request.includeGroupIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainButtonTextCh)) {
            query["MainButtonTextCh"] = request.mainButtonTextCh ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainButtonTextEn)) {
            query["MainButtonTextEn"] = request.mainButtonTextEn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchMode)) {
            query["MatchMode"] = request.matchMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchTargetIds)) {
            query["MatchTargetIds"] = request.matchTargetIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.md5List)) {
            query["Md5List"] = request.md5List ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minorButtonTextCh)) {
            query["MinorButtonTextCh"] = request.minorButtonTextCh ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minorButtonTextEn)) {
            query["MinorButtonTextEn"] = request.minorButtonTextEn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newFilePath)) {
            query["NewFilePath"] = request.newFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outSwitch)) {
            query["OutSwitch"] = request.outSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.parentCmdline)) {
            query["ParentCmdline"] = request.parentCmdline ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentProcPath)) {
            query["ParentProcPath"] = request.parentProcPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            query["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyType)) {
            query["PolicyType"] = request.policyType!;
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portOnListShrink)) {
            query["PortOnList"] = request.portOnListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            query["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.procPath)) {
            query["ProcPath"] = request.procPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registryContent)) {
            query["RegistryContent"] = request.registryContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registryKey)) {
            query["RegistryKey"] = request.registryKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType!;
        }
        if (!TeaUtils.Client.isUnset(request.selectionKey)) {
            query["SelectionKey"] = request.selectionKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.softWareOnListShrink)) {
            query["SoftWareOnList"] = request.softWareOnListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.strategySourceType)) {
            query["StrategySourceType"] = request.strategySourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportsApproval)) {
            query["SupportsApproval"] = request.supportsApproval!;
        }
        if (!TeaUtils.Client.isUnset(request.usContent)) {
            query["UsContent"] = request.usContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usTitle)) {
            query["UsTitle"] = request.usTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zhContent)) {
            query["ZhContent"] = request.zhContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zhTitle)) {
            query["ZhTitle"] = request.zhTitle ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateClientRuleStrategy",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateClientRuleStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClientRuleStrategy(_ request: CreateClientRuleStrategyRequest) async throws -> CreateClientRuleStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createClientRuleStrategyWithOptions(request as! CreateClientRuleStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSelectionConfigWithOptions(_ request: CreateSelectionConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSelectionConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSelectionConfig",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSelectionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSelectionConfig(_ request: CreateSelectionConfigRequest) async throws -> CreateSelectionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSelectionConfigWithOptions(request as! CreateSelectionConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSimilarSecurityEventsQueryTaskWithOptions(_ request: CreateSimilarSecurityEventsQueryTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSimilarSecurityEventsQueryTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityEventId)) {
            query["SecurityEventId"] = request.securityEventId!;
        }
        if (!TeaUtils.Client.isUnset(request.similarEventScenarioCode)) {
            query["SimilarEventScenarioCode"] = request.similarEventScenarioCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSimilarSecurityEventsQueryTask",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSimilarSecurityEventsQueryTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSimilarSecurityEventsQueryTask(_ request: CreateSimilarSecurityEventsQueryTaskRequest) async throws -> CreateSimilarSecurityEventsQueryTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSimilarSecurityEventsQueryTaskWithOptions(request as! CreateSimilarSecurityEventsQueryTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClientRuleStrategyWithOptions(_ tmpReq: DeleteClientRuleStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteClientRuleStrategyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteClientRuleStrategyShrinkRequest = DeleteClientRuleStrategyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.idList)) {
            request.idListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.idList, "IdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.idListShrink)) {
            query["IdList"] = request.idListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteClientRuleStrategy",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteClientRuleStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClientRuleStrategy(_ request: DeleteClientRuleStrategyRequest) async throws -> DeleteClientRuleStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteClientRuleStrategyWithOptions(request as! DeleteClientRuleStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecurityEventMarkMissListWithOptions(_ request: DeleteSecurityEventMarkMissListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSecurityEventMarkMissListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ids)) {
            query["Ids"] = request.ids ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSecurityEventMarkMissList",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSecurityEventMarkMissListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecurityEventMarkMissList(_ request: DeleteSecurityEventMarkMissListRequest) async throws -> DeleteSecurityEventMarkMissListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSecurityEventMarkMissListWithOptions(request as! DeleteSecurityEventMarkMissListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAssetScopeWithOptions(_ request: DescribeAssetScopeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAssetScopeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAssetScope",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAssetScopeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAssetScope(_ request: DescribeAssetScopeRequest) async throws -> DescribeAssetScopeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAssetScopeWithOptions(request as! DescribeAssetScopeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNsasSuspEventTypeWithOptions(_ request: DescribeNsasSuspEventTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNsasSuspEventTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.containerFieldName)) {
            query["ContainerFieldName"] = request.containerFieldName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerFieldValue)) {
            query["ContainerFieldValue"] = request.containerFieldValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            query["SourceIp"] = request.sourceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuids)) {
            query["Uuids"] = request.uuids ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNsasSuspEventType",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNsasSuspEventTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNsasSuspEventType(_ request: DescribeNsasSuspEventTypeRequest) async throws -> DescribeNsasSuspEventTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNsasSuspEventTypeWithOptions(request as! DescribeNsasSuspEventTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventMarkMissListWithOptions(_ request: DescribeSecurityEventMarkMissListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityEventMarkMissListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.disposalWay)) {
            query["DisposalWay"] = request.disposalWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventName)) {
            query["EventName"] = request.eventName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityEventMarkMissList",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityEventMarkMissListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventMarkMissList(_ request: DescribeSecurityEventMarkMissListRequest) async throws -> DescribeSecurityEventMarkMissListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityEventMarkMissListWithOptions(request as! DescribeSecurityEventMarkMissListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventOperationStatusWithOptions(_ request: DescribeSecurityEventOperationStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityEventOperationStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityEventIds)) {
            query["SecurityEventIds"] = request.securityEventIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityEventOperationStatus",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityEventOperationStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventOperationStatus(_ request: DescribeSecurityEventOperationStatusRequest) async throws -> DescribeSecurityEventOperationStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityEventOperationStatusWithOptions(request as! DescribeSecurityEventOperationStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventOperationsWithOptions(_ request: DescribeSecurityEventOperationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityEventOperationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityEventId)) {
            query["SecurityEventId"] = request.securityEventId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityEventOperations",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityEventOperationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventOperations(_ request: DescribeSecurityEventOperationsRequest) async throws -> DescribeSecurityEventOperationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityEventOperationsWithOptions(request as! DescribeSecurityEventOperationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSimilarEventScenariosWithOptions(_ request: DescribeSimilarEventScenariosRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSimilarEventScenariosResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityEventId)) {
            query["SecurityEventId"] = request.securityEventId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSimilarEventScenarios",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSimilarEventScenariosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSimilarEventScenarios(_ request: DescribeSimilarEventScenariosRequest) async throws -> DescribeSimilarEventScenariosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSimilarEventScenariosWithOptions(request as! DescribeSimilarEventScenariosRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSimilarSecurityEventsWithOptions(_ request: DescribeSimilarSecurityEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSimilarSecurityEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSimilarSecurityEvents",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSimilarSecurityEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSimilarSecurityEvents(_ request: DescribeSimilarSecurityEventsRequest) async throws -> DescribeSimilarSecurityEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSimilarSecurityEventsWithOptions(request as! DescribeSimilarSecurityEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSuspEventsWithOptions(_ request: DescribeSuspEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSuspEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmEventName)) {
            query["AlarmEventName"] = request.alarmEventName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alarmUniqueInfo)) {
            query["AlarmUniqueInfo"] = request.alarmUniqueInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetsTypeList)) {
            query["AssetsTypeList"] = request.assetsTypeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerFieldName)) {
            query["ContainerFieldName"] = request.containerFieldName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerFieldValue)) {
            query["ContainerFieldValue"] = request.containerFieldValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.dealed)) {
            query["Dealed"] = request.dealed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.department)) {
            query["Department"] = request.department ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventNames)) {
            query["EventNames"] = request.eventNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.innerIp)) {
            query["InnerIp"] = request.innerIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.levels)) {
            query["Levels"] = request.levels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateErrorCodeList)) {
            query["OperateErrorCodeList"] = request.operateErrorCodeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.operateTimeEnd)) {
            query["OperateTimeEnd"] = request.operateTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateTimeStart)) {
            query["OperateTimeStart"] = request.operateTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.parentEventTypes)) {
            query["ParentEventTypes"] = request.parentEventTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortColumn)) {
            query["SortColumn"] = request.sortColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortType)) {
            query["SortType"] = request.sortType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            query["SourceIp"] = request.sourceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcIp)) {
            query["SrcIp"] = request.srcIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strictMode)) {
            query["StrictMode"] = request.strictMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            query["TargetType"] = request.targetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeEnd)) {
            query["TimeEnd"] = request.timeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStart)) {
            query["TimeStart"] = request.timeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueInfo)) {
            query["UniqueInfo"] = request.uniqueInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuids)) {
            query["Uuids"] = request.uuids ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tacticId)) {
            body["TacticId"] = request.tacticId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSuspEvents",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSuspEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSuspEvents(_ request: DescribeSuspEventsRequest) async throws -> DescribeSuspEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSuspEventsWithOptions(request as! DescribeSuspEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClientRuleStrategyDetailWithOptions(_ request: GetClientRuleStrategyDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClientRuleStrategyDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClientRuleStrategyDetail",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClientRuleStrategyDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClientRuleStrategyDetail(_ request: GetClientRuleStrategyDetailRequest) async throws -> GetClientRuleStrategyDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getClientRuleStrategyDetailWithOptions(request as! GetClientRuleStrategyDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClientRuleStrategyStatisticsWithOptions(_ request: GetClientRuleStrategyStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClientRuleStrategyStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyType)) {
            query["PolicyType"] = request.policyType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClientRuleStrategyStatistics",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClientRuleStrategyStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClientRuleStrategyStatistics(_ request: GetClientRuleStrategyStatisticsRequest) async throws -> GetClientRuleStrategyStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getClientRuleStrategyStatisticsWithOptions(request as! GetClientRuleStrategyStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func handleSecurityEventsWithOptions(_ request: HandleSecurityEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> HandleSecurityEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.markBatch)) {
            query["MarkBatch"] = request.markBatch!;
        }
        if (!TeaUtils.Client.isUnset(request.markMissParam)) {
            query["MarkMissParam"] = request.markMissParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationCode)) {
            query["OperationCode"] = request.operationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationParams)) {
            query["OperationParams"] = request.operationParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityEventIds)) {
            query["SecurityEventIds"] = request.securityEventIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HandleSecurityEvents",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HandleSecurityEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func handleSecurityEvents(_ request: HandleSecurityEventsRequest) async throws -> HandleSecurityEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await handleSecurityEventsWithOptions(request as! HandleSecurityEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func handleSimilarSecurityEventsWithOptions(_ request: HandleSimilarSecurityEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> HandleSimilarSecurityEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.markMissParam)) {
            query["MarkMissParam"] = request.markMissParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationCode)) {
            query["OperationCode"] = request.operationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationParams)) {
            query["OperationParams"] = request.operationParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HandleSimilarSecurityEvents",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HandleSimilarSecurityEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func handleSimilarSecurityEvents(_ request: HandleSimilarSecurityEventsRequest) async throws -> HandleSimilarSecurityEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await handleSimilarSecurityEventsWithOptions(request as! HandleSimilarSecurityEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClientRuleStrategyWithOptions(_ request: ListClientRuleStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClientRuleStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.policyType)) {
            query["PolicyType"] = request.policyType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClientRuleStrategy",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClientRuleStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClientRuleStrategy(_ request: ListClientRuleStrategyRequest) async throws -> ListClientRuleStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listClientRuleStrategyWithOptions(request as! ListClientRuleStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSystemConfigRulesWithOptions(_ tmpReq: ListSystemConfigRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSystemConfigRulesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListSystemConfigRulesShrinkRequest = ListSystemConfigRulesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.aggregationIds)) {
            request.aggregationIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.aggregationIds, "AggregationIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ruleTypes)) {
            request.ruleTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ruleTypes, "RuleTypes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregationIdsShrink)) {
            query["AggregationIds"] = request.aggregationIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleTypesShrink)) {
            query["RuleTypes"] = request.ruleTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selectionKey)) {
            query["SelectionKey"] = request.selectionKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemType)) {
            query["SystemType"] = request.systemType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSystemConfigRules",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSystemConfigRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSystemConfigRules(_ request: ListSystemConfigRulesRequest) async throws -> ListSystemConfigRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSystemConfigRulesWithOptions(request as! ListSystemConfigRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateTargetConfigWithOptions(_ tmpReq: OperateTargetConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateTargetConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: OperateTargetConfigShrinkRequest = OperateTargetConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.switchIdList)) {
            request.switchIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.switchIdList, "SwitchIdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.selectionKey)) {
            query["SelectionKey"] = request.selectionKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchIdListShrink)) {
            query["SwitchIdList"] = request.switchIdListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateTargetConfig",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateTargetConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateTargetConfig(_ request: OperateTargetConfigRequest) async throws -> OperateTargetConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await operateTargetConfigWithOptions(request as! OperateTargetConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAssetScopeWithOptions(_ request: UpdateAssetScopeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAssetScopeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.matchMode)) {
            query["MatchMode"] = request.matchMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchTargetIds)) {
            query["MatchTargetIds"] = request.matchTargetIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAssetScope",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAssetScopeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAssetScope(_ request: UpdateAssetScopeRequest) async throws -> UpdateAssetScopeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAssetScopeWithOptions(request as! UpdateAssetScopeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateClientRuleStrategyWithOptions(_ tmpReq: UpdateClientRuleStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateClientRuleStrategyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateClientRuleStrategyShrinkRequest = UpdateClientRuleStrategyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.excludeUserNameList)) {
            request.excludeUserNameListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.excludeUserNameList, "ExcludeUserNameList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.includeGroupIdList)) {
            request.includeGroupIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.includeGroupIdList, "IncludeGroupIdList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.portOnList)) {
            request.portOnListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.portOnList, "PortOnList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.softWareOnList)) {
            request.softWareOnListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.softWareOnList, "SoftWareOnList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionType)) {
            query["ActionType"] = request.actionType!;
        }
        if (!TeaUtils.Client.isUnset(request.allGroup)) {
            query["AllGroup"] = request.allGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.approvalId)) {
            query["ApprovalId"] = request.approvalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cmdline)) {
            query["Cmdline"] = request.cmdline ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeUserNameListShrink)) {
            query["ExcludeUserNameList"] = request.excludeUserNameListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            query["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.inSwitch)) {
            query["InSwitch"] = request.inSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.includeGroupIdListShrink)) {
            query["IncludeGroupIdList"] = request.includeGroupIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainButtonTextCh)) {
            query["MainButtonTextCh"] = request.mainButtonTextCh ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainButtonTextEn)) {
            query["MainButtonTextEn"] = request.mainButtonTextEn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchMode)) {
            query["MatchMode"] = request.matchMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchTargetIds)) {
            query["MatchTargetIds"] = request.matchTargetIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.md5List)) {
            query["Md5List"] = request.md5List ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minorButtonTextCh)) {
            query["MinorButtonTextCh"] = request.minorButtonTextCh ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minorButtonTextEn)) {
            query["MinorButtonTextEn"] = request.minorButtonTextEn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newFilePath)) {
            query["NewFilePath"] = request.newFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outSwitch)) {
            query["OutSwitch"] = request.outSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.parentCmdline)) {
            query["ParentCmdline"] = request.parentCmdline ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentProcPath)) {
            query["ParentProcPath"] = request.parentProcPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            query["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyType)) {
            query["PolicyType"] = request.policyType!;
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portOnListShrink)) {
            query["PortOnList"] = request.portOnListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            query["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.procPath)) {
            query["ProcPath"] = request.procPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registryContent)) {
            query["RegistryContent"] = request.registryContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registryKey)) {
            query["RegistryKey"] = request.registryKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType!;
        }
        if (!TeaUtils.Client.isUnset(request.softWareOnListShrink)) {
            query["SoftWareOnList"] = request.softWareOnListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.strategySourceType)) {
            query["StrategySourceType"] = request.strategySourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportsApproval)) {
            query["SupportsApproval"] = request.supportsApproval!;
        }
        if (!TeaUtils.Client.isUnset(request.usContent)) {
            query["UsContent"] = request.usContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usTitle)) {
            query["UsTitle"] = request.usTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zhContent)) {
            query["ZhContent"] = request.zhContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zhTitle)) {
            query["ZhTitle"] = request.zhTitle ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateClientRuleStrategy",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateClientRuleStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateClientRuleStrategy(_ request: UpdateClientRuleStrategyRequest) async throws -> UpdateClientRuleStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateClientRuleStrategyWithOptions(request as! UpdateClientRuleStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
