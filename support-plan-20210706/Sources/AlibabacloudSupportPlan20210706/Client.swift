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
        self._endpoint = try getEndpoint("support-plan", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func closeTaskOrderWithOptions(_ request: CloseTaskOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloseTaskOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloseTaskOrder",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloseTaskOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeTaskOrder(_ request: CloseTaskOrderRequest) async throws -> CloseTaskOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await closeTaskOrderWithOptions(request as! CloseTaskOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskOrderWithOptions(_ request: CreateTaskOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTaskOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createUserId)) {
            query["CreateUserId"] = request.createUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isUrgent)) {
            query["IsUrgent"] = request.isUrgent!;
        }
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            query["OpenGroupId"] = request.openGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.overview)) {
            query["Overview"] = request.overview ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.urgentDescription)) {
            query["UrgentDescription"] = request.urgentDescription ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTaskOrder",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTaskOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskOrder(_ request: CreateTaskOrderRequest) async throws -> CreateTaskOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTaskOrderWithOptions(request as! CreateTaskOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskOrderByEventReportWithOptions(_ tmpReq: CreateTaskOrderByEventReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTaskOrderByEventReportResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateTaskOrderByEventReportShrinkRequest = CreateTaskOrderByEventReportShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.eventBody)) {
            request.eventBodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventBody, "EventBody", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.extinfo)) {
            request.extinfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extinfo, "Extinfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.business)) {
            query["Business"] = request.business ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createRealName)) {
            query["CreateRealName"] = request.createRealName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createUserId)) {
            query["CreateUserId"] = request.createUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventBodyShrink)) {
            query["EventBody"] = request.eventBodyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extinfoShrink)) {
            query["Extinfo"] = request.extinfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.importantDesc)) {
            query["ImportantDesc"] = request.importantDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinChildGroupUserIds)) {
            query["JoinChildGroupUserIds"] = request.joinChildGroupUserIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.monitorCongregation)) {
            query["MonitorCongregation"] = request.monitorCongregation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            query["OpenGroupId"] = request.openGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTaskOrderByEventReport",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTaskOrderByEventReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskOrderByEventReport(_ request: CreateTaskOrderByEventReportRequest) async throws -> CreateTaskOrderByEventReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTaskOrderByEventReportWithOptions(request as! CreateTaskOrderByEventReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnterpriseDingtalkGroupCustomerMemberWithOptions(_ tmpReq: DeleteEnterpriseDingtalkGroupCustomerMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEnterpriseDingtalkGroupCustomerMemberResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteEnterpriseDingtalkGroupCustomerMemberShrinkRequest = DeleteEnterpriseDingtalkGroupCustomerMemberShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.mobiles)) {
            request.mobilesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.mobiles, "Mobiles", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobilesShrink)) {
            body["Mobiles"] = request.mobilesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            body["OpenGroupId"] = request.openGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEnterpriseDingtalkGroupCustomerMember",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEnterpriseDingtalkGroupCustomerMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnterpriseDingtalkGroupCustomerMember(_ request: DeleteEnterpriseDingtalkGroupCustomerMemberRequest) async throws -> DeleteEnterpriseDingtalkGroupCustomerMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEnterpriseDingtalkGroupCustomerMemberWithOptions(request as! DeleteEnterpriseDingtalkGroupCustomerMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseDingtalkGroupWithOptions(_ request: GetEnterpriseDingtalkGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnterpriseDingtalkGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            body["OpenGroupId"] = request.openGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnterpriseDingtalkGroup",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnterpriseDingtalkGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseDingtalkGroup(_ request: GetEnterpriseDingtalkGroupRequest) async throws -> GetEnterpriseDingtalkGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEnterpriseDingtalkGroupWithOptions(request as! GetEnterpriseDingtalkGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseDingtalkGroupCustomerMemberWithOptions(_ request: GetEnterpriseDingtalkGroupCustomerMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnterpriseDingtalkGroupCustomerMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            body["OpenGroupId"] = request.openGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnterpriseDingtalkGroupCustomerMember",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnterpriseDingtalkGroupCustomerMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseDingtalkGroupCustomerMember(_ request: GetEnterpriseDingtalkGroupCustomerMemberRequest) async throws -> GetEnterpriseDingtalkGroupCustomerMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEnterpriseDingtalkGroupCustomerMemberWithOptions(request as! GetEnterpriseDingtalkGroupCustomerMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDdTaskOrderWithOptions(_ request: ListDdTaskOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDdTaskOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createRealName)) {
            query["CreateRealName"] = request.createRealName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isUrgent)) {
            query["IsUrgent"] = request.isUrgent!;
        }
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            query["OpenGroupId"] = request.openGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            query["TaskStatus"] = request.taskStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDdTaskOrder",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDdTaskOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDdTaskOrder(_ request: ListDdTaskOrderRequest) async throws -> ListDdTaskOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDdTaskOrderWithOptions(request as! ListDdTaskOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnterpriseDingtalkGroupCustomerMembersWithOptions(_ request: ListEnterpriseDingtalkGroupCustomerMembersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEnterpriseDingtalkGroupCustomerMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            query["OpenGroupId"] = request.openGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEnterpriseDingtalkGroupCustomerMembers",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEnterpriseDingtalkGroupCustomerMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnterpriseDingtalkGroupCustomerMembers(_ request: ListEnterpriseDingtalkGroupCustomerMembersRequest) async throws -> ListEnterpriseDingtalkGroupCustomerMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEnterpriseDingtalkGroupCustomerMembersWithOptions(request as! ListEnterpriseDingtalkGroupCustomerMembersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnterpriseDingtalkGroupsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListEnterpriseDingtalkGroupsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEnterpriseDingtalkGroups",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEnterpriseDingtalkGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnterpriseDingtalkGroups() async throws -> ListEnterpriseDingtalkGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEnterpriseDingtalkGroupsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductByGroupWithOptions(_ request: ListProductByGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductByGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            query["OpenGroupId"] = request.openGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductByGroup",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductByGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductByGroup(_ request: ListProductByGroupRequest) async throws -> ListProductByGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProductByGroupWithOptions(request as! ListProductByGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskInfoWithOptions(_ request: QueryTaskInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTaskInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTaskInfo",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTaskInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskInfo(_ request: QueryTaskInfoRequest) async throws -> QueryTaskInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTaskInfoWithOptions(request as! QueryTaskInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replyMessageApiWithOptions(_ request: ReplyMessageApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReplyMessageApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.msgContent)) {
            query["MsgContent"] = request.msgContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.msgType)) {
            query["MsgType"] = request.msgType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            query["OpenGroupId"] = request.openGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReplyMessageApi",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReplyMessageApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replyMessageApi(_ request: ReplyMessageApiRequest) async throws -> ReplyMessageApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await replyMessageApiWithOptions(request as! ReplyMessageApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restOpenTaskOrderWithOptions(_ request: RestOpenTaskOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RestOpenTaskOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            query["OpenGroupId"] = request.openGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resetContent)) {
            query["ResetContent"] = request.resetContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resetType)) {
            query["ResetType"] = request.resetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestOpenTaskOrder",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestOpenTaskOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restOpenTaskOrder(_ request: RestOpenTaskOrderRequest) async throws -> RestOpenTaskOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await restOpenTaskOrderWithOptions(request as! RestOpenTaskOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
