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
        self._endpoint = try getEndpoint("mssp", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func confirmDjbhReportWithOptions(_ request: ConfirmDjbhReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmDjbhReportResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmDjbhReport",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmDjbhReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmDjbhReport(_ request: ConfirmDjbhReportRequest) async throws -> ConfirmDjbhReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await confirmDjbhReportWithOptions(request as! ConfirmDjbhReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceLinkedRoleWithOptions(_ request: CreateServiceLinkedRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceLinkedRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceLinkedRole",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceLinkedRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceLinkedRole(_ request: CreateServiceLinkedRoleRequest) async throws -> CreateServiceLinkedRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createServiceLinkedRoleWithOptions(request as! CreateServiceLinkedRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceWorkOrderWithOptions(_ request: CreateServiceWorkOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceWorkOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creator)) {
            body["Creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerId)) {
            body["CustomerId"] = request.customerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.durationDay)) {
            body["DurationDay"] = request.durationDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAttachment)) {
            body["IsAttachment"] = request.isAttachment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isMilestone)) {
            body["IsMilestone"] = request.isMilestone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isWorkOrderNotify)) {
            body["IsWorkOrderNotify"] = request.isWorkOrderNotify ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyDay)) {
            body["NotifyDay"] = request.notifyDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyId)) {
            body["NotifyId"] = request.notifyId!;
        }
        if (!TeaUtils.Client.isUnset(request.operateRemark)) {
            body["OperateRemark"] = request.operateRemark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            body["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operator_)) {
            body["Operator"] = request.operator_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            body["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.workOrderDetail)) {
            body["WorkOrderDetail"] = request.workOrderDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workOrderName)) {
            body["WorkOrderName"] = request.workOrderName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workOrderSource)) {
            body["WorkOrderSource"] = request.workOrderSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workOrderStatus)) {
            body["WorkOrderStatus"] = request.workOrderStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workOrderType)) {
            body["WorkOrderType"] = request.workOrderType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceWorkOrder",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceWorkOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceWorkOrder(_ request: CreateServiceWorkOrderRequest) async throws -> CreateServiceWorkOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createServiceWorkOrderWithOptions(request as! CreateServiceWorkOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDjbhReportWithOptions(_ request: DeleteDjbhReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDjbhReportResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDjbhReport",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDjbhReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDjbhReport(_ request: DeleteDjbhReportRequest) async throws -> DeleteDjbhReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDjbhReportWithOptions(request as! DeleteDjbhReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceLinkedRoleWithOptions(_ request: DescribeServiceLinkedRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceLinkedRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceLinkedRole",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceLinkedRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceLinkedRole(_ request: DescribeServiceLinkedRoleRequest) async throws -> DescribeServiceLinkedRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServiceLinkedRoleWithOptions(request as! DescribeServiceLinkedRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disposeServiceWorkOrderWithOptions(_ request: DisposeServiceWorkOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisposeServiceWorkOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachmentName)) {
            body["AttachmentName"] = request.attachmentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.forwardOwnerId)) {
            body["ForwardOwnerId"] = request.forwardOwnerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.isAttachment)) {
            body["IsAttachment"] = request.isAttachment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isWorkOrderNotify)) {
            body["IsWorkOrderNotify"] = request.isWorkOrderNotify ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyId)) {
            body["NotifyId"] = request.notifyId!;
        }
        if (!TeaUtils.Client.isUnset(request.operateRemark)) {
            body["OperateRemark"] = request.operateRemark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            body["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operator_)) {
            body["Operator"] = request.operator_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.upgradeOwnerId)) {
            body["UpgradeOwnerId"] = request.upgradeOwnerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workOrderDetail)) {
            body["WorkOrderDetail"] = request.workOrderDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workOrderName)) {
            body["WorkOrderName"] = request.workOrderName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workOrderStatus)) {
            body["WorkOrderStatus"] = request.workOrderStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisposeServiceWorkOrder",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisposeServiceWorkOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disposeServiceWorkOrder(_ request: DisposeServiceWorkOrderRequest) async throws -> DisposeServiceWorkOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disposeServiceWorkOrderWithOptions(request as! DisposeServiceWorkOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disposeWorkTaskWithOptions(_ request: DisposeWorkTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisposeWorkTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operator_)) {
            body["Operator"] = request.operator_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optRemark)) {
            body["OptRemark"] = request.optRemark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.taskIds)) {
            body["TaskIds"] = request.taskIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisposeWorkTask",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisposeWorkTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disposeWorkTask(_ request: DisposeWorkTaskRequest) async throws -> DisposeWorkTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disposeWorkTaskWithOptions(request as! DisposeWorkTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlarmDetailByIdWithOptions(_ request: GetAlarmDetailByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAlarmDetailByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAlarmDetailById",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAlarmDetailByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlarmDetailById(_ request: GetAlarmDetailByIdRequest) async throws -> GetAlarmDetailByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAlarmDetailByIdWithOptions(request as! GetAlarmDetailByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAttackedAssetDealWithOptions(_ request: GetAttackedAssetDealRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAttackedAssetDealResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dateType)) {
            body["DateType"] = request.dateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.suspEventSource)) {
            body["SuspEventSource"] = request.suspEventSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAttackedAssetDeal",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAttackedAssetDealResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAttackedAssetDeal(_ request: GetAttackedAssetDealRequest) async throws -> GetAttackedAssetDealResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAttackedAssetDealWithOptions(request as! GetAttackedAssetDealRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBaselineSummaryWithOptions(_ request: GetBaselineSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBaselineSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dateType)) {
            body["DateType"] = request.dateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.suspEventSource)) {
            body["SuspEventSource"] = request.suspEventSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBaselineSummary",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBaselineSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBaselineSummary(_ request: GetBaselineSummaryRequest) async throws -> GetBaselineSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBaselineSummaryWithOptions(request as! GetBaselineSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConsoleScoreWithOptions(_ request: GetConsoleScoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConsoleScoreResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dateType)) {
            body["DateType"] = request.dateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.suspEventSource)) {
            body["SuspEventSource"] = request.suspEventSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConsoleScore",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConsoleScoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConsoleScore(_ request: GetConsoleScoreRequest) async throws -> GetConsoleScoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConsoleScoreWithOptions(request as! GetConsoleScoreRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDetailByIdWithOptions(_ request: GetDetailByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDetailByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDetailById",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDetailByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDetailById(_ request: GetDetailByIdRequest) async throws -> GetDetailByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDetailByIdWithOptions(request as! GetDetailByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentDownloadUrlWithOptions(_ request: GetDocumentDownloadUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocumentDownloadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.reportType)) {
            body["ReportType"] = request.reportType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocumentDownloadUrl",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocumentDownloadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentDownloadUrl(_ request: GetDocumentDownloadUrlRequest) async throws -> GetDocumentDownloadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDocumentDownloadUrlWithOptions(request as! GetDocumentDownloadUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentPageWithOptions(_ request: GetDocumentPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocumentPageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.deliveredBy)) {
            body["DeliveredBy"] = request.deliveredBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentName)) {
            body["DocumentName"] = request.documentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentType)) {
            body["DocumentType"] = request.documentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.reportType)) {
            body["ReportType"] = request.reportType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocumentPage",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocumentPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentPage(_ request: GetDocumentPageRequest) async throws -> GetDocumentPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDocumentPageWithOptions(request as! GetDocumentPageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentSummaryWithOptions(_ request: GetDocumentSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocumentSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportType)) {
            body["ReportType"] = request.reportType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocumentSummary",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocumentSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentSummary(_ request: GetDocumentSummaryRequest) async throws -> GetDocumentSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDocumentSummaryWithOptions(request as! GetDocumentSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecentDocumentWithOptions(_ request: GetRecentDocumentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRecentDocumentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dateType)) {
            body["DateType"] = request.dateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.suspEventSource)) {
            body["SuspEventSource"] = request.suspEventSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRecentDocument",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRecentDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecentDocument(_ request: GetRecentDocumentRequest) async throws -> GetRecentDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRecentDocumentWithOptions(request as! GetRecentDocumentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSafetyCoverWithOptions(_ request: GetSafetyCoverRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSafetyCoverResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dateType)) {
            body["DateType"] = request.dateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.suspEventSource)) {
            body["SuspEventSource"] = request.suspEventSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSafetyCover",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSafetyCoverResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSafetyCover(_ request: GetSafetyCoverRequest) async throws -> GetSafetyCoverResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSafetyCoverWithOptions(request as! GetSafetyCoverRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSowListWithOptions(_ request: GetSowListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSowListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dateType)) {
            body["DateType"] = request.dateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.suspEventSource)) {
            body["SuspEventSource"] = request.suspEventSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSowList",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSowListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSowList(_ request: GetSowListRequest) async throws -> GetSowListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSowListWithOptions(request as! GetSowListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSuspEventPageWithOptions(_ request: GetSuspEventPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSuspEventPageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmEndTime)) {
            body["AlarmEndTime"] = request.alarmEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.alarmStartTime)) {
            body["AlarmStartTime"] = request.alarmStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSuspEventPage",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSuspEventPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSuspEventPage(_ request: GetSuspEventPageRequest) async throws -> GetSuspEventPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSuspEventPageWithOptions(request as! GetSuspEventPageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSuspEventSummaryWithOptions(_ request: GetSuspEventSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSuspEventSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dateType)) {
            body["DateType"] = request.dateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.suspEventSource)) {
            body["SuspEventSource"] = request.suspEventSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSuspEventSummary",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSuspEventSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSuspEventSummary(_ request: GetSuspEventSummaryRequest) async throws -> GetSuspEventSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSuspEventSummaryWithOptions(request as! GetSuspEventSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSuspPageSummaryWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetSuspPageSummaryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSuspPageSummary",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSuspPageSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSuspPageSummary() async throws -> GetSuspPageSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSuspPageSummaryWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserStatusWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserStatus",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserStatus() async throws -> GetUserStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserStatusWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVulItemPageWithOptions(_ request: GetVulItemPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVulItemPageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliasName)) {
            body["AliasName"] = request.aliasName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.dealed)) {
            body["Dealed"] = request.dealed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            body["Level"] = request.level ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.scanType)) {
            body["ScanType"] = request.scanType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVulItemPage",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVulItemPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVulItemPage(_ request: GetVulItemPageRequest) async throws -> GetVulItemPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVulItemPageWithOptions(request as! GetVulItemPageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVulListByIdWithOptions(_ request: GetVulListByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVulListByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.dealed)) {
            body["Dealed"] = request.dealed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.necessity)) {
            body["Necessity"] = request.necessity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuids)) {
            body["Uuids"] = request.uuids ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVulListById",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVulListByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVulListById(_ request: GetVulListByIdRequest) async throws -> GetVulListByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVulListByIdWithOptions(request as! GetVulListByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVulPageSummaryWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetVulPageSummaryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVulPageSummary",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVulPageSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVulPageSummary() async throws -> GetVulPageSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVulPageSummaryWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVulSummaryWithOptions(_ request: GetVulSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVulSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dateType)) {
            body["DateType"] = request.dateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.suspEventSource)) {
            body["SuspEventSource"] = request.suspEventSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVulSummary",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVulSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVulSummary(_ request: GetVulSummaryRequest) async throws -> GetVulSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVulSummaryWithOptions(request as! GetVulSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkTaskSummaryWithOptions(_ request: GetWorkTaskSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkTaskSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dateType)) {
            body["DateType"] = request.dateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.suspEventSource)) {
            body["SuspEventSource"] = request.suspEventSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkTaskSummary",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkTaskSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkTaskSummary(_ request: GetWorkTaskSummaryRequest) async throws -> GetWorkTaskSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWorkTaskSummaryWithOptions(request as! GetWorkTaskSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pageServiceCustomerWithOptions(_ request: PageServiceCustomerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PageServiceCustomerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authStatus)) {
            body["AuthStatus"] = request.authStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.cmAuthStatus)) {
            body["CmAuthStatus"] = request.cmAuthStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.monitorAuthStatus)) {
            body["MonitorAuthStatus"] = request.monitorAuthStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PageServiceCustomer",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PageServiceCustomerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pageServiceCustomer(_ request: PageServiceCustomerRequest) async throws -> PageServiceCustomerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pageServiceCustomerWithOptions(request as! PageServiceCustomerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendCustomEventWithOptions(_ request: SendCustomEventRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendCustomEventResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customerId)) {
            body["CustomerId"] = request.customerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSource)) {
            body["DataSource"] = request.dataSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventDescription)) {
            body["EventDescription"] = request.eventDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventDetails)) {
            body["EventDetails"] = request.eventDetails ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventName)) {
            body["EventName"] = request.eventName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventType)) {
            body["EventType"] = request.eventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.findTime)) {
            body["FindTime"] = request.findTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isSend)) {
            body["IsSend"] = request.isSend ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            body["Level"] = request.level ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.occurrenceTime)) {
            body["OccurrenceTime"] = request.occurrenceTime!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            body["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            body["Product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueId)) {
            body["UniqueId"] = request.uniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendCustomEvent",
            "version": "2016-12-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendCustomEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendCustomEvent(_ request: SendCustomEventRequest) async throws -> SendCustomEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendCustomEventWithOptions(request as! SendCustomEventRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
