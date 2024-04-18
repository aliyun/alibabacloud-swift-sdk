import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "central"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("dms-enterprise", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addDesensitizationRuleWithOptions(_ request: AddDesensitizationRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDesensitizationRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.functionType)) {
            query["FunctionType"] = request.functionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleDescription)) {
            query["RuleDescription"] = request.ruleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.functionParams)) {
            bodyFlat["FunctionParams"] = request.functionParams ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDesensitizationRule",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDesensitizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDesensitizationRule(_ request: AddDesensitizationRuleRequest) async throws -> AddDesensitizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDesensitizationRuleWithOptions(request as! AddDesensitizationRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addInstanceWithOptions(_ request: AddInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataLinkName)) {
            query["DataLinkName"] = request.dataLinkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databasePassword)) {
            query["DatabasePassword"] = request.databasePassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseUser)) {
            query["DatabaseUser"] = request.databaseUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbaId)) {
            query["DbaId"] = request.dbaId!;
        }
        if (!TeaUtils.Client.isUnset(request.ddlOnline)) {
            query["DdlOnline"] = request.ddlOnline!;
        }
        if (!TeaUtils.Client.isUnset(request.ecsInstanceId)) {
            query["EcsInstanceId"] = request.ecsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsRegion)) {
            query["EcsRegion"] = request.ecsRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSellCommon)) {
            query["EnableSellCommon"] = request.enableSellCommon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSellSitd)) {
            query["EnableSellSitd"] = request.enableSellSitd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSellStable)) {
            query["EnableSellStable"] = request.enableSellStable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSellTrust)) {
            query["EnableSellTrust"] = request.enableSellTrust ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envType)) {
            query["EnvType"] = request.envType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exportTimeout)) {
            query["ExportTimeout"] = request.exportTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.host)) {
            query["Host"] = request.host ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceAlias)) {
            query["InstanceAlias"] = request.instanceAlias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceSource)) {
            query["InstanceSource"] = request.instanceSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            query["NetworkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.queryTimeout)) {
            query["QueryTimeout"] = request.queryTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.safeRule)) {
            query["SafeRule"] = request.safeRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sid)) {
            query["Sid"] = request.sid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipTest)) {
            query["SkipTest"] = request.skipTest!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["TemplateType"] = request.templateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.useDsql)) {
            query["UseDsql"] = request.useDsql!;
        }
        if (!TeaUtils.Client.isUnset(request.useSsl)) {
            query["UseSsl"] = request.useSsl!;
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddInstance",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addInstance(_ request: AddInstanceRequest) async throws -> AddInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addInstanceWithOptions(request as! AddInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addLhMembersWithOptions(_ tmpReq: AddLhMembersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddLhMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddLhMembersShrinkRequest = AddLhMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            query["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            query["ObjectId"] = request.objectId!;
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            query["ObjectType"] = request.objectType!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddLhMembers",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddLhMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addLhMembers(_ request: AddLhMembersRequest) async throws -> AddLhMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addLhMembersWithOptions(request as! AddLhMembersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addLogicTableRouteConfigWithOptions(_ request: AddLogicTableRouteConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddLogicTableRouteConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.routeExpr)) {
            query["RouteExpr"] = request.routeExpr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeKey)) {
            query["RouteKey"] = request.routeKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableId)) {
            query["TableId"] = request.tableId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddLogicTableRouteConfig",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddLogicTableRouteConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addLogicTableRouteConfig(_ request: AddLogicTableRouteConfigRequest) async throws -> AddLogicTableRouteConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addLogicTableRouteConfigWithOptions(request as! AddLogicTableRouteConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTaskFlowEdgesWithOptions(_ tmpReq: AddTaskFlowEdgesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddTaskFlowEdgesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddTaskFlowEdgesShrinkRequest = AddTaskFlowEdgesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.edges)) {
            request.edgesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.edges, "Edges", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.edgesShrink)) {
            query["Edges"] = request.edgesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddTaskFlowEdges",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddTaskFlowEdgesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTaskFlowEdges(_ request: AddTaskFlowEdgesRequest) async throws -> AddTaskFlowEdgesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addTaskFlowEdgesWithOptions(request as! AddTaskFlowEdgesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func analyzeSQLLineageWithOptions(_ request: AnalyzeSQLLineageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AnalyzeSQLLineageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId!;
        }
        if (!TeaUtils.Client.isUnset(request.sqlContent)) {
            query["SqlContent"] = request.sqlContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AnalyzeSQLLineage",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AnalyzeSQLLineageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func analyzeSQLLineage(_ request: AnalyzeSQLLineageRequest) async throws -> AnalyzeSQLLineageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await analyzeSQLLineageWithOptions(request as! AnalyzeSQLLineageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func approveOrderWithOptions(_ request: ApproveOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApproveOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.approvalNodeId)) {
            query["ApprovalNodeId"] = request.approvalNodeId!;
        }
        if (!TeaUtils.Client.isUnset(request.approvalNodePos)) {
            query["ApprovalNodePos"] = request.approvalNodePos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.approvalType)) {
            query["ApprovalType"] = request.approvalType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newApprover)) {
            query["NewApprover"] = request.newApprover!;
        }
        if (!TeaUtils.Client.isUnset(request.newApproverList)) {
            query["NewApproverList"] = request.newApproverList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oldApprover)) {
            query["OldApprover"] = request.oldApprover!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.workflowInstanceId)) {
            query["WorkflowInstanceId"] = request.workflowInstanceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApproveOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApproveOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func approveOrder(_ request: ApproveOrderRequest) async throws -> ApproveOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await approveOrderWithOptions(request as! ApproveOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func backFillWithOptions(_ tmpReq: BackFillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BackFillResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BackFillShrinkRequest = BackFillShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filterNodeIds)) {
            request.filterNodeIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterNodeIds, "FilterNodeIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.startNodeIds)) {
            request.startNodeIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.startNodeIds, "StartNodeIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.asc)) {
            query["Asc"] = request.asc!;
        }
        if (!TeaUtils.Client.isUnset(request.backFillDate)) {
            query["BackFillDate"] = request.backFillDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backFillDateBegin)) {
            query["BackFillDateBegin"] = request.backFillDateBegin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backFillDateEnd)) {
            query["BackFillDateEnd"] = request.backFillDateEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.filterNodeIdsShrink)) {
            query["FilterNodeIds"] = request.filterNodeIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyDagId)) {
            query["HistoryDagId"] = request.historyDagId!;
        }
        if (!TeaUtils.Client.isUnset(request.interval)) {
            query["Interval"] = request.interval!;
        }
        if (!TeaUtils.Client.isUnset(request.isTriggerSubTree)) {
            query["IsTriggerSubTree"] = request.isTriggerSubTree!;
        }
        if (!TeaUtils.Client.isUnset(request.startNodeIdsShrink)) {
            query["StartNodeIds"] = request.startNodeIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BackFill",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BackFillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func backFill(_ request: BackFillRequest) async throws -> BackFillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await backFillWithOptions(request as! BackFillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func buyPayAsYouGoOrderWithOptions(_ request: BuyPayAsYouGoOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BuyPayAsYouGoOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityType)) {
            query["CommodityType"] = request.commodityType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.insNum)) {
            query["InsNum"] = request.insNum!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.versionType)) {
            query["VersionType"] = request.versionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BuyPayAsYouGoOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BuyPayAsYouGoOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func buyPayAsYouGoOrder(_ request: BuyPayAsYouGoOrderRequest) async throws -> BuyPayAsYouGoOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await buyPayAsYouGoOrderWithOptions(request as! BuyPayAsYouGoOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeColumnSecLevelWithOptions(_ request: ChangeColumnSecLevelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeColumnSecLevelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnName)) {
            query["ColumnName"] = request.columnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId!;
        }
        if (!TeaUtils.Client.isUnset(request.isLogic)) {
            query["IsLogic"] = request.isLogic!;
        }
        if (!TeaUtils.Client.isUnset(request.newLevel)) {
            query["NewLevel"] = request.newLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeColumnSecLevel",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeColumnSecLevelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeColumnSecLevel(_ request: ChangeColumnSecLevelRequest) async throws -> ChangeColumnSecLevelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeColumnSecLevelWithOptions(request as! ChangeColumnSecLevelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeColumnSecurityLevelWithOptions(_ request: ChangeColumnSecurityLevelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeColumnSecurityLevelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnName)) {
            query["ColumnName"] = request.columnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId!;
        }
        if (!TeaUtils.Client.isUnset(request.isLogic)) {
            query["IsLogic"] = request.isLogic!;
        }
        if (!TeaUtils.Client.isUnset(request.newSensitivityLevel)) {
            query["NewSensitivityLevel"] = request.newSensitivityLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeColumnSecurityLevel",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeColumnSecurityLevelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeColumnSecurityLevel(_ request: ChangeColumnSecurityLevelRequest) async throws -> ChangeColumnSecurityLevelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeColumnSecurityLevelWithOptions(request as! ChangeColumnSecurityLevelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeLhDagOwnerWithOptions(_ request: ChangeLhDagOwnerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeLhDagOwnerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerUserId)) {
            query["OwnerUserId"] = request.ownerUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeLhDagOwner",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeLhDagOwnerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeLhDagOwner(_ request: ChangeLhDagOwnerRequest) async throws -> ChangeLhDagOwnerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeLhDagOwnerWithOptions(request as! ChangeLhDagOwnerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeOrderWithOptions(_ request: CloseOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloseOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.closeReason)) {
            query["CloseReason"] = request.closeReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloseOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloseOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeOrder(_ request: CloseOrderRequest) async throws -> CloseOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await closeOrderWithOptions(request as! CloseOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAuthorityTemplateWithOptions(_ request: CreateAuthorityTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAuthorityTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAuthorityTemplate",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAuthorityTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAuthorityTemplate(_ request: CreateAuthorityTemplateRequest) async throws -> CreateAuthorityTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAuthorityTemplateWithOptions(request as! CreateAuthorityTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataArchiveOrderWithOptions(_ tmpReq: CreateDataArchiveOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataArchiveOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDataArchiveOrderShrinkRequest = CreateDataArchiveOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.param)) {
            request.paramShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.param, "Param", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.relatedUserList)) {
            request.relatedUserListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedUserList, "RelatedUserList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramShrink)) {
            query["Param"] = request.paramShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            query["ParentId"] = request.parentId!;
        }
        if (!TeaUtils.Client.isUnset(request.pluginType)) {
            query["PluginType"] = request.pluginType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedUserListShrink)) {
            query["RelatedUserList"] = request.relatedUserListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataArchiveOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataArchiveOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataArchiveOrder(_ request: CreateDataArchiveOrderRequest) async throws -> CreateDataArchiveOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataArchiveOrderWithOptions(request as! CreateDataArchiveOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataCorrectOrderWithOptions(_ tmpReq: CreateDataCorrectOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataCorrectOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDataCorrectOrderShrinkRequest = CreateDataCorrectOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.param)) {
            request.paramShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.param, "Param", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.relatedUserList)) {
            request.relatedUserListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedUserList, "RelatedUserList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachmentKey)) {
            query["AttachmentKey"] = request.attachmentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramShrink)) {
            query["Param"] = request.paramShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedUserListShrink)) {
            query["RelatedUserList"] = request.relatedUserListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataCorrectOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataCorrectOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataCorrectOrder(_ request: CreateDataCorrectOrderRequest) async throws -> CreateDataCorrectOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataCorrectOrderWithOptions(request as! CreateDataCorrectOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataCronClearOrderWithOptions(_ tmpReq: CreateDataCronClearOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataCronClearOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDataCronClearOrderShrinkRequest = CreateDataCronClearOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.param)) {
            request.paramShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.param, "Param", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.relatedUserList)) {
            request.relatedUserListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedUserList, "RelatedUserList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachmentKey)) {
            query["AttachmentKey"] = request.attachmentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramShrink)) {
            query["Param"] = request.paramShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedUserListShrink)) {
            query["RelatedUserList"] = request.relatedUserListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataCronClearOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataCronClearOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataCronClearOrder(_ request: CreateDataCronClearOrderRequest) async throws -> CreateDataCronClearOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataCronClearOrderWithOptions(request as! CreateDataCronClearOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataExportOrderWithOptions(_ tmpReq: CreateDataExportOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataExportOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDataExportOrderShrinkRequest = CreateDataExportOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.pluginParam)) {
            request.pluginParamShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.pluginParam, "PluginParam", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.relatedUserList)) {
            request.relatedUserListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedUserList, "RelatedUserList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachmentKey)) {
            query["AttachmentKey"] = request.attachmentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            query["ParentId"] = request.parentId!;
        }
        if (!TeaUtils.Client.isUnset(request.pluginParamShrink)) {
            query["PluginParam"] = request.pluginParamShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedUserListShrink)) {
            query["RelatedUserList"] = request.relatedUserListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataExportOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataExportOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataExportOrder(_ request: CreateDataExportOrderRequest) async throws -> CreateDataExportOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataExportOrderWithOptions(request as! CreateDataExportOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataImportOrderWithOptions(_ tmpReq: CreateDataImportOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataImportOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDataImportOrderShrinkRequest = CreateDataImportOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.param)) {
            request.paramShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.param, "Param", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.relatedUserList)) {
            request.relatedUserListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedUserList, "RelatedUserList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachmentKey)) {
            query["AttachmentKey"] = request.attachmentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramShrink)) {
            query["Param"] = request.paramShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedUserListShrink)) {
            query["RelatedUserList"] = request.relatedUserListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataImportOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataImportOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataImportOrder(_ request: CreateDataImportOrderRequest) async throws -> CreateDataImportOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataImportOrderWithOptions(request as! CreateDataImportOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataTrackOrderWithOptions(_ tmpReq: CreateDataTrackOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataTrackOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDataTrackOrderShrinkRequest = CreateDataTrackOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.param)) {
            request.paramShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.param, "Param", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.relatedUserList)) {
            request.relatedUserListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedUserList, "RelatedUserList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramShrink)) {
            query["Param"] = request.paramShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedUserListShrink)) {
            query["RelatedUserList"] = request.relatedUserListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataTrackOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataTrackOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataTrackOrder(_ request: CreateDataTrackOrderRequest) async throws -> CreateDataTrackOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataTrackOrderWithOptions(request as! CreateDataTrackOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatabaseExportOrderWithOptions(_ tmpReq: CreateDatabaseExportOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatabaseExportOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDatabaseExportOrderShrinkRequest = CreateDatabaseExportOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.pluginParam)) {
            request.pluginParamShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.pluginParam, "PluginParam", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.relatedUserList)) {
            request.relatedUserListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedUserList, "RelatedUserList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachmentKey)) {
            query["AttachmentKey"] = request.attachmentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            query["ParentId"] = request.parentId!;
        }
        if (!TeaUtils.Client.isUnset(request.pluginParamShrink)) {
            query["PluginParam"] = request.pluginParamShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedUserListShrink)) {
            query["RelatedUserList"] = request.relatedUserListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDatabaseExportOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatabaseExportOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatabaseExportOrder(_ request: CreateDatabaseExportOrderRequest) async throws -> CreateDatabaseExportOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDatabaseExportOrderWithOptions(request as! CreateDatabaseExportOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFreeLockCorrectOrderWithOptions(_ tmpReq: CreateFreeLockCorrectOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFreeLockCorrectOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateFreeLockCorrectOrderShrinkRequest = CreateFreeLockCorrectOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.param)) {
            request.paramShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.param, "Param", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.relatedUserList)) {
            request.relatedUserListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedUserList, "RelatedUserList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachmentKey)) {
            query["AttachmentKey"] = request.attachmentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramShrink)) {
            query["Param"] = request.paramShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedUserListShrink)) {
            query["RelatedUserList"] = request.relatedUserListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFreeLockCorrectOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFreeLockCorrectOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFreeLockCorrectOrder(_ request: CreateFreeLockCorrectOrderRequest) async throws -> CreateFreeLockCorrectOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFreeLockCorrectOrderWithOptions(request as! CreateFreeLockCorrectOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLakeHouseSpaceWithOptions(_ request: CreateLakeHouseSpaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLakeHouseSpaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devDbId)) {
            query["DevDbId"] = request.devDbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dwDbType)) {
            query["DwDbType"] = request.dwDbType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prodDbId)) {
            query["ProdDbId"] = request.prodDbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceConfig)) {
            query["SpaceConfig"] = request.spaceConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceName)) {
            query["SpaceName"] = request.spaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLakeHouseSpace",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLakeHouseSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLakeHouseSpace(_ request: CreateLakeHouseSpaceRequest) async throws -> CreateLakeHouseSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLakeHouseSpaceWithOptions(request as! CreateLakeHouseSpaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLogicDatabaseWithOptions(_ tmpReq: CreateLogicDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLogicDatabaseResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateLogicDatabaseShrinkRequest = CreateLogicDatabaseShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.databaseIds)) {
            request.databaseIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.databaseIds, "DatabaseIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            query["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseIdsShrink)) {
            query["DatabaseIds"] = request.databaseIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLogicDatabase",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLogicDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLogicDatabase(_ request: CreateLogicDatabaseRequest) async throws -> CreateLogicDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLogicDatabaseWithOptions(request as! CreateLogicDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrderWithOptions(_ tmpReq: CreateOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateOrderShrinkRequest = CreateOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.pluginParam)) {
            request.pluginParamShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.pluginParam, "PluginParam", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachmentKey)) {
            query["AttachmentKey"] = request.attachmentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginType)) {
            query["PluginType"] = request.pluginType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedUserList)) {
            query["RelatedUserList"] = request.relatedUserList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pluginParamShrink)) {
            body["PluginParam"] = request.pluginParamShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrder(_ request: CreateOrderRequest) async throws -> CreateOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOrderWithOptions(request as! CreateOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProcCorrectOrderWithOptions(_ tmpReq: CreateProcCorrectOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProcCorrectOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateProcCorrectOrderShrinkRequest = CreateProcCorrectOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.param)) {
            request.paramShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.param, "Param", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.relatedUserList)) {
            request.relatedUserListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedUserList, "RelatedUserList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachmentKey)) {
            query["AttachmentKey"] = request.attachmentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramShrink)) {
            query["Param"] = request.paramShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedUserListShrink)) {
            query["RelatedUserList"] = request.relatedUserListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProcCorrectOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProcCorrectOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProcCorrectOrder(_ request: CreateProcCorrectOrderRequest) async throws -> CreateProcCorrectOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createProcCorrectOrderWithOptions(request as! CreateProcCorrectOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProxyWithOptions(_ request: CreateProxyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProxyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProxy",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProxyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProxy(_ request: CreateProxyRequest) async throws -> CreateProxyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createProxyWithOptions(request as! CreateProxyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProxyAccessWithOptions(_ request: CreateProxyAccessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProxyAccessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.indepAccount)) {
            query["IndepAccount"] = request.indepAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indepPassword)) {
            query["IndepPassword"] = request.indepPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyId)) {
            query["ProxyId"] = request.proxyId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProxyAccess",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProxyAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProxyAccess(_ request: CreateProxyAccessRequest) async throws -> CreateProxyAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createProxyAccessWithOptions(request as! CreateProxyAccessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPublishGroupTaskWithOptions(_ request: CreatePublishGroupTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePublishGroupTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId!;
        }
        if (!TeaUtils.Client.isUnset(request.logic)) {
            query["Logic"] = request.logic!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.planTime)) {
            query["PlanTime"] = request.planTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publishStrategy)) {
            query["PublishStrategy"] = request.publishStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePublishGroupTask",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePublishGroupTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPublishGroupTask(_ request: CreatePublishGroupTaskRequest) async throws -> CreatePublishGroupTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPublishGroupTaskWithOptions(request as! CreatePublishGroupTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSQLReviewOrderWithOptions(_ tmpReq: CreateSQLReviewOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSQLReviewOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSQLReviewOrderShrinkRequest = CreateSQLReviewOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.param)) {
            request.paramShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.param, "Param", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.relatedUserList)) {
            request.relatedUserListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedUserList, "RelatedUserList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramShrink)) {
            query["Param"] = request.paramShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedUserListShrink)) {
            query["RelatedUserList"] = request.relatedUserListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSQLReviewOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSQLReviewOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSQLReviewOrder(_ request: CreateSQLReviewOrderRequest) async throws -> CreateSQLReviewOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSQLReviewOrderWithOptions(request as! CreateSQLReviewOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScenarioWithOptions(_ request: CreateScenarioRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScenarioResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenarioName)) {
            query["ScenarioName"] = request.scenarioName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScenario",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScenarioResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScenario(_ request: CreateScenarioRequest) async throws -> CreateScenarioResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createScenarioWithOptions(request as! CreateScenarioRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStandardGroupWithOptions(_ request: CreateStandardGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStandardGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbType)) {
            query["DbType"] = request.dbType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStandardGroup",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStandardGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStandardGroup(_ request: CreateStandardGroupRequest) async throws -> CreateStandardGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStandardGroupWithOptions(request as! CreateStandardGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStructSyncOrderWithOptions(_ tmpReq: CreateStructSyncOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStructSyncOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateStructSyncOrderShrinkRequest = CreateStructSyncOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.param)) {
            request.paramShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.param, "Param", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.relatedUserList)) {
            request.relatedUserListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedUserList, "RelatedUserList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachmentKey)) {
            query["AttachmentKey"] = request.attachmentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramShrink)) {
            query["Param"] = request.paramShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedUserListShrink)) {
            query["RelatedUserList"] = request.relatedUserListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStructSyncOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStructSyncOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStructSyncOrder(_ request: CreateStructSyncOrderRequest) async throws -> CreateStructSyncOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStructSyncOrderWithOptions(request as! CreateStructSyncOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskWithOptions(_ request: CreateTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.graphParam)) {
            query["GraphParam"] = request.graphParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeContent)) {
            query["NodeContent"] = request.nodeContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeName)) {
            query["NodeName"] = request.nodeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeOutput)) {
            query["NodeOutput"] = request.nodeOutput ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeType)) {
            query["NodeType"] = request.nodeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.timeVariables)) {
            query["TimeVariables"] = request.timeVariables ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTask",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTask(_ request: CreateTaskRequest) async throws -> CreateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTaskWithOptions(request as! CreateTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskFlowWithOptions(_ request: CreateTaskFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTaskFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagName)) {
            query["DagName"] = request.dagName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenarioId)) {
            query["ScenarioId"] = request.scenarioId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTaskFlow",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTaskFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskFlow(_ request: CreateTaskFlowRequest) async throws -> CreateTaskFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTaskFlowWithOptions(request as! CreateTaskFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUploadFileJobWithOptions(_ request: CreateUploadFileJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUploadFileJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileSource)) {
            query["FileSource"] = request.fileSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.uploadURL)) {
            query["UploadURL"] = request.uploadURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUploadFileJob",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUploadFileJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUploadFileJob(_ request: CreateUploadFileJobRequest) async throws -> CreateUploadFileJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUploadFileJobWithOptions(request as! CreateUploadFileJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUploadOSSFileJobWithOptions(_ tmpReq: CreateUploadOSSFileJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUploadOSSFileJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateUploadOSSFileJobShrinkRequest = CreateUploadOSSFileJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.uploadTarget)) {
            request.uploadTargetShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.uploadTarget, "UploadTarget", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileSource)) {
            query["FileSource"] = request.fileSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.uploadTargetShrink)) {
            query["UploadTarget"] = request.uploadTargetShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUploadOSSFileJob",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUploadOSSFileJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUploadOSSFileJob(_ request: CreateUploadOSSFileJobRequest) async throws -> CreateUploadOSSFileJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUploadOSSFileJobWithOptions(request as! CreateUploadOSSFileJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAuthorityTemplateWithOptions(_ request: DeleteAuthorityTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAuthorityTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAuthorityTemplate",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAuthorityTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAuthorityTemplate(_ request: DeleteAuthorityTemplateRequest) async throws -> DeleteAuthorityTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAuthorityTemplateWithOptions(request as! DeleteAuthorityTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceWithOptions(_ request: DeleteInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.host)) {
            query["Host"] = request.host ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.sid)) {
            query["Sid"] = request.sid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInstance",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstance(_ request: DeleteInstanceRequest) async throws -> DeleteInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteInstanceWithOptions(request as! DeleteInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLakeHouseSpaceWithOptions(_ request: DeleteLakeHouseSpaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLakeHouseSpaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.spaceId)) {
            query["SpaceId"] = request.spaceId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLakeHouseSpace",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLakeHouseSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLakeHouseSpace(_ request: DeleteLakeHouseSpaceRequest) async throws -> DeleteLakeHouseSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLakeHouseSpaceWithOptions(request as! DeleteLakeHouseSpaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLhMembersWithOptions(_ tmpReq: DeleteLhMembersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLhMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteLhMembersShrinkRequest = DeleteLhMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.memberIds)) {
            request.memberIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.memberIds, "MemberIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.memberIdsShrink)) {
            query["MemberIds"] = request.memberIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            query["ObjectId"] = request.objectId!;
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            query["ObjectType"] = request.objectType!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLhMembers",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLhMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLhMembers(_ request: DeleteLhMembersRequest) async throws -> DeleteLhMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLhMembersWithOptions(request as! DeleteLhMembersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogicDatabaseWithOptions(_ request: DeleteLogicDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLogicDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logicDbId)) {
            query["LogicDbId"] = request.logicDbId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLogicDatabase",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLogicDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogicDatabase(_ request: DeleteLogicDatabaseRequest) async throws -> DeleteLogicDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLogicDatabaseWithOptions(request as! DeleteLogicDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogicTableRouteConfigWithOptions(_ request: DeleteLogicTableRouteConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLogicTableRouteConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.routeKey)) {
            query["RouteKey"] = request.routeKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableId)) {
            query["TableId"] = request.tableId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLogicTableRouteConfig",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLogicTableRouteConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogicTableRouteConfig(_ request: DeleteLogicTableRouteConfigRequest) async throws -> DeleteLogicTableRouteConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLogicTableRouteConfigWithOptions(request as! DeleteLogicTableRouteConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProxyWithOptions(_ request: DeleteProxyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProxyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.proxyId)) {
            query["ProxyId"] = request.proxyId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProxy",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProxyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProxy(_ request: DeleteProxyRequest) async throws -> DeleteProxyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteProxyWithOptions(request as! DeleteProxyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProxyAccessWithOptions(_ request: DeleteProxyAccessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProxyAccessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.proxyAccessId)) {
            query["ProxyAccessId"] = request.proxyAccessId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProxyAccess",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProxyAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProxyAccess(_ request: DeleteProxyAccessRequest) async throws -> DeleteProxyAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteProxyAccessWithOptions(request as! DeleteProxyAccessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScenarioWithOptions(_ request: DeleteScenarioRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteScenarioResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scenarioId)) {
            query["ScenarioId"] = request.scenarioId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteScenario",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteScenarioResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScenario(_ request: DeleteScenarioRequest) async throws -> DeleteScenarioResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteScenarioWithOptions(request as! DeleteScenarioRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStandardGroupWithOptions(_ request: DeleteStandardGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteStandardGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteStandardGroup",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteStandardGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStandardGroup(_ request: DeleteStandardGroupRequest) async throws -> DeleteStandardGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteStandardGroupWithOptions(request as! DeleteStandardGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTaskWithOptions(_ request: DeleteTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTask",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTask(_ request: DeleteTaskRequest) async throws -> DeleteTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTaskWithOptions(request as! DeleteTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTaskFlowWithOptions(_ request: DeleteTaskFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTaskFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTaskFlow",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTaskFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTaskFlow(_ request: DeleteTaskFlowRequest) async throws -> DeleteTaskFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTaskFlowWithOptions(request as! DeleteTaskFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTaskFlowEdgesByConditionWithOptions(_ request: DeleteTaskFlowEdgesByConditionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTaskFlowEdgesByConditionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeEnd)) {
            query["NodeEnd"] = request.nodeEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeFrom)) {
            query["NodeFrom"] = request.nodeFrom!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTaskFlowEdgesByCondition",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTaskFlowEdgesByConditionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTaskFlowEdgesByCondition(_ request: DeleteTaskFlowEdgesByConditionRequest) async throws -> DeleteTaskFlowEdgesByConditionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTaskFlowEdgesByConditionWithOptions(request as! DeleteTaskFlowEdgesByConditionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserWithOptions(_ request: DeleteUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUser",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUser(_ request: DeleteUserRequest) async throws -> DeleteUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUserWithOptions(request as! DeleteUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableUserWithOptions(_ request: DisableUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableUser",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableUser(_ request: DisableUserRequest) async throws -> DisableUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableUserWithOptions(request as! DisableUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadDataTrackResultWithOptions(_ tmpReq: DownloadDataTrackResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DownloadDataTrackResultResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DownloadDataTrackResultShrinkRequest = DownloadDataTrackResultShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.columnFilter)) {
            request.columnFilterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.columnFilter, "ColumnFilter", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.eventIdList)) {
            request.eventIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventIdList, "EventIdList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.filterTableList)) {
            request.filterTableListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterTableList, "FilterTableList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.filterTypeList)) {
            request.filterTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterTypeList, "FilterTypeList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnFilterShrink)) {
            query["ColumnFilter"] = request.columnFilterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventIdListShrink)) {
            query["EventIdList"] = request.eventIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterEndTime)) {
            query["FilterEndTime"] = request.filterEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterStartTime)) {
            query["FilterStartTime"] = request.filterStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterTableListShrink)) {
            query["FilterTableList"] = request.filterTableListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterTypeListShrink)) {
            query["FilterTypeList"] = request.filterTypeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.rollbackSQLType)) {
            query["RollbackSQLType"] = request.rollbackSQLType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DownloadDataTrackResult",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DownloadDataTrackResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadDataTrackResult(_ request: DownloadDataTrackResultRequest) async throws -> DownloadDataTrackResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await downloadDataTrackResultWithOptions(request as! DownloadDataTrackResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editLogicDatabaseWithOptions(_ tmpReq: EditLogicDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EditLogicDatabaseResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: EditLogicDatabaseShrinkRequest = EditLogicDatabaseShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.databaseIds)) {
            request.databaseIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.databaseIds, "DatabaseIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            query["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseIdsShrink)) {
            query["DatabaseIds"] = request.databaseIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicDbId)) {
            query["LogicDbId"] = request.logicDbId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EditLogicDatabase",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EditLogicDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editLogicDatabase(_ request: EditLogicDatabaseRequest) async throws -> EditLogicDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await editLogicDatabaseWithOptions(request as! EditLogicDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableUserWithOptions(_ request: EnableUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableUser",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableUser(_ request: EnableUserRequest) async throws -> EnableUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableUserWithOptions(request as! EnableUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeDataCorrectWithOptions(_ tmpReq: ExecuteDataCorrectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteDataCorrectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ExecuteDataCorrectShrinkRequest = ExecuteDataCorrectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.actionDetail)) {
            request.actionDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.actionDetail, "ActionDetail", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionDetailShrink)) {
            query["ActionDetail"] = request.actionDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteDataCorrect",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteDataCorrectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeDataCorrect(_ request: ExecuteDataCorrectRequest) async throws -> ExecuteDataCorrectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeDataCorrectWithOptions(request as! ExecuteDataCorrectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeDataExportWithOptions(_ tmpReq: ExecuteDataExportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteDataExportResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ExecuteDataExportShrinkRequest = ExecuteDataExportShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.actionDetail)) {
            request.actionDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.actionDetail, "ActionDetail", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionDetailShrink)) {
            query["ActionDetail"] = request.actionDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteDataExport",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteDataExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeDataExport(_ request: ExecuteDataExportRequest) async throws -> ExecuteDataExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeDataExportWithOptions(request as! ExecuteDataExportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeScriptWithOptions(_ request: ExecuteScriptRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteScriptResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId!;
        }
        if (!TeaUtils.Client.isUnset(request.logic)) {
            query["Logic"] = request.logic!;
        }
        if (!TeaUtils.Client.isUnset(request.script)) {
            query["Script"] = request.script ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteScript",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteScriptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeScript(_ request: ExecuteScriptRequest) async throws -> ExecuteScriptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeScriptWithOptions(request as! ExecuteScriptRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeStructSyncWithOptions(_ request: ExecuteStructSyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteStructSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteStructSync",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteStructSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeStructSync(_ request: ExecuteStructSyncRequest) async throws -> ExecuteStructSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeStructSyncWithOptions(request as! ExecuteStructSyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApprovalDetailWithOptions(_ request: GetApprovalDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApprovalDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.workflowInstanceId)) {
            query["WorkflowInstanceId"] = request.workflowInstanceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApprovalDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApprovalDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApprovalDetail(_ request: GetApprovalDetailRequest) async throws -> GetApprovalDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApprovalDetailWithOptions(request as! GetApprovalDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAuthorityTemplateWithOptions(_ request: GetAuthorityTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAuthorityTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAuthorityTemplate",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAuthorityTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAuthorityTemplate(_ request: GetAuthorityTemplateRequest) async throws -> GetAuthorityTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAuthorityTemplateWithOptions(request as! GetAuthorityTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAuthorityTemplateItemWithOptions(_ request: GetAuthorityTemplateItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAuthorityTemplateItemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAuthorityTemplateItem",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAuthorityTemplateItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAuthorityTemplateItem(_ request: GetAuthorityTemplateItemRequest) async throws -> GetAuthorityTemplateItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAuthorityTemplateItemWithOptions(request as! GetAuthorityTemplateItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClassificationTemplateWithOptions(_ request: GetClassificationTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClassificationTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClassificationTemplate",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClassificationTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClassificationTemplate(_ request: GetClassificationTemplateRequest) async throws -> GetClassificationTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getClassificationTemplateWithOptions(request as! GetClassificationTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDBTaskSQLJobLogWithOptions(_ request: GetDBTaskSQLJobLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDBTaskSQLJobLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDBTaskSQLJobLog",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDBTaskSQLJobLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDBTaskSQLJobLog(_ request: GetDBTaskSQLJobLogRequest) async throws -> GetDBTaskSQLJobLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDBTaskSQLJobLogWithOptions(request as! GetDBTaskSQLJobLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDBTopologyWithOptions(_ request: GetDBTopologyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDBTopologyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logicDbId)) {
            query["LogicDbId"] = request.logicDbId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDBTopology",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDBTopologyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDBTopology(_ request: GetDBTopologyRequest) async throws -> GetDBTopologyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDBTopologyWithOptions(request as! GetDBTopologyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataArchiveCountWithOptions(_ request: GetDataArchiveCountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataArchiveCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderResultType)) {
            query["OrderResultType"] = request.orderResultType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginType)) {
            query["PluginType"] = request.pluginType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchDateType)) {
            query["SearchDateType"] = request.searchDateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataArchiveCount",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataArchiveCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataArchiveCount(_ request: GetDataArchiveCountRequest) async throws -> GetDataArchiveCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataArchiveCountWithOptions(request as! GetDataArchiveCountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataArchiveOrderDetailWithOptions(_ request: GetDataArchiveOrderDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataArchiveOrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataArchiveOrderDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataArchiveOrderDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataArchiveOrderDetail(_ request: GetDataArchiveOrderDetailRequest) async throws -> GetDataArchiveOrderDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataArchiveOrderDetailWithOptions(request as! GetDataArchiveOrderDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCorrectBackupFilesWithOptions(_ tmpReq: GetDataCorrectBackupFilesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCorrectBackupFilesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetDataCorrectBackupFilesShrinkRequest = GetDataCorrectBackupFilesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.actionDetail)) {
            request.actionDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.actionDetail, "ActionDetail", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionDetailShrink)) {
            query["ActionDetail"] = request.actionDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCorrectBackupFiles",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCorrectBackupFilesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCorrectBackupFiles(_ request: GetDataCorrectBackupFilesRequest) async throws -> GetDataCorrectBackupFilesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataCorrectBackupFilesWithOptions(request as! GetDataCorrectBackupFilesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCorrectOrderDetailWithOptions(_ request: GetDataCorrectOrderDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCorrectOrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCorrectOrderDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCorrectOrderDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCorrectOrderDetail(_ request: GetDataCorrectOrderDetailRequest) async throws -> GetDataCorrectOrderDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataCorrectOrderDetailWithOptions(request as! GetDataCorrectOrderDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCorrectRollbackFileWithOptions(_ request: GetDataCorrectRollbackFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCorrectRollbackFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCorrectRollbackFile",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCorrectRollbackFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCorrectRollbackFile(_ request: GetDataCorrectRollbackFileRequest) async throws -> GetDataCorrectRollbackFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataCorrectRollbackFileWithOptions(request as! GetDataCorrectRollbackFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCorrectSQLFileWithOptions(_ request: GetDataCorrectSQLFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCorrectSQLFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCorrectSQLFile",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCorrectSQLFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCorrectSQLFile(_ request: GetDataCorrectSQLFileRequest) async throws -> GetDataCorrectSQLFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataCorrectSQLFileWithOptions(request as! GetDataCorrectSQLFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCorrectTaskDetailWithOptions(_ request: GetDataCorrectTaskDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCorrectTaskDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCorrectTaskDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCorrectTaskDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCorrectTaskDetail(_ request: GetDataCorrectTaskDetailRequest) async throws -> GetDataCorrectTaskDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataCorrectTaskDetailWithOptions(request as! GetDataCorrectTaskDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCronClearConfigWithOptions(_ request: GetDataCronClearConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCronClearConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCronClearConfig",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCronClearConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCronClearConfig(_ request: GetDataCronClearConfigRequest) async throws -> GetDataCronClearConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataCronClearConfigWithOptions(request as! GetDataCronClearConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCronClearTaskDetailListWithOptions(_ request: GetDataCronClearTaskDetailListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCronClearTaskDetailListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCronClearTaskDetailList",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCronClearTaskDetailListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCronClearTaskDetailList(_ request: GetDataCronClearTaskDetailListRequest) async throws -> GetDataCronClearTaskDetailListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataCronClearTaskDetailListWithOptions(request as! GetDataCronClearTaskDetailListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataExportDownloadURLWithOptions(_ request: GetDataExportDownloadURLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataExportDownloadURLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataExportDownloadURL",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataExportDownloadURLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataExportDownloadURL(_ request: GetDataExportDownloadURLRequest) async throws -> GetDataExportDownloadURLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataExportDownloadURLWithOptions(request as! GetDataExportDownloadURLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataExportOrderDetailWithOptions(_ request: GetDataExportOrderDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataExportOrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["OrderId"] = request.orderId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataExportOrderDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataExportOrderDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataExportOrderDetail(_ request: GetDataExportOrderDetailRequest) async throws -> GetDataExportOrderDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataExportOrderDetailWithOptions(request as! GetDataExportOrderDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataExportPreCheckDetailWithOptions(_ request: GetDataExportPreCheckDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataExportPreCheckDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataExportPreCheckDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataExportPreCheckDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataExportPreCheckDetail(_ request: GetDataExportPreCheckDetailRequest) async throws -> GetDataExportPreCheckDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataExportPreCheckDetailWithOptions(request as! GetDataExportPreCheckDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataImportSQLWithOptions(_ request: GetDataImportSQLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataImportSQLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.sqlId)) {
            query["SqlId"] = request.sqlId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataImportSQL",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataImportSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataImportSQL(_ request: GetDataImportSQLRequest) async throws -> GetDataImportSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataImportSQLWithOptions(request as! GetDataImportSQLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataTrackJobDegreeWithOptions(_ request: GetDataTrackJobDegreeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataTrackJobDegreeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataTrackJobDegree",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataTrackJobDegreeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataTrackJobDegree(_ request: GetDataTrackJobDegreeRequest) async throws -> GetDataTrackJobDegreeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataTrackJobDegreeWithOptions(request as! GetDataTrackJobDegreeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataTrackJobTableMetaWithOptions(_ request: GetDataTrackJobTableMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataTrackJobTableMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataTrackJobTableMeta",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataTrackJobTableMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataTrackJobTableMeta(_ request: GetDataTrackJobTableMetaRequest) async throws -> GetDataTrackJobTableMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataTrackJobTableMetaWithOptions(request as! GetDataTrackJobTableMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataTrackOrderDetailWithOptions(_ request: GetDataTrackOrderDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataTrackOrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataTrackOrderDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataTrackOrderDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataTrackOrderDetail(_ request: GetDataTrackOrderDetailRequest) async throws -> GetDataTrackOrderDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataTrackOrderDetailWithOptions(request as! GetDataTrackOrderDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseWithOptions(_ request: GetDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.host)) {
            query["Host"] = request.host ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sid)) {
            query["Sid"] = request.sid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatabase",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabase(_ request: GetDatabaseRequest) async throws -> GetDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDatabaseWithOptions(request as! GetDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseExportOrderDetailWithOptions(_ request: GetDatabaseExportOrderDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatabaseExportOrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["OrderId"] = request.orderId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatabaseExportOrderDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatabaseExportOrderDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseExportOrderDetail(_ request: GetDatabaseExportOrderDetailRequest) async throws -> GetDatabaseExportOrderDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDatabaseExportOrderDetailWithOptions(request as! GetDatabaseExportOrderDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDbExportDownloadURLWithOptions(_ request: GetDbExportDownloadURLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDbExportDownloadURLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDbExportDownloadURL",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDbExportDownloadURLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDbExportDownloadURL(_ request: GetDbExportDownloadURLRequest) async throws -> GetDbExportDownloadURLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDbExportDownloadURLWithOptions(request as! GetDbExportDownloadURLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceWithOptions(_ request: GetInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.host)) {
            query["Host"] = request.host ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.sid)) {
            query["Sid"] = request.sid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstance",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstance(_ request: GetInstanceRequest) async throws -> GetInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceWithOptions(request as! GetInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIntervalLimitOfSLAWithOptions(_ request: GetIntervalLimitOfSLARequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIntervalLimitOfSLAResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIntervalLimitOfSLA",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIntervalLimitOfSLAResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIntervalLimitOfSLA(_ request: GetIntervalLimitOfSLARequest) async throws -> GetIntervalLimitOfSLAResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getIntervalLimitOfSLAWithOptions(request as! GetIntervalLimitOfSLARequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLhSpaceByNameWithOptions(_ request: GetLhSpaceByNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLhSpaceByNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.spaceName)) {
            query["SpaceName"] = request.spaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLhSpaceByName",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLhSpaceByNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLhSpaceByName(_ request: GetLhSpaceByNameRequest) async throws -> GetLhSpaceByNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLhSpaceByNameWithOptions(request as! GetLhSpaceByNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogicDatabaseWithOptions(_ request: GetLogicDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLogicDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLogicDatabase",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLogicDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogicDatabase(_ request: GetLogicDatabaseRequest) async throws -> GetLogicDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLogicDatabaseWithOptions(request as! GetLogicDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMetaTableColumnWithOptions(_ request: GetMetaTableColumnRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMetaTableColumnResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tableGuid)) {
            query["TableGuid"] = request.tableGuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMetaTableColumn",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMetaTableColumnResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMetaTableColumn(_ request: GetMetaTableColumnRequest) async throws -> GetMetaTableColumnResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMetaTableColumnWithOptions(request as! GetMetaTableColumnRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMetaTableDetailInfoWithOptions(_ request: GetMetaTableDetailInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMetaTableDetailInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tableGuid)) {
            query["TableGuid"] = request.tableGuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMetaTableDetailInfo",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMetaTableDetailInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMetaTableDetailInfo(_ request: GetMetaTableDetailInfoRequest) async throws -> GetMetaTableDetailInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMetaTableDetailInfoWithOptions(request as! GetMetaTableDetailInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOnlineDDLProgressWithOptions(_ request: GetOnlineDDLProgressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOnlineDDLProgressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobDetailId)) {
            query["JobDetailId"] = request.jobDetailId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOnlineDDLProgress",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOnlineDDLProgressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOnlineDDLProgress(_ request: GetOnlineDDLProgressRequest) async throws -> GetOnlineDDLProgressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOnlineDDLProgressWithOptions(request as! GetOnlineDDLProgressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOpLogWithOptions(_ request: GetOpLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOpLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.module)) {
            query["Module"] = request.module ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.userNick)) {
            query["UserNick"] = request.userNick ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOpLog",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOpLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOpLog(_ request: GetOpLogRequest) async throws -> GetOpLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOpLogWithOptions(request as! GetOpLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrderAttachmentFileWithOptions(_ request: GetOrderAttachmentFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrderAttachmentFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrderAttachmentFile",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrderAttachmentFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrderAttachmentFile(_ request: GetOrderAttachmentFileRequest) async throws -> GetOrderAttachmentFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOrderAttachmentFileWithOptions(request as! GetOrderAttachmentFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrderBaseInfoWithOptions(_ request: GetOrderBaseInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrderBaseInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrderBaseInfo",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrderBaseInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrderBaseInfo(_ request: GetOrderBaseInfoRequest) async throws -> GetOrderBaseInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOrderBaseInfoWithOptions(request as! GetOrderBaseInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOwnerApplyOrderDetailWithOptions(_ request: GetOwnerApplyOrderDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOwnerApplyOrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOwnerApplyOrderDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOwnerApplyOrderDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOwnerApplyOrderDetail(_ request: GetOwnerApplyOrderDetailRequest) async throws -> GetOwnerApplyOrderDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOwnerApplyOrderDetailWithOptions(request as! GetOwnerApplyOrderDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPagedInstanceWithOptions(_ request: GetPagedInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPagedInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPagedInstance",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPagedInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPagedInstance(_ request: GetPagedInstanceRequest) async throws -> GetPagedInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPagedInstanceWithOptions(request as! GetPagedInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPermApplyOrderDetailWithOptions(_ request: GetPermApplyOrderDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPermApplyOrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPermApplyOrderDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPermApplyOrderDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPermApplyOrderDetail(_ request: GetPermApplyOrderDetailRequest) async throws -> GetPermApplyOrderDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPermApplyOrderDetailWithOptions(request as! GetPermApplyOrderDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalDatabaseWithOptions(_ request: GetPhysicalDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPhysicalDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPhysicalDatabase",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPhysicalDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalDatabase(_ request: GetPhysicalDatabaseRequest) async throws -> GetPhysicalDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPhysicalDatabaseWithOptions(request as! GetPhysicalDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProxyWithOptions(_ request: GetProxyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProxyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.proxyId)) {
            query["ProxyId"] = request.proxyId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProxy",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProxyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProxy(_ request: GetProxyRequest) async throws -> GetProxyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProxyWithOptions(request as! GetProxyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProxyAccessWithOptions(_ request: GetProxyAccessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProxyAccessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.proxyAccessId)) {
            query["ProxyAccessId"] = request.proxyAccessId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProxyAccess",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProxyAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProxyAccess(_ request: GetProxyAccessRequest) async throws -> GetProxyAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProxyAccessWithOptions(request as! GetProxyAccessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuleNumLimitOfSLAWithOptions(_ request: GetRuleNumLimitOfSLARequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRuleNumLimitOfSLAResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRuleNumLimitOfSLA",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRuleNumLimitOfSLAResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuleNumLimitOfSLA(_ request: GetRuleNumLimitOfSLARequest) async throws -> GetRuleNumLimitOfSLAResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRuleNumLimitOfSLAWithOptions(request as! GetRuleNumLimitOfSLARequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSQLReviewCheckResultStatusWithOptions(_ request: GetSQLReviewCheckResultStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSQLReviewCheckResultStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSQLReviewCheckResultStatus",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSQLReviewCheckResultStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSQLReviewCheckResultStatus(_ request: GetSQLReviewCheckResultStatusRequest) async throws -> GetSQLReviewCheckResultStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSQLReviewCheckResultStatusWithOptions(request as! GetSQLReviewCheckResultStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSQLReviewOptimizeDetailWithOptions(_ request: GetSQLReviewOptimizeDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSQLReviewOptimizeDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.SQLReviewQueryKey)) {
            query["SQLReviewQueryKey"] = request.SQLReviewQueryKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSQLReviewOptimizeDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSQLReviewOptimizeDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSQLReviewOptimizeDetail(_ request: GetSQLReviewOptimizeDetailRequest) async throws -> GetSQLReviewOptimizeDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSQLReviewOptimizeDetailWithOptions(request as! GetSQLReviewOptimizeDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStandardGroupWithOptions(_ request: GetStandardGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStandardGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStandardGroup",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStandardGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStandardGroup(_ request: GetStandardGroupRequest) async throws -> GetStandardGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStandardGroupWithOptions(request as! GetStandardGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStructSyncExecSqlDetailWithOptions(_ request: GetStructSyncExecSqlDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStructSyncExecSqlDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStructSyncExecSqlDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStructSyncExecSqlDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStructSyncExecSqlDetail(_ request: GetStructSyncExecSqlDetailRequest) async throws -> GetStructSyncExecSqlDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStructSyncExecSqlDetailWithOptions(request as! GetStructSyncExecSqlDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStructSyncJobAnalyzeResultWithOptions(_ request: GetStructSyncJobAnalyzeResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStructSyncJobAnalyzeResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compareType)) {
            query["CompareType"] = request.compareType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStructSyncJobAnalyzeResult",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStructSyncJobAnalyzeResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStructSyncJobAnalyzeResult(_ request: GetStructSyncJobAnalyzeResultRequest) async throws -> GetStructSyncJobAnalyzeResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStructSyncJobAnalyzeResultWithOptions(request as! GetStructSyncJobAnalyzeResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStructSyncJobDetailWithOptions(_ request: GetStructSyncJobDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStructSyncJobDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStructSyncJobDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStructSyncJobDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStructSyncJobDetail(_ request: GetStructSyncJobDetailRequest) async throws -> GetStructSyncJobDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStructSyncJobDetailWithOptions(request as! GetStructSyncJobDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStructSyncOrderDetailWithOptions(_ request: GetStructSyncOrderDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStructSyncOrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStructSyncOrderDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStructSyncOrderDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStructSyncOrderDetail(_ request: GetStructSyncOrderDetailRequest) async throws -> GetStructSyncOrderDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStructSyncOrderDetailWithOptions(request as! GetStructSyncOrderDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableDBTopologyWithOptions(_ request: GetTableDBTopologyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableDBTopologyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tableGuid)) {
            query["TableGuid"] = request.tableGuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableDBTopology",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableDBTopologyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableDBTopology(_ request: GetTableDBTopologyRequest) async throws -> GetTableDBTopologyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTableDBTopologyWithOptions(request as! GetTableDBTopologyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableTopologyWithOptions(_ request: GetTableTopologyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableTopologyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tableGuid)) {
            query["TableGuid"] = request.tableGuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableTopology",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableTopologyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableTopology(_ request: GetTableTopologyRequest) async throws -> GetTableTopologyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTableTopologyWithOptions(request as! GetTableTopologyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskWithOptions(_ request: GetTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTask",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTask(_ request: GetTaskRequest) async throws -> GetTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTaskWithOptions(request as! GetTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskFlowGraphWithOptions(_ request: GetTaskFlowGraphRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTaskFlowGraphResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTaskFlowGraph",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTaskFlowGraphResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskFlowGraph(_ request: GetTaskFlowGraphRequest) async throws -> GetTaskFlowGraphResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTaskFlowGraphWithOptions(request as! GetTaskFlowGraphRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskFlowNotificationWithOptions(_ request: GetTaskFlowNotificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTaskFlowNotificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTaskFlowNotification",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTaskFlowNotificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskFlowNotification(_ request: GetTaskFlowNotificationRequest) async throws -> GetTaskFlowNotificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTaskFlowNotificationWithOptions(request as! GetTaskFlowNotificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskInstanceRelationWithOptions(_ request: GetTaskInstanceRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTaskInstanceRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.dagInstanceId)) {
            query["DagInstanceId"] = request.dagInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTaskInstanceRelation",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTaskInstanceRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskInstanceRelation(_ request: GetTaskInstanceRelationRequest) async throws -> GetTaskInstanceRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTaskInstanceRelationWithOptions(request as! GetTaskInstanceRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserWithOptions(_ request: GetUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUser",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUser(_ request: GetUserRequest) async throws -> GetUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserWithOptions(request as! GetUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserActiveTenantWithOptions(_ request: GetUserActiveTenantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserActiveTenantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserActiveTenant",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserActiveTenantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserActiveTenant(_ request: GetUserActiveTenantRequest) async throws -> GetUserActiveTenantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserActiveTenantWithOptions(request as! GetUserActiveTenantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserUploadFileJobWithOptions(_ request: GetUserUploadFileJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserUploadFileJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobKey)) {
            query["JobKey"] = request.jobKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserUploadFileJob",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserUploadFileJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserUploadFileJob(_ request: GetUserUploadFileJobRequest) async throws -> GetUserUploadFileJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserUploadFileJobWithOptions(request as! GetUserUploadFileJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantTemplateAuthorityWithOptions(_ request: GrantTemplateAuthorityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantTemplateAuthorityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireDate)) {
            query["ExpireDate"] = request.expireDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantTemplateAuthority",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantTemplateAuthorityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantTemplateAuthority(_ request: GrantTemplateAuthorityRequest) async throws -> GrantTemplateAuthorityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await grantTemplateAuthorityWithOptions(request as! GrantTemplateAuthorityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantUserPermissionWithOptions(_ request: GrantUserPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantUserPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsType)) {
            query["DsType"] = request.dsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireDate)) {
            query["ExpireDate"] = request.expireDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.logic)) {
            query["Logic"] = request.logic!;
        }
        if (!TeaUtils.Client.isUnset(request.permTypes)) {
            query["PermTypes"] = request.permTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableId)) {
            query["TableId"] = request.tableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantUserPermission",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantUserPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantUserPermission(_ request: GrantUserPermissionRequest) async throws -> GrantUserPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await grantUserPermissionWithOptions(request as! GrantUserPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func inspectProxyAccessSecretWithOptions(_ request: InspectProxyAccessSecretRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InspectProxyAccessSecretResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.proxyAccessId)) {
            query["ProxyAccessId"] = request.proxyAccessId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InspectProxyAccessSecret",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InspectProxyAccessSecretResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func inspectProxyAccessSecret(_ request: InspectProxyAccessSecretRequest) async throws -> InspectProxyAccessSecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await inspectProxyAccessSecretWithOptions(request as! InspectProxyAccessSecretRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorityTemplateWithOptions(_ request: ListAuthorityTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAuthorityTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            query["SearchKey"] = request.searchKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAuthorityTemplate",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAuthorityTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorityTemplate(_ request: ListAuthorityTemplateRequest) async throws -> ListAuthorityTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAuthorityTemplateWithOptions(request as! ListAuthorityTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClassificationTemplatesWithOptions(_ request: ListClassificationTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClassificationTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClassificationTemplates",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClassificationTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClassificationTemplates(_ request: ListClassificationTemplatesRequest) async throws -> ListClassificationTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listClassificationTemplatesWithOptions(request as! ListClassificationTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listColumnsWithOptions(_ request: ListColumnsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListColumnsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logic)) {
            query["Logic"] = request.logic!;
        }
        if (!TeaUtils.Client.isUnset(request.tableId)) {
            query["TableId"] = request.tableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListColumns",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListColumnsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listColumns(_ request: ListColumnsRequest) async throws -> ListColumnsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listColumnsWithOptions(request as! ListColumnsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDAGVersionsWithOptions(_ request: ListDAGVersionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDAGVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDAGVersions",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDAGVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDAGVersions(_ request: ListDAGVersionsRequest) async throws -> ListDAGVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDAGVersionsWithOptions(request as! ListDAGVersionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDBTaskSQLJobWithOptions(_ request: ListDBTaskSQLJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDBTaskSQLJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBTaskGroupId)) {
            query["DBTaskGroupId"] = request.DBTaskGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDBTaskSQLJob",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDBTaskSQLJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDBTaskSQLJob(_ request: ListDBTaskSQLJobRequest) async throws -> ListDBTaskSQLJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDBTaskSQLJobWithOptions(request as! ListDBTaskSQLJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDBTaskSQLJobDetailWithOptions(_ request: ListDBTaskSQLJobDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDBTaskSQLJobDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDBTaskSQLJobDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDBTaskSQLJobDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDBTaskSQLJobDetail(_ request: ListDBTaskSQLJobDetailRequest) async throws -> ListDBTaskSQLJobDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDBTaskSQLJobDetailWithOptions(request as! ListDBTaskSQLJobDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDDLPublishRecordsWithOptions(_ request: ListDDLPublishRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDDLPublishRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDDLPublishRecords",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDDLPublishRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDDLPublishRecords(_ request: ListDDLPublishRecordsRequest) async throws -> ListDDLPublishRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDDLPublishRecordsWithOptions(request as! ListDDLPublishRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCorrectPreCheckDBWithOptions(_ request: ListDataCorrectPreCheckDBRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataCorrectPreCheckDBResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataCorrectPreCheckDB",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataCorrectPreCheckDBResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCorrectPreCheckDB(_ request: ListDataCorrectPreCheckDBRequest) async throws -> ListDataCorrectPreCheckDBResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataCorrectPreCheckDBWithOptions(request as! ListDataCorrectPreCheckDBRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCorrectPreCheckSQLWithOptions(_ request: ListDataCorrectPreCheckSQLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataCorrectPreCheckSQLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataCorrectPreCheckSQL",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataCorrectPreCheckSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCorrectPreCheckSQL(_ request: ListDataCorrectPreCheckSQLRequest) async throws -> ListDataCorrectPreCheckSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataCorrectPreCheckSQLWithOptions(request as! ListDataCorrectPreCheckSQLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataImportSQLPreCheckDetailWithOptions(_ request: ListDataImportSQLPreCheckDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataImportSQLPreCheckDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumer)) {
            query["PageNumer"] = request.pageNumer!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sqlType)) {
            query["SqlType"] = request.sqlType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusCode)) {
            query["StatusCode"] = request.statusCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataImportSQLPreCheckDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataImportSQLPreCheckDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataImportSQLPreCheckDetail(_ request: ListDataImportSQLPreCheckDetailRequest) async throws -> ListDataImportSQLPreCheckDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataImportSQLPreCheckDetailWithOptions(request as! ListDataImportSQLPreCheckDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataImportSQLTypeWithOptions(_ request: ListDataImportSQLTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataImportSQLTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataImportSQLType",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataImportSQLTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataImportSQLType(_ request: ListDataImportSQLTypeRequest) async throws -> ListDataImportSQLTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataImportSQLTypeWithOptions(request as! ListDataImportSQLTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabaseUserPermssionsWithOptions(_ request: ListDatabaseUserPermssionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatabaseUserPermssionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logic)) {
            query["Logic"] = request.logic!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.permType)) {
            query["PermType"] = request.permType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatabaseUserPermssions",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatabaseUserPermssionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabaseUserPermssions(_ request: ListDatabaseUserPermssionsRequest) async throws -> ListDatabaseUserPermssionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDatabaseUserPermssionsWithOptions(request as! ListDatabaseUserPermssionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabasesWithOptions(_ request: ListDatabasesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatabasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatabases",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatabasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabases(_ request: ListDatabasesRequest) async throws -> ListDatabasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDatabasesWithOptions(request as! ListDatabasesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDefaultSLARulesWithOptions(_ request: ListDefaultSLARulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDefaultSLARulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDefaultSLARules",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDefaultSLARulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDefaultSLARules(_ request: ListDefaultSLARulesRequest) async throws -> ListDefaultSLARulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDefaultSLARulesWithOptions(request as! ListDefaultSLARulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDesensitizationRuleWithOptions(_ request: ListDesensitizationRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDesensitizationRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.funcType)) {
            query["FuncType"] = request.funcType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDesensitizationRule",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDesensitizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDesensitizationRule(_ request: ListDesensitizationRuleRequest) async throws -> ListDesensitizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDesensitizationRuleWithOptions(request as! ListDesensitizationRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEffectiveOrdersWithOptions(_ request: ListEffectiveOrdersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEffectiveOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEffectiveOrders",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEffectiveOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEffectiveOrders(_ request: ListEffectiveOrdersRequest) async throws -> ListEffectiveOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEffectiveOrdersWithOptions(request as! ListEffectiveOrdersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIndexesWithOptions(_ request: ListIndexesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIndexesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logic)) {
            query["Logic"] = request.logic!;
        }
        if (!TeaUtils.Client.isUnset(request.tableId)) {
            query["TableId"] = request.tableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIndexes",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIndexesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIndexes(_ request: ListIndexesRequest) async throws -> ListIndexesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIndexesWithOptions(request as! ListIndexesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceLoginAuditLogWithOptions(_ request: ListInstanceLoginAuditLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceLoginAuditLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opUserName)) {
            query["OpUserName"] = request.opUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchName)) {
            query["SearchName"] = request.searchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstanceLoginAuditLog",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceLoginAuditLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceLoginAuditLog(_ request: ListInstanceLoginAuditLogRequest) async throws -> ListInstanceLoginAuditLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInstanceLoginAuditLogWithOptions(request as! ListInstanceLoginAuditLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceUserPermissionsWithOptions(_ request: ListInstanceUserPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceUserPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstanceUserPermissions",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceUserPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceUserPermissions(_ request: ListInstanceUserPermissionsRequest) async throws -> ListInstanceUserPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInstanceUserPermissionsWithOptions(request as! ListInstanceUserPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesWithOptions(_ request: ListInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbType)) {
            query["DbType"] = request.dbType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envType)) {
            query["EnvType"] = request.envType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceSource)) {
            query["InstanceSource"] = request.instanceSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceState)) {
            query["InstanceState"] = request.instanceState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.netType)) {
            query["NetType"] = request.netType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            query["SearchKey"] = request.searchKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstances",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstances(_ request: ListInstancesRequest) async throws -> ListInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInstancesWithOptions(request as! ListInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLhTaskFlowAndScenarioWithOptions(_ request: ListLhTaskFlowAndScenarioRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLhTaskFlowAndScenarioResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.spaceId)) {
            query["SpaceId"] = request.spaceId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLhTaskFlowAndScenario",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLhTaskFlowAndScenarioResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLhTaskFlowAndScenario(_ request: ListLhTaskFlowAndScenarioRequest) async throws -> ListLhTaskFlowAndScenarioResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLhTaskFlowAndScenarioWithOptions(request as! ListLhTaskFlowAndScenarioRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogicDatabasesWithOptions(_ request: ListLogicDatabasesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLogicDatabasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLogicDatabases",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLogicDatabasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogicDatabases(_ request: ListLogicDatabasesRequest) async throws -> ListLogicDatabasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLogicDatabasesWithOptions(request as! ListLogicDatabasesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogicTableRouteConfigWithOptions(_ request: ListLogicTableRouteConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLogicTableRouteConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tableId)) {
            query["TableId"] = request.tableId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLogicTableRouteConfig",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLogicTableRouteConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogicTableRouteConfig(_ request: ListLogicTableRouteConfigRequest) async throws -> ListLogicTableRouteConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLogicTableRouteConfigWithOptions(request as! ListLogicTableRouteConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogicTablesWithOptions(_ request: ListLogicTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLogicTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseId)) {
            query["DatabaseId"] = request.databaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.returnGuid)) {
            query["ReturnGuid"] = request.returnGuid!;
        }
        if (!TeaUtils.Client.isUnset(request.searchName)) {
            query["SearchName"] = request.searchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLogicTables",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLogicTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogicTables(_ request: ListLogicTablesRequest) async throws -> ListLogicTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLogicTablesWithOptions(request as! ListLogicTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrdersWithOptions(_ request: ListOrdersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderResultType)) {
            query["OrderResultType"] = request.orderResultType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderStatus)) {
            query["OrderStatus"] = request.orderStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pluginType)) {
            query["PluginType"] = request.pluginType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchContent)) {
            query["SearchContent"] = request.searchContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchDateType)) {
            query["SearchDateType"] = request.searchDateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOrders",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrders(_ request: ListOrdersRequest) async throws -> ListOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOrdersWithOptions(request as! ListOrdersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProxiesWithOptions(_ request: ListProxiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProxiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProxies",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProxiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProxies(_ request: ListProxiesRequest) async throws -> ListProxiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProxiesWithOptions(request as! ListProxiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProxyAccessesWithOptions(_ request: ListProxyAccessesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProxyAccessesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.proxyId)) {
            query["ProxyId"] = request.proxyId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProxyAccesses",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProxyAccessesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProxyAccesses(_ request: ListProxyAccessesRequest) async throws -> ListProxyAccessesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProxyAccessesWithOptions(request as! ListProxyAccessesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProxySQLExecAuditLogWithOptions(_ request: ListProxySQLExecAuditLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProxySQLExecAuditLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.execState)) {
            query["ExecState"] = request.execState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opUserName)) {
            query["OpUserName"] = request.opUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.SQLType)) {
            query["SQLType"] = request.SQLType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchName)) {
            query["SearchName"] = request.searchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProxySQLExecAuditLog",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProxySQLExecAuditLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProxySQLExecAuditLog(_ request: ListProxySQLExecAuditLogRequest) async throws -> ListProxySQLExecAuditLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProxySQLExecAuditLogWithOptions(request as! ListProxySQLExecAuditLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSLARulesWithOptions(_ request: ListSLARulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSLARulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSLARules",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSLARulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSLARules(_ request: ListSLARulesRequest) async throws -> ListSLARulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSLARulesWithOptions(request as! ListSLARulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSQLExecAuditLogWithOptions(_ request: ListSQLExecAuditLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSQLExecAuditLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.execState)) {
            query["ExecState"] = request.execState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opUserName)) {
            query["OpUserName"] = request.opUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchName)) {
            query["SearchName"] = request.searchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sqlType)) {
            query["SqlType"] = request.sqlType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSQLExecAuditLog",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSQLExecAuditLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSQLExecAuditLog(_ request: ListSQLExecAuditLogRequest) async throws -> ListSQLExecAuditLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSQLExecAuditLogWithOptions(request as! ListSQLExecAuditLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSQLReviewOriginSQLWithOptions(_ tmpReq: ListSQLReviewOriginSQLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSQLReviewOriginSQLResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListSQLReviewOriginSQLShrinkRequest = ListSQLReviewOriginSQLShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.orderActionDetail)) {
            request.orderActionDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.orderActionDetail, "OrderActionDetail", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderActionDetailShrink)) {
            query["OrderActionDetail"] = request.orderActionDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSQLReviewOriginSQL",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSQLReviewOriginSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSQLReviewOriginSQL(_ request: ListSQLReviewOriginSQLRequest) async throws -> ListSQLReviewOriginSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSQLReviewOriginSQLWithOptions(request as! ListSQLReviewOriginSQLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScenariosWithOptions(_ request: ListScenariosRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListScenariosResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListScenarios",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListScenariosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScenarios(_ request: ListScenariosRequest) async throws -> ListScenariosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listScenariosWithOptions(request as! ListScenariosRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSensitiveColumnInfoWithOptions(_ request: ListSensitiveColumnInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSensitiveColumnInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnName)) {
            query["ColumnName"] = request.columnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSensitiveColumnInfo",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSensitiveColumnInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSensitiveColumnInfo(_ request: ListSensitiveColumnInfoRequest) async throws -> ListSensitiveColumnInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSensitiveColumnInfoWithOptions(request as! ListSensitiveColumnInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSensitiveColumnsWithOptions(_ request: ListSensitiveColumnsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSensitiveColumnsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnName)) {
            query["ColumnName"] = request.columnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId!;
        }
        if (!TeaUtils.Client.isUnset(request.logic)) {
            query["Logic"] = request.logic!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityLevel)) {
            query["SecurityLevel"] = request.securityLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSensitiveColumns",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSensitiveColumnsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSensitiveColumns(_ request: ListSensitiveColumnsRequest) async throws -> ListSensitiveColumnsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSensitiveColumnsWithOptions(request as! ListSensitiveColumnsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSensitiveColumnsDetailWithOptions(_ request: ListSensitiveColumnsDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSensitiveColumnsDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnName)) {
            query["ColumnName"] = request.columnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId!;
        }
        if (!TeaUtils.Client.isUnset(request.logic)) {
            query["Logic"] = request.logic!;
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSensitiveColumnsDetail",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSensitiveColumnsDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSensitiveColumnsDetail(_ request: ListSensitiveColumnsDetailRequest) async throws -> ListSensitiveColumnsDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSensitiveColumnsDetailWithOptions(request as! ListSensitiveColumnsDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSensitiveDataAuditLogWithOptions(_ request: ListSensitiveDataAuditLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSensitiveDataAuditLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnName)) {
            query["ColumnName"] = request.columnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["ModuleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opUserName)) {
            query["OpUserName"] = request.opUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSensitiveDataAuditLog",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSensitiveDataAuditLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSensitiveDataAuditLog(_ request: ListSensitiveDataAuditLogRequest) async throws -> ListSensitiveDataAuditLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSensitiveDataAuditLogWithOptions(request as! ListSensitiveDataAuditLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSensitivityLevelWithOptions(_ request: ListSensitivityLevelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSensitivityLevelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSensitivityLevel",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSensitivityLevelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSensitivityLevel(_ request: ListSensitivityLevelRequest) async throws -> ListSensitivityLevelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSensitivityLevelWithOptions(request as! ListSensitivityLevelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStandardGroupsWithOptions(_ request: ListStandardGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStandardGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStandardGroups",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStandardGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStandardGroups(_ request: ListStandardGroupsRequest) async throws -> ListStandardGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listStandardGroupsWithOptions(request as! ListStandardGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTablesWithOptions(_ request: ListTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseId)) {
            query["DatabaseId"] = request.databaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.returnGuid)) {
            query["ReturnGuid"] = request.returnGuid!;
        }
        if (!TeaUtils.Client.isUnset(request.searchName)) {
            query["SearchName"] = request.searchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTables",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTables(_ request: ListTablesRequest) async throws -> ListTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTablesWithOptions(request as! ListTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowWithOptions(_ request: ListTaskFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTaskFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTaskFlow",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTaskFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlow(_ request: ListTaskFlowRequest) async throws -> ListTaskFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTaskFlowWithOptions(request as! ListTaskFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowConstantsWithOptions(_ request: ListTaskFlowConstantsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTaskFlowConstantsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTaskFlowConstants",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTaskFlowConstantsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowConstants(_ request: ListTaskFlowConstantsRequest) async throws -> ListTaskFlowConstantsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTaskFlowConstantsWithOptions(request as! ListTaskFlowConstantsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowCooperatorsWithOptions(_ request: ListTaskFlowCooperatorsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTaskFlowCooperatorsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTaskFlowCooperators",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTaskFlowCooperatorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowCooperators(_ request: ListTaskFlowCooperatorsRequest) async throws -> ListTaskFlowCooperatorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTaskFlowCooperatorsWithOptions(request as! ListTaskFlowCooperatorsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowEdgesByConditionWithOptions(_ request: ListTaskFlowEdgesByConditionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTaskFlowEdgesByConditionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeEnd)) {
            query["NodeEnd"] = request.nodeEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeFrom)) {
            query["NodeFrom"] = request.nodeFrom!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTaskFlowEdgesByCondition",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTaskFlowEdgesByConditionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowEdgesByCondition(_ request: ListTaskFlowEdgesByConditionRequest) async throws -> ListTaskFlowEdgesByConditionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTaskFlowEdgesByConditionWithOptions(request as! ListTaskFlowEdgesByConditionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowInstanceWithOptions(_ request: ListTaskFlowInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTaskFlowInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTimeBegin)) {
            query["StartTimeBegin"] = request.startTimeBegin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimeEnd)) {
            query["StartTimeEnd"] = request.startTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.triggerType)) {
            query["TriggerType"] = request.triggerType!;
        }
        if (!TeaUtils.Client.isUnset(request.useBizDate)) {
            query["UseBizDate"] = request.useBizDate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTaskFlowInstance",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTaskFlowInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowInstance(_ request: ListTaskFlowInstanceRequest) async throws -> ListTaskFlowInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTaskFlowInstanceWithOptions(request as! ListTaskFlowInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowTimeVariablesWithOptions(_ request: ListTaskFlowTimeVariablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTaskFlowTimeVariablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTaskFlowTimeVariables",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTaskFlowTimeVariablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowTimeVariables(_ request: ListTaskFlowTimeVariablesRequest) async throws -> ListTaskFlowTimeVariablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTaskFlowTimeVariablesWithOptions(request as! ListTaskFlowTimeVariablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowsByPageWithOptions(_ tmpReq: ListTaskFlowsByPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTaskFlowsByPageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTaskFlowsByPageShrinkRequest = ListTaskFlowsByPageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dagIdList)) {
            request.dagIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dagIdList, "DagIdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagIdListShrink)) {
            query["DagIdList"] = request.dagIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.scenarioId)) {
            query["ScenarioId"] = request.scenarioId!;
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            query["SearchKey"] = request.searchKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTaskFlowsByPage",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTaskFlowsByPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskFlowsByPage(_ request: ListTaskFlowsByPageRequest) async throws -> ListTaskFlowsByPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTaskFlowsByPageWithOptions(request as! ListTaskFlowsByPageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTasksInTaskFlowWithOptions(_ request: ListTasksInTaskFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTasksInTaskFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTasksInTaskFlow",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTasksInTaskFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTasksInTaskFlow(_ request: ListTasksInTaskFlowRequest) async throws -> ListTasksInTaskFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTasksInTaskFlowWithOptions(request as! ListTasksInTaskFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserPermissionsWithOptions(_ request: ListUserPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbType)) {
            query["DbType"] = request.dbType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envType)) {
            query["EnvType"] = request.envType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logic)) {
            query["Logic"] = request.logic!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.permType)) {
            query["PermType"] = request.permType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            query["SearchKey"] = request.searchKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserPermissions",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserPermissions(_ request: ListUserPermissionsRequest) async throws -> ListUserPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserPermissionsWithOptions(request as! ListUserPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserTenantsWithOptions(_ request: ListUserTenantsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserTenantsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserTenants",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserTenantsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserTenants(_ request: ListUserTenantsRequest) async throws -> ListUserTenantsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserTenantsWithOptions(request as! ListUserTenantsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersWithOptions(_ request: ListUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.role)) {
            query["Role"] = request.role ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            query["SearchKey"] = request.searchKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.userState)) {
            query["UserState"] = request.userState ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsers",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsers(_ request: ListUsersRequest) async throws -> ListUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUsersWithOptions(request as! ListUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkFlowNodesWithOptions(_ request: ListWorkFlowNodesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkFlowNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.searchName)) {
            query["SearchName"] = request.searchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkFlowNodes",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkFlowNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkFlowNodes(_ request: ListWorkFlowNodesRequest) async throws -> ListWorkFlowNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWorkFlowNodesWithOptions(request as! ListWorkFlowNodesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkFlowTemplatesWithOptions(_ request: ListWorkFlowTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkFlowTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.searchName)) {
            query["SearchName"] = request.searchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkFlowTemplates",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkFlowTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkFlowTemplates(_ request: ListWorkFlowTemplatesRequest) async throws -> ListWorkFlowTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWorkFlowTemplatesWithOptions(request as! ListWorkFlowTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func makeTaskFlowInstanceSuccessWithOptions(_ request: MakeTaskFlowInstanceSuccessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MakeTaskFlowInstanceSuccessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.dagInstanceId)) {
            query["DagInstanceId"] = request.dagInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MakeTaskFlowInstanceSuccess",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MakeTaskFlowInstanceSuccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func makeTaskFlowInstanceSuccess(_ request: MakeTaskFlowInstanceSuccessRequest) async throws -> MakeTaskFlowInstanceSuccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await makeTaskFlowInstanceSuccessWithOptions(request as! MakeTaskFlowInstanceSuccessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDataCorrectExecSQLWithOptions(_ request: ModifyDataCorrectExecSQLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDataCorrectExecSQLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.execSQL)) {
            query["ExecSQL"] = request.execSQL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDataCorrectExecSQL",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDataCorrectExecSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDataCorrectExecSQL(_ request: ModifyDataCorrectExecSQLRequest) async throws -> ModifyDataCorrectExecSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDataCorrectExecSQLWithOptions(request as! ModifyDataCorrectExecSQLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesensitizationStrategyWithOptions(_ request: ModifyDesensitizationStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDesensitizationStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnName)) {
            query["ColumnName"] = request.columnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId!;
        }
        if (!TeaUtils.Client.isUnset(request.isDefault)) {
            query["IsDefault"] = request.isDefault!;
        }
        if (!TeaUtils.Client.isUnset(request.isLogic)) {
            query["IsLogic"] = request.isLogic!;
        }
        if (!TeaUtils.Client.isUnset(request.isReset)) {
            query["IsReset"] = request.isReset!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDesensitizationStrategy",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDesensitizationStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesensitizationStrategy(_ request: ModifyDesensitizationStrategyRequest) async throws -> ModifyDesensitizationStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDesensitizationStrategyWithOptions(request as! ModifyDesensitizationStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceWithOptions(_ request: ModifyInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataLinkName)) {
            query["DataLinkName"] = request.dataLinkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databasePassword)) {
            query["DatabasePassword"] = request.databasePassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseUser)) {
            query["DatabaseUser"] = request.databaseUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbaId)) {
            query["DbaId"] = request.dbaId!;
        }
        if (!TeaUtils.Client.isUnset(request.ddlOnline)) {
            query["DdlOnline"] = request.ddlOnline!;
        }
        if (!TeaUtils.Client.isUnset(request.ecsInstanceId)) {
            query["EcsInstanceId"] = request.ecsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsRegion)) {
            query["EcsRegion"] = request.ecsRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSellCommon)) {
            query["EnableSellCommon"] = request.enableSellCommon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSellSitd)) {
            query["EnableSellSitd"] = request.enableSellSitd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSellStable)) {
            query["EnableSellStable"] = request.enableSellStable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSellTrust)) {
            query["EnableSellTrust"] = request.enableSellTrust ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envType)) {
            query["EnvType"] = request.envType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exportTimeout)) {
            query["ExportTimeout"] = request.exportTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.host)) {
            query["Host"] = request.host ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceAlias)) {
            query["InstanceAlias"] = request.instanceAlias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceSource)) {
            query["InstanceSource"] = request.instanceSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            query["NetworkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.queryTimeout)) {
            query["QueryTimeout"] = request.queryTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.safeRule)) {
            query["SafeRule"] = request.safeRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sid)) {
            query["Sid"] = request.sid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipTest)) {
            query["SkipTest"] = request.skipTest!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["TemplateType"] = request.templateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.useDsql)) {
            query["UseDsql"] = request.useDsql!;
        }
        if (!TeaUtils.Client.isUnset(request.useSsl)) {
            query["UseSsl"] = request.useSsl!;
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstance",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstance(_ request: ModifyInstanceRequest) async throws -> ModifyInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceWithOptions(request as! ModifyInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveTaskFlowToScenarioWithOptions(_ request: MoveTaskFlowToScenarioRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MoveTaskFlowToScenarioResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.scenarioId)) {
            query["ScenarioId"] = request.scenarioId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MoveTaskFlowToScenario",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MoveTaskFlowToScenarioResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveTaskFlowToScenario(_ request: MoveTaskFlowToScenarioRequest) async throws -> MoveTaskFlowToScenarioResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await moveTaskFlowToScenarioWithOptions(request as! MoveTaskFlowToScenarioRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineTaskFlowWithOptions(_ request: OfflineTaskFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineTaskFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineTaskFlow",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineTaskFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineTaskFlow(_ request: OfflineTaskFlowRequest) async throws -> OfflineTaskFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await offlineTaskFlowWithOptions(request as! OfflineTaskFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pauseDataCorrectSQLJobWithOptions(_ request: PauseDataCorrectSQLJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PauseDataCorrectSQLJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PauseDataCorrectSQLJob",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PauseDataCorrectSQLJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pauseDataCorrectSQLJob(_ request: PauseDataCorrectSQLJobRequest) async throws -> PauseDataCorrectSQLJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pauseDataCorrectSQLJobWithOptions(request as! PauseDataCorrectSQLJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func previewWorkflowWithOptions(_ request: PreviewWorkflowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PreviewWorkflowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PreviewWorkflow",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PreviewWorkflowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func previewWorkflow(_ request: PreviewWorkflowRequest) async throws -> PreviewWorkflowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await previewWorkflowWithOptions(request as! PreviewWorkflowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishAndDeployTaskFlowWithOptions(_ request: PublishAndDeployTaskFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishAndDeployTaskFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.versionComments)) {
            query["VersionComments"] = request.versionComments ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishAndDeployTaskFlow",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishAndDeployTaskFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishAndDeployTaskFlow(_ request: PublishAndDeployTaskFlowRequest) async throws -> PublishAndDeployTaskFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await publishAndDeployTaskFlowWithOptions(request as! PublishAndDeployTaskFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDataTrackResultDownloadStatusWithOptions(_ request: QueryDataTrackResultDownloadStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDataTrackResultDownloadStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.downloadKeyId)) {
            query["DownloadKeyId"] = request.downloadKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDataTrackResultDownloadStatus",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDataTrackResultDownloadStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDataTrackResultDownloadStatus(_ request: QueryDataTrackResultDownloadStatusRequest) async throws -> QueryDataTrackResultDownloadStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDataTrackResultDownloadStatusWithOptions(request as! QueryDataTrackResultDownloadStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reDeployLhDagVersionWithOptions(_ request: ReDeployLhDagVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReDeployLhDagVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.dagVersion)) {
            query["DagVersion"] = request.dagVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReDeployLhDagVersion",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReDeployLhDagVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reDeployLhDagVersion(_ request: ReDeployLhDagVersionRequest) async throws -> ReDeployLhDagVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reDeployLhDagVersionWithOptions(request as! ReDeployLhDagVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reRunTaskFlowInstanceWithOptions(_ request: ReRunTaskFlowInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReRunTaskFlowInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.dagInstanceId)) {
            query["DagInstanceId"] = request.dagInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.dagVersion)) {
            query["DagVersion"] = request.dagVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReRunTaskFlowInstance",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReRunTaskFlowInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reRunTaskFlowInstance(_ request: ReRunTaskFlowInstanceRequest) async throws -> ReRunTaskFlowInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reRunTaskFlowInstanceWithOptions(request as! ReRunTaskFlowInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundPayAsYouGoOrderWithOptions(_ request: RefundPayAsYouGoOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefundPayAsYouGoOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefundPayAsYouGoOrder",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefundPayAsYouGoOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundPayAsYouGoOrder(_ request: RefundPayAsYouGoOrderRequest) async throws -> RefundPayAsYouGoOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refundPayAsYouGoOrderWithOptions(request as! RefundPayAsYouGoOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerInstanceWithOptions(_ request: RegisterInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataLinkName)) {
            query["DataLinkName"] = request.dataLinkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databasePassword)) {
            query["DatabasePassword"] = request.databasePassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseUser)) {
            query["DatabaseUser"] = request.databaseUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbaUid)) {
            query["DbaUid"] = request.dbaUid!;
        }
        if (!TeaUtils.Client.isUnset(request.dbaUidByString)) {
            query["DbaUidByString"] = request.dbaUidByString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ddlOnline)) {
            query["DdlOnline"] = request.ddlOnline!;
        }
        if (!TeaUtils.Client.isUnset(request.ecsInstanceId)) {
            query["EcsInstanceId"] = request.ecsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsRegion)) {
            query["EcsRegion"] = request.ecsRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSellSitd)) {
            query["EnableSellSitd"] = request.enableSellSitd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envType)) {
            query["EnvType"] = request.envType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exportTimeout)) {
            query["ExportTimeout"] = request.exportTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.host)) {
            query["Host"] = request.host ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceAlias)) {
            query["InstanceAlias"] = request.instanceAlias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceSource)) {
            query["InstanceSource"] = request.instanceSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            query["NetworkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.queryTimeout)) {
            query["QueryTimeout"] = request.queryTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.safeRule)) {
            query["SafeRule"] = request.safeRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sid)) {
            query["Sid"] = request.sid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipTest)) {
            query["SkipTest"] = request.skipTest!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["TemplateType"] = request.templateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.useDsql)) {
            query["UseDsql"] = request.useDsql!;
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterInstance",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerInstance(_ request: RegisterInstanceRequest) async throws -> RegisterInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registerInstanceWithOptions(request as! RegisterInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerUserWithOptions(_ request: RegisterUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleNames)) {
            query["RoleNames"] = request.roleNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userNick)) {
            query["UserNick"] = request.userNick ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterUser",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerUser(_ request: RegisterUserRequest) async throws -> RegisterUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registerUserWithOptions(request as! RegisterUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartDataCorrectSQLJobWithOptions(_ request: RestartDataCorrectSQLJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartDataCorrectSQLJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartDataCorrectSQLJob",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartDataCorrectSQLJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartDataCorrectSQLJob(_ request: RestartDataCorrectSQLJobRequest) async throws -> RestartDataCorrectSQLJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await restartDataCorrectSQLJobWithOptions(request as! RestartDataCorrectSQLJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeTaskFlowInstanceWithOptions(_ request: ResumeTaskFlowInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeTaskFlowInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.dagInstanceId)) {
            query["DagInstanceId"] = request.dagInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.dagVersion)) {
            query["DagVersion"] = request.dagVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeTaskFlowInstance",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeTaskFlowInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeTaskFlowInstance(_ request: ResumeTaskFlowInstanceRequest) async throws -> ResumeTaskFlowInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resumeTaskFlowInstanceWithOptions(request as! ResumeTaskFlowInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryDataCorrectPreCheckWithOptions(_ request: RetryDataCorrectPreCheckRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RetryDataCorrectPreCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RetryDataCorrectPreCheck",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetryDataCorrectPreCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryDataCorrectPreCheck(_ request: RetryDataCorrectPreCheckRequest) async throws -> RetryDataCorrectPreCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await retryDataCorrectPreCheckWithOptions(request as! RetryDataCorrectPreCheckRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeTemplateAuthorityWithOptions(_ request: RevokeTemplateAuthorityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeTemplateAuthorityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeTemplateAuthority",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeTemplateAuthorityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeTemplateAuthority(_ request: RevokeTemplateAuthorityRequest) async throws -> RevokeTemplateAuthorityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokeTemplateAuthorityWithOptions(request as! RevokeTemplateAuthorityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeUserPermissionWithOptions(_ request: RevokeUserPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeUserPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsType)) {
            query["DsType"] = request.dsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.logic)) {
            query["Logic"] = request.logic!;
        }
        if (!TeaUtils.Client.isUnset(request.permTypes)) {
            query["PermTypes"] = request.permTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableId)) {
            query["TableId"] = request.tableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.userAccessId)) {
            query["UserAccessId"] = request.userAccessId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeUserPermission",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeUserPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeUserPermission(_ request: RevokeUserPermissionRequest) async throws -> RevokeUserPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokeUserPermissionWithOptions(request as! RevokeUserPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchDataTrackResultWithOptions(_ tmpReq: SearchDataTrackResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchDataTrackResultResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchDataTrackResultShrinkRequest = SearchDataTrackResultShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.columnFilter)) {
            request.columnFilterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.columnFilter, "ColumnFilter", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.filterTableList)) {
            request.filterTableListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterTableList, "FilterTableList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.filterTypeList)) {
            request.filterTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterTypeList, "FilterTypeList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnFilterShrink)) {
            query["ColumnFilter"] = request.columnFilterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterEndTime)) {
            query["FilterEndTime"] = request.filterEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterStartTime)) {
            query["FilterStartTime"] = request.filterStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterTableListShrink)) {
            query["FilterTableList"] = request.filterTableListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterTypeListShrink)) {
            query["FilterTypeList"] = request.filterTypeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchDataTrackResult",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchDataTrackResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchDataTrackResult(_ request: SearchDataTrackResultRequest) async throws -> SearchDataTrackResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchDataTrackResultWithOptions(request as! SearchDataTrackResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchDatabaseWithOptions(_ request: SearchDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbType)) {
            query["DbType"] = request.dbType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envType)) {
            query["EnvType"] = request.envType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            query["SearchKey"] = request.searchKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchRange)) {
            query["SearchRange"] = request.searchRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchTarget)) {
            query["SearchTarget"] = request.searchTarget ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchDatabase",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchDatabase(_ request: SearchDatabaseRequest) async throws -> SearchDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchDatabaseWithOptions(request as! SearchDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchTableWithOptions(_ request: SearchTableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchTableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbType)) {
            query["DbType"] = request.dbType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envType)) {
            query["EnvType"] = request.envType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.returnGuid)) {
            query["ReturnGuid"] = request.returnGuid!;
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            query["SearchKey"] = request.searchKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchRange)) {
            query["SearchRange"] = request.searchRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchTarget)) {
            query["SearchTarget"] = request.searchTarget ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchTable",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchTable(_ request: SearchTableRequest) async throws -> SearchTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchTableWithOptions(request as! SearchTableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setOwnersWithOptions(_ request: SetOwnersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetOwnersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerIds)) {
            query["OwnerIds"] = request.ownerIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerType)) {
            query["OwnerType"] = request.ownerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetOwners",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetOwnersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setOwners(_ request: SetOwnersRequest) async throws -> SetOwnersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setOwnersWithOptions(request as! SetOwnersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipDataCorrectRowCheckWithOptions(_ request: SkipDataCorrectRowCheckRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SkipDataCorrectRowCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            query["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SkipDataCorrectRowCheck",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SkipDataCorrectRowCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipDataCorrectRowCheck(_ request: SkipDataCorrectRowCheckRequest) async throws -> SkipDataCorrectRowCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await skipDataCorrectRowCheckWithOptions(request as! SkipDataCorrectRowCheckRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopTaskFlowInstanceWithOptions(_ request: StopTaskFlowInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopTaskFlowInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.dagInstanceId)) {
            query["DagInstanceId"] = request.dagInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopTaskFlowInstance",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopTaskFlowInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopTaskFlowInstance(_ request: StopTaskFlowInstanceRequest) async throws -> StopTaskFlowInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopTaskFlowInstanceWithOptions(request as! StopTaskFlowInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitOrderApprovalWithOptions(_ request: SubmitOrderApprovalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitOrderApprovalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitOrderApproval",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitOrderApprovalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitOrderApproval(_ request: SubmitOrderApprovalRequest) async throws -> SubmitOrderApprovalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitOrderApprovalWithOptions(request as! SubmitOrderApprovalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitStructSyncOrderApprovalWithOptions(_ request: SubmitStructSyncOrderApprovalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitStructSyncOrderApprovalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitStructSyncOrderApproval",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitStructSyncOrderApprovalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitStructSyncOrderApproval(_ request: SubmitStructSyncOrderApprovalRequest) async throws -> SubmitStructSyncOrderApprovalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitStructSyncOrderApprovalWithOptions(request as! SubmitStructSyncOrderApprovalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendTaskFlowInstanceWithOptions(_ request: SuspendTaskFlowInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendTaskFlowInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.dagInstanceId)) {
            query["DagInstanceId"] = request.dagInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendTaskFlowInstance",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendTaskFlowInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendTaskFlowInstance(_ request: SuspendTaskFlowInstanceRequest) async throws -> SuspendTaskFlowInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await suspendTaskFlowInstanceWithOptions(request as! SuspendTaskFlowInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncDatabaseMetaWithOptions(_ request: SyncDatabaseMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncDatabaseMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["DbId"] = request.dbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logic)) {
            query["Logic"] = request.logic!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncDatabaseMeta",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncDatabaseMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncDatabaseMeta(_ request: SyncDatabaseMetaRequest) async throws -> SyncDatabaseMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await syncDatabaseMetaWithOptions(request as! SyncDatabaseMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncInstanceMetaWithOptions(_ request: SyncInstanceMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncInstanceMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ignoreTable)) {
            query["IgnoreTable"] = request.ignoreTable!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncInstanceMeta",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncInstanceMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncInstanceMeta(_ request: SyncInstanceMetaRequest) async throws -> SyncInstanceMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await syncInstanceMetaWithOptions(request as! SyncInstanceMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAuthorityTemplateWithOptions(_ request: UpdateAuthorityTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAuthorityTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAuthorityTemplate",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAuthorityTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAuthorityTemplate(_ request: UpdateAuthorityTemplateRequest) async throws -> UpdateAuthorityTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAuthorityTemplateWithOptions(request as! UpdateAuthorityTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceWithOptions(_ request: UpdateInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataLinkName)) {
            query["DataLinkName"] = request.dataLinkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databasePassword)) {
            query["DatabasePassword"] = request.databasePassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseUser)) {
            query["DatabaseUser"] = request.databaseUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbaId)) {
            query["DbaId"] = request.dbaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ddlOnline)) {
            query["DdlOnline"] = request.ddlOnline!;
        }
        if (!TeaUtils.Client.isUnset(request.ecsInstanceId)) {
            query["EcsInstanceId"] = request.ecsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsRegion)) {
            query["EcsRegion"] = request.ecsRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSellSitd)) {
            query["EnableSellSitd"] = request.enableSellSitd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envType)) {
            query["EnvType"] = request.envType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exportTimeout)) {
            query["ExportTimeout"] = request.exportTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.host)) {
            query["Host"] = request.host ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceAlias)) {
            query["InstanceAlias"] = request.instanceAlias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceSource)) {
            query["InstanceSource"] = request.instanceSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.queryTimeout)) {
            query["QueryTimeout"] = request.queryTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.safeRuleId)) {
            query["SafeRuleId"] = request.safeRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sid)) {
            query["Sid"] = request.sid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipTest)) {
            query["SkipTest"] = request.skipTest!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["TemplateType"] = request.templateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.useDsql)) {
            query["UseDsql"] = request.useDsql!;
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstance",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstance(_ request: UpdateInstanceRequest) async throws -> UpdateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateInstanceWithOptions(request as! UpdateInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSLARulesWithOptions(_ tmpReq: UpdateSLARulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSLARulesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateSLARulesShrinkRequest = UpdateSLARulesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.slaRuleList)) {
            request.slaRuleListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.slaRuleList, "SlaRuleList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.slaRuleListShrink)) {
            query["SlaRuleList"] = request.slaRuleListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSLARules",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSLARulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSLARules(_ request: UpdateSLARulesRequest) async throws -> UpdateSLARulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSLARulesWithOptions(request as! UpdateSLARulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScenarioWithOptions(_ request: UpdateScenarioRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateScenarioResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenarioId)) {
            query["ScenarioId"] = request.scenarioId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenarioName)) {
            query["ScenarioName"] = request.scenarioName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateScenario",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateScenarioResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScenario(_ request: UpdateScenarioRequest) async throws -> UpdateScenarioResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateScenarioWithOptions(request as! UpdateScenarioRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStandardGroupWithOptions(_ request: UpdateStandardGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateStandardGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateStandardGroup",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateStandardGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStandardGroup(_ request: UpdateStandardGroupRequest) async throws -> UpdateStandardGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateStandardGroupWithOptions(request as! UpdateStandardGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskConfigWithOptions(_ request: UpdateTaskConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeConfig)) {
            query["NodeConfig"] = request.nodeConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskConfig",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskConfig(_ request: UpdateTaskConfigRequest) async throws -> UpdateTaskConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskConfigWithOptions(request as! UpdateTaskConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskContentWithOptions(_ request: UpdateTaskContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskContentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeContent)) {
            query["NodeContent"] = request.nodeContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskContent",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskContent(_ request: UpdateTaskContentRequest) async throws -> UpdateTaskContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskContentWithOptions(request as! UpdateTaskContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowConstantsWithOptions(_ tmpReq: UpdateTaskFlowConstantsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskFlowConstantsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTaskFlowConstantsShrinkRequest = UpdateTaskFlowConstantsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dagConstants)) {
            request.dagConstantsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dagConstants, "DagConstants", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagConstantsShrink)) {
            query["DagConstants"] = request.dagConstantsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskFlowConstants",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskFlowConstantsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowConstants(_ request: UpdateTaskFlowConstantsRequest) async throws -> UpdateTaskFlowConstantsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskFlowConstantsWithOptions(request as! UpdateTaskFlowConstantsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowCooperatorsWithOptions(_ tmpReq: UpdateTaskFlowCooperatorsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskFlowCooperatorsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTaskFlowCooperatorsShrinkRequest = UpdateTaskFlowCooperatorsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cooperatorIds)) {
            request.cooperatorIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cooperatorIds, "CooperatorIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cooperatorIdsShrink)) {
            query["CooperatorIds"] = request.cooperatorIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskFlowCooperators",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskFlowCooperatorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowCooperators(_ request: UpdateTaskFlowCooperatorsRequest) async throws -> UpdateTaskFlowCooperatorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskFlowCooperatorsWithOptions(request as! UpdateTaskFlowCooperatorsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowEdgesWithOptions(_ tmpReq: UpdateTaskFlowEdgesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskFlowEdgesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTaskFlowEdgesShrinkRequest = UpdateTaskFlowEdgesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.edges)) {
            request.edgesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.edges, "Edges", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.edgesShrink)) {
            query["Edges"] = request.edgesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskFlowEdges",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskFlowEdgesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowEdges(_ request: UpdateTaskFlowEdgesRequest) async throws -> UpdateTaskFlowEdgesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskFlowEdgesWithOptions(request as! UpdateTaskFlowEdgesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowNameAndDescWithOptions(_ request: UpdateTaskFlowNameAndDescRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskFlowNameAndDescResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.dagName)) {
            query["DagName"] = request.dagName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskFlowNameAndDesc",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskFlowNameAndDescResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowNameAndDesc(_ request: UpdateTaskFlowNameAndDescRequest) async throws -> UpdateTaskFlowNameAndDescResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskFlowNameAndDescWithOptions(request as! UpdateTaskFlowNameAndDescRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowNotificationWithOptions(_ request: UpdateTaskFlowNotificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskFlowNotificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.dagNotificationFail)) {
            query["DagNotificationFail"] = request.dagNotificationFail!;
        }
        if (!TeaUtils.Client.isUnset(request.dagNotificationSla)) {
            query["DagNotificationSla"] = request.dagNotificationSla!;
        }
        if (!TeaUtils.Client.isUnset(request.dagNotificationSuccess)) {
            query["DagNotificationSuccess"] = request.dagNotificationSuccess!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskFlowNotification",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskFlowNotificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowNotification(_ request: UpdateTaskFlowNotificationRequest) async throws -> UpdateTaskFlowNotificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskFlowNotificationWithOptions(request as! UpdateTaskFlowNotificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowOwnerWithOptions(_ request: UpdateTaskFlowOwnerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskFlowOwnerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.newOwnerId)) {
            query["NewOwnerId"] = request.newOwnerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskFlowOwner",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskFlowOwnerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowOwner(_ request: UpdateTaskFlowOwnerRequest) async throws -> UpdateTaskFlowOwnerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskFlowOwnerWithOptions(request as! UpdateTaskFlowOwnerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowRelationsWithOptions(_ tmpReq: UpdateTaskFlowRelationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskFlowRelationsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTaskFlowRelationsShrinkRequest = UpdateTaskFlowRelationsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.edges)) {
            request.edgesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.edges, "Edges", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.edgesShrink)) {
            query["Edges"] = request.edgesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskFlowRelations",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskFlowRelationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowRelations(_ request: UpdateTaskFlowRelationsRequest) async throws -> UpdateTaskFlowRelationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskFlowRelationsWithOptions(request as! UpdateTaskFlowRelationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowScheduleWithOptions(_ request: UpdateTaskFlowScheduleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskFlowScheduleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cronBeginDate)) {
            query["CronBeginDate"] = request.cronBeginDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cronEndDate)) {
            query["CronEndDate"] = request.cronEndDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cronStr)) {
            query["CronStr"] = request.cronStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cronType)) {
            query["CronType"] = request.cronType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleParam)) {
            query["ScheduleParam"] = request.scheduleParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleSwitch)) {
            query["ScheduleSwitch"] = request.scheduleSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.timeZoneId)) {
            query["TimeZoneId"] = request.timeZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerType)) {
            query["TriggerType"] = request.triggerType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskFlowSchedule",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskFlowScheduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowSchedule(_ request: UpdateTaskFlowScheduleRequest) async throws -> UpdateTaskFlowScheduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskFlowScheduleWithOptions(request as! UpdateTaskFlowScheduleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowTimeVariablesWithOptions(_ request: UpdateTaskFlowTimeVariablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskFlowTimeVariablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagId)) {
            query["DagId"] = request.dagId!;
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.timeVariables)) {
            query["TimeVariables"] = request.timeVariables ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskFlowTimeVariables",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskFlowTimeVariablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskFlowTimeVariables(_ request: UpdateTaskFlowTimeVariablesRequest) async throws -> UpdateTaskFlowTimeVariablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskFlowTimeVariablesWithOptions(request as! UpdateTaskFlowTimeVariablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskNameWithOptions(_ request: UpdateTaskNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeName)) {
            query["NodeName"] = request.nodeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskName",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskName(_ request: UpdateTaskNameRequest) async throws -> UpdateTaskNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskNameWithOptions(request as! UpdateTaskNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskOutputWithOptions(_ request: UpdateTaskOutputRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskOutputResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeOutput)) {
            query["NodeOutput"] = request.nodeOutput ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskOutput",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskOutputResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskOutput(_ request: UpdateTaskOutputRequest) async throws -> UpdateTaskOutputResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskOutputWithOptions(request as! UpdateTaskOutputRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskTimeVariablesWithOptions(_ request: UpdateTaskTimeVariablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskTimeVariablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.timeVariables)) {
            query["TimeVariables"] = request.timeVariables ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskTimeVariables",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskTimeVariablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskTimeVariables(_ request: UpdateTaskTimeVariablesRequest) async throws -> UpdateTaskTimeVariablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskTimeVariablesWithOptions(request as! UpdateTaskTimeVariablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserWithOptions(_ request: UpdateUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxExecuteCount)) {
            query["MaxExecuteCount"] = request.maxExecuteCount!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResultCount)) {
            query["MaxResultCount"] = request.maxResultCount!;
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleNames)) {
            query["RoleNames"] = request.roleNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tid)) {
            query["Tid"] = request.tid!;
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid!;
        }
        if (!TeaUtils.Client.isUnset(request.userNick)) {
            query["UserNick"] = request.userNick ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUser",
            "version": "2018-11-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUser(_ request: UpdateUserRequest) async throws -> UpdateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUserWithOptions(request as! UpdateUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
