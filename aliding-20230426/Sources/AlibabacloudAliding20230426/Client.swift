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
        self._endpoint = try getEndpoint("aliding", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addAttendeeWithOptions(_ tmpReq: AddAttendeeRequest, _ tmpHeader: AddAttendeeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddAttendeeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddAttendeeShrinkRequest = AddAttendeeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddAttendeeShrinkHeaders = AddAttendeeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.attendeesToAdd)) {
            request.attendeesToAddShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.attendeesToAdd, "AttendeesToAdd", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attendeesToAddShrink)) {
            body["AttendeesToAdd"] = request.attendeesToAddShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            body["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chatNotification)) {
            body["chatNotification"] = request.chatNotification!;
        }
        if (!TeaUtils.Client.isUnset(request.pushNotification)) {
            body["pushNotification"] = request.pushNotification!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddAttendee",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/addAttendee",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddAttendeeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAttendee(_ request: AddAttendeeRequest) async throws -> AddAttendeeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddAttendeeHeaders = AddAttendeeHeaders([:])
        return try await addAttendeeWithOptions(request as! AddAttendeeRequest, headers as! AddAttendeeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMeetingRoomsWithOptions(_ tmpReq: AddMeetingRoomsRequest, _ tmpHeader: AddMeetingRoomsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddMeetingRoomsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddMeetingRoomsShrinkRequest = AddMeetingRoomsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddMeetingRoomsShrinkHeaders = AddMeetingRoomsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.meetingRoomsToAdd)) {
            request.meetingRoomsToAddShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.meetingRoomsToAdd, "MeetingRoomsToAdd", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            body["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.meetingRoomsToAddShrink)) {
            body["MeetingRoomsToAdd"] = request.meetingRoomsToAddShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddMeetingRooms",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/addMeetingRooms",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddMeetingRoomsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMeetingRooms(_ request: AddMeetingRoomsRequest) async throws -> AddMeetingRoomsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddMeetingRoomsHeaders = AddMeetingRoomsHeaders([:])
        return try await addMeetingRoomsWithOptions(request as! AddMeetingRoomsRequest, headers as! AddMeetingRoomsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addScenegroupMemberWithOptions(_ request: AddScenegroupMemberRequest, _ tmpHeader: AddScenegroupMemberHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddScenegroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: AddScenegroupMemberShrinkHeaders = AddScenegroupMemberShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openConversationId)) {
            body["OpenConversationId"] = request.openConversationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            body["UserIds"] = request.userIds ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddScenegroupMember",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/im/addScenegroupMember",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddScenegroupMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addScenegroupMember(_ request: AddScenegroupMemberRequest) async throws -> AddScenegroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddScenegroupMemberHeaders = AddScenegroupMemberHeaders([:])
        return try await addScenegroupMemberWithOptions(request as! AddScenegroupMemberRequest, headers as! AddScenegroupMemberHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWorkspaceWithOptions(_ tmpReq: AddWorkspaceRequest, _ tmpHeader: AddWorkspaceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddWorkspaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddWorkspaceShrinkRequest = AddWorkspaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddWorkspaceShrinkHeaders = AddWorkspaceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.option)) {
            request.optionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.option, "Option", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionShrink)) {
            body["Option"] = request.optionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddWorkspace",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/addWorkspace",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWorkspace(_ request: AddWorkspaceRequest) async throws -> AddWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddWorkspaceHeaders = AddWorkspaceHeaders([:])
        return try await addWorkspaceWithOptions(request as! AddWorkspaceRequest, headers as! AddWorkspaceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWorkspaceDocMembersWithOptions(_ tmpReq: AddWorkspaceDocMembersRequest, _ tmpHeader: AddWorkspaceDocMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddWorkspaceDocMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddWorkspaceDocMembersShrinkRequest = AddWorkspaceDocMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddWorkspaceDocMembersShrinkHeaders = AddWorkspaceDocMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddWorkspaceDocMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/addWorkspaceDocMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddWorkspaceDocMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWorkspaceDocMembers(_ request: AddWorkspaceDocMembersRequest) async throws -> AddWorkspaceDocMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddWorkspaceDocMembersHeaders = AddWorkspaceDocMembersHeaders([:])
        return try await addWorkspaceDocMembersWithOptions(request as! AddWorkspaceDocMembersRequest, headers as! AddWorkspaceDocMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWorkspaceMembersWithOptions(_ tmpReq: AddWorkspaceMembersRequest, _ tmpHeader: AddWorkspaceMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddWorkspaceMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddWorkspaceMembersShrinkRequest = AddWorkspaceMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddWorkspaceMembersShrinkHeaders = AddWorkspaceMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddWorkspaceMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/addWorkspaceMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddWorkspaceMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWorkspaceMembers(_ request: AddWorkspaceMembersRequest) async throws -> AddWorkspaceMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddWorkspaceMembersHeaders = AddWorkspaceMembersHeaders([:])
        return try await addWorkspaceMembersWithOptions(request as! AddWorkspaceMembersRequest, headers as! AddWorkspaceMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelScheduleConferenceWithOptions(_ tmpReq: CancelScheduleConferenceRequest, _ tmpHeader: CancelScheduleConferenceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelScheduleConferenceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CancelScheduleConferenceShrinkRequest = CancelScheduleConferenceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CancelScheduleConferenceShrinkHeaders = CancelScheduleConferenceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scheduleConferenceId)) {
            body["ScheduleConferenceId"] = request.scheduleConferenceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelScheduleConference",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/cancelScheduleConference",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelScheduleConferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelScheduleConference(_ request: CancelScheduleConferenceRequest) async throws -> CancelScheduleConferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CancelScheduleConferenceHeaders = CancelScheduleConferenceHeaders([:])
        return try await cancelScheduleConferenceWithOptions(request as! CancelScheduleConferenceRequest, headers as! CancelScheduleConferenceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clearWithOptions(_ tmpReq: ClearRequest, _ tmpHeader: ClearHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ClearResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ClearShrinkRequest = ClearShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ClearShrinkHeaders = ClearShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rangeAddress)) {
            body["RangeAddress"] = request.rangeAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Clear",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/clear",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ClearResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clear(_ request: ClearRequest) async throws -> ClearResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ClearHeaders = ClearHeaders([:])
        return try await clearWithOptions(request as! ClearRequest, headers as! ClearHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clearDataWithOptions(_ tmpReq: ClearDataRequest, _ tmpHeader: ClearDataHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ClearDataResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ClearDataShrinkRequest = ClearDataShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ClearDataShrinkHeaders = ClearDataShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rangeAddress)) {
            body["RangeAddress"] = request.rangeAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ClearData",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/clearData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ClearDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clearData(_ request: ClearDataRequest) async throws -> ClearDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ClearDataHeaders = ClearDataHeaders([:])
        return try await clearDataWithOptions(request as! ClearDataRequest, headers as! ClearDataHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commentListReportWithOptions(_ tmpReq: CommentListReportRequest, _ tmpHeader: CommentListReportHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CommentListReportResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CommentListReportShrinkRequest = CommentListReportShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CommentListReportShrinkHeaders = CommentListReportShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.offset)) {
            body["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.reportId)) {
            body["ReportId"] = request.reportId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CommentListReport",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/log/commentListReport",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CommentListReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commentListReport(_ request: CommentListReportRequest) async throws -> CommentListReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CommentListReportHeaders = CommentListReportHeaders([:])
        return try await commentListReportWithOptions(request as! CommentListReportRequest, headers as! CommentListReportHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventWithOptions(_ tmpReq: CreateEventRequest, _ tmpHeader: CreateEventHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEventResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateEventShrinkRequest = CreateEventShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateEventShrinkHeaders = CreateEventShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.attendees)) {
            request.attendeesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.attendees, "Attendees", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.end)) {
            request.endShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.end, "End", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.extra)) {
            request.extraShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extra, "Extra", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.location)) {
            request.locationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.location, "Location", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.onlineMeetingInfo)) {
            request.onlineMeetingInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.onlineMeetingInfo, "OnlineMeetingInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.recurrence)) {
            request.recurrenceShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.recurrence, "Recurrence", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.reminders)) {
            request.remindersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.reminders, "Reminders", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.uiConfigs)) {
            request.uiConfigsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.uiConfigs, "UiConfigs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.start)) {
            request.startShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.start, "start", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attendeesShrink)) {
            body["Attendees"] = request.attendeesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endShrink)) {
            body["End"] = request.endShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraShrink)) {
            body["Extra"] = request.extraShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAllDay)) {
            body["IsAllDay"] = request.isAllDay!;
        }
        if (!TeaUtils.Client.isUnset(request.locationShrink)) {
            body["Location"] = request.locationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onlineMeetingInfoShrink)) {
            body["OnlineMeetingInfo"] = request.onlineMeetingInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recurrenceShrink)) {
            body["Recurrence"] = request.recurrenceShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remindersShrink)) {
            body["Reminders"] = request.remindersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summary)) {
            body["Summary"] = request.summary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uiConfigsShrink)) {
            body["UiConfigs"] = request.uiConfigsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["calendarId"] = request.calendarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startShrink)) {
            body["start"] = request.startShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEvent",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/createEvent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEvent(_ request: CreateEventRequest) async throws -> CreateEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateEventHeaders = CreateEventHeaders([:])
        return try await createEventWithOptions(request as! CreateEventRequest, headers as! CreateEventHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLiveWithOptions(_ tmpReq: CreateLiveRequest, _ tmpHeader: CreateLiveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLiveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateLiveShrinkRequest = CreateLiveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateLiveShrinkHeaders = CreateLiveShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coverUrl)) {
            body["CoverUrl"] = request.coverUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.introduction)) {
            body["Introduction"] = request.introduction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preEndTime)) {
            body["PreEndTime"] = request.preEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.preStartTime)) {
            body["PreStartTime"] = request.preStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.publicType)) {
            body["PublicType"] = request.publicType!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLive",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/createLive",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLiveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLive(_ request: CreateLiveRequest) async throws -> CreateLiveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateLiveHeaders = CreateLiveHeaders([:])
        return try await createLiveWithOptions(request as! CreateLiveRequest, headers as! CreateLiveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMeetingRoomWithOptions(_ tmpReq: CreateMeetingRoomRequest, _ tmpHeader: CreateMeetingRoomHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMeetingRoomResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateMeetingRoomShrinkRequest = CreateMeetingRoomShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateMeetingRoomShrinkHeaders = CreateMeetingRoomShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.roomLabelIds)) {
            request.roomLabelIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.roomLabelIds, "RoomLabelIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.roomLocation)) {
            request.roomLocationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.roomLocation, "RoomLocation", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.isvRoomId)) {
            body["IsvRoomId"] = request.isvRoomId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCapacity)) {
            body["RoomCapacity"] = request.roomCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.roomLabelIdsShrink)) {
            body["RoomLabelIds"] = request.roomLabelIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomLocationShrink)) {
            body["RoomLocation"] = request.roomLocationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomName)) {
            body["RoomName"] = request.roomName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomPicture)) {
            body["RoomPicture"] = request.roomPicture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomStatus)) {
            body["RoomStatus"] = request.roomStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMeetingRoom",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/createMeetingRoom",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMeetingRoomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMeetingRoom(_ request: CreateMeetingRoomRequest) async throws -> CreateMeetingRoomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateMeetingRoomHeaders = CreateMeetingRoomHeaders([:])
        return try await createMeetingRoomWithOptions(request as! CreateMeetingRoomRequest, headers as! CreateMeetingRoomHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMeetingRoomGroupWithOptions(_ tmpReq: CreateMeetingRoomGroupRequest, _ tmpHeader: CreateMeetingRoomGroupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMeetingRoomGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateMeetingRoomGroupShrinkRequest = CreateMeetingRoomGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateMeetingRoomGroupShrinkHeaders = CreateMeetingRoomGroupShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentGroupId)) {
            body["ParentGroupId"] = request.parentGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMeetingRoomGroup",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/createMeetingRoomGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMeetingRoomGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMeetingRoomGroup(_ request: CreateMeetingRoomGroupRequest) async throws -> CreateMeetingRoomGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateMeetingRoomGroupHeaders = CreateMeetingRoomGroupHeaders([:])
        return try await createMeetingRoomGroupWithOptions(request as! CreateMeetingRoomGroupRequest, headers as! CreateMeetingRoomGroupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrgHonorTemplateWithOptions(_ tmpReq: CreateOrgHonorTemplateRequest, _ tmpHeader: CreateOrgHonorTemplateHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrgHonorTemplateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateOrgHonorTemplateShrinkRequest = CreateOrgHonorTemplateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateOrgHonorTemplateShrinkHeaders = CreateOrgHonorTemplateShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.avatarFrameMediaId)) {
            body["avatarFrameMediaId"] = request.avatarFrameMediaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultBgColor)) {
            body["defaultBgColor"] = request.defaultBgColor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.medalDesc)) {
            body["medalDesc"] = request.medalDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.medalMediaId)) {
            body["medalMediaId"] = request.medalMediaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.medalName)) {
            body["medalName"] = request.medalName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["orgId"] = request.orgId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOrgHonorTemplate",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/aliding/v1/honor/createOrgHonorTemplate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOrgHonorTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrgHonorTemplate(_ request: CreateOrgHonorTemplateRequest) async throws -> CreateOrgHonorTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateOrgHonorTemplateHeaders = CreateOrgHonorTemplateHeaders([:])
        return try await createOrgHonorTemplateWithOptions(request as! CreateOrgHonorTemplateRequest, headers as! CreateOrgHonorTemplateHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createReportWithOptions(_ tmpReq: CreateReportRequest, _ tmpHeader: CreateReportHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateReportResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateReportShrinkRequest = CreateReportShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateReportShrinkHeaders = CreateReportShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.contents)) {
            request.contentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contents, "Contents", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.toCids)) {
            request.toCidsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.toCids, "ToCids", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.toUserids)) {
            request.toUseridsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.toUserids, "ToUserids", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentsShrink)) {
            body["Contents"] = request.contentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ddFrom)) {
            body["DdFrom"] = request.ddFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toChat)) {
            body["ToChat"] = request.toChat!;
        }
        if (!TeaUtils.Client.isUnset(request.toCidsShrink)) {
            body["ToCids"] = request.toCidsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toUseridsShrink)) {
            body["ToUserids"] = request.toUseridsShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateReport",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/log/createReport",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createReport(_ request: CreateReportRequest) async throws -> CreateReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateReportHeaders = CreateReportHeaders([:])
        return try await createReportWithOptions(request as! CreateReportRequest, headers as! CreateReportHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScenegroupWithOptions(_ request: CreateScenegroupRequest, _ tmpHeader: CreateScenegroupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScenegroupResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: CreateScenegroupShrinkHeaders = CreateScenegroupShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addFriendForbidden)) {
            body["AddFriendForbidden"] = request.addFriendForbidden!;
        }
        if (!TeaUtils.Client.isUnset(request.allMembersCanCreateCalendar)) {
            body["AllMembersCanCreateCalendar"] = request.allMembersCanCreateCalendar!;
        }
        if (!TeaUtils.Client.isUnset(request.allMembersCanCreateMcsConf)) {
            body["AllMembersCanCreateMcsConf"] = request.allMembersCanCreateMcsConf!;
        }
        if (!TeaUtils.Client.isUnset(request.chatBannedType)) {
            body["ChatBannedType"] = request.chatBannedType!;
        }
        if (!TeaUtils.Client.isUnset(request.groupEmailDisabled)) {
            body["GroupEmailDisabled"] = request.groupEmailDisabled!;
        }
        if (!TeaUtils.Client.isUnset(request.groupLiveSwitch)) {
            body["GroupLiveSwitch"] = request.groupLiveSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.icon)) {
            body["Icon"] = request.icon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.managementType)) {
            body["ManagementType"] = request.managementType!;
        }
        if (!TeaUtils.Client.isUnset(request.membersToAdminChat)) {
            body["MembersToAdminChat"] = request.membersToAdminChat!;
        }
        if (!TeaUtils.Client.isUnset(request.mentionAllAuthority)) {
            body["MentionAllAuthority"] = request.mentionAllAuthority!;
        }
        if (!TeaUtils.Client.isUnset(request.onlyAdminCanDing)) {
            body["OnlyAdminCanDing"] = request.onlyAdminCanDing!;
        }
        if (!TeaUtils.Client.isUnset(request.onlyAdminCanSetMsgTop)) {
            body["OnlyAdminCanSetMsgTop"] = request.onlyAdminCanSetMsgTop!;
        }
        if (!TeaUtils.Client.isUnset(request.searchable)) {
            body["Searchable"] = request.searchable!;
        }
        if (!TeaUtils.Client.isUnset(request.showHistoryType)) {
            body["ShowHistoryType"] = request.showHistoryType!;
        }
        if (!TeaUtils.Client.isUnset(request.subadminIds)) {
            body["SubadminIds"] = request.subadminIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            body["UserIds"] = request.userIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validationType)) {
            body["ValidationType"] = request.validationType!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScenegroup",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/im/createScenegroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScenegroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScenegroup(_ request: CreateScenegroupRequest) async throws -> CreateScenegroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateScenegroupHeaders = CreateScenegroupHeaders([:])
        return try await createScenegroupWithOptions(request as! CreateScenegroupRequest, headers as! CreateScenegroupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScheduleConferenceWithOptions(_ tmpReq: CreateScheduleConferenceRequest, _ tmpHeader: CreateScheduleConferenceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScheduleConferenceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateScheduleConferenceShrinkRequest = CreateScheduleConferenceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateScheduleConferenceShrinkHeaders = CreateScheduleConferenceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScheduleConference",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/createScheduleConference",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScheduleConferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScheduleConference(_ request: CreateScheduleConferenceRequest) async throws -> CreateScheduleConferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateScheduleConferenceHeaders = CreateScheduleConferenceHeaders([:])
        return try await createScheduleConferenceWithOptions(request as! CreateScheduleConferenceRequest, headers as! CreateScheduleConferenceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSheetWithOptions(_ tmpReq: CreateSheetRequest, _ tmpHeader: CreateSheetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSheetResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSheetShrinkRequest = CreateSheetShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateSheetShrinkHeaders = CreateSheetShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSheet",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/createSheet",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSheetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSheet(_ request: CreateSheetRequest) async throws -> CreateSheetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateSheetHeaders = CreateSheetHeaders([:])
        return try await createSheetWithOptions(request as! CreateSheetRequest, headers as! CreateSheetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubscribedCalendarWithOptions(_ tmpReq: CreateSubscribedCalendarRequest, _ tmpHeader: CreateSubscribedCalendarHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSubscribedCalendarResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSubscribedCalendarShrinkRequest = CreateSubscribedCalendarShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateSubscribedCalendarShrinkHeaders = CreateSubscribedCalendarShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.managers)) {
            request.managersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.managers, "Managers", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.subscribeScope)) {
            request.subscribeScopeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.subscribeScope, "SubscribeScope", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.managersShrink)) {
            body["Managers"] = request.managersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscribeScopeShrink)) {
            body["SubscribeScope"] = request.subscribeScopeShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSubscribedCalendar",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/createSubscribedCalendar",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSubscribedCalendarResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubscribedCalendar(_ request: CreateSubscribedCalendarRequest) async throws -> CreateSubscribedCalendarResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateSubscribedCalendarHeaders = CreateSubscribedCalendarHeaders([:])
        return try await createSubscribedCalendarWithOptions(request as! CreateSubscribedCalendarRequest, headers as! CreateSubscribedCalendarHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTodoTaskWithOptions(_ tmpReq: CreateTodoTaskRequest, _ tmpHeader: CreateTodoTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTodoTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateTodoTaskShrinkRequest = CreateTodoTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateTodoTaskShrinkHeaders = CreateTodoTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.contentFieldList)) {
            request.contentFieldListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contentFieldList, "contentFieldList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.detailUrl)) {
            request.detailUrlShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.detailUrl, "detailUrl", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.executorIds)) {
            request.executorIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.executorIds, "executorIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notifyConfigs)) {
            request.notifyConfigsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notifyConfigs, "notifyConfigs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.participantIds)) {
            request.participantIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.participantIds, "participantIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operatorId)) {
            query["operatorId"] = request.operatorId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentFieldListShrink)) {
            body["contentFieldList"] = request.contentFieldListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creatorId)) {
            body["creatorId"] = request.creatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detailUrlShrink)) {
            body["detailUrl"] = request.detailUrlShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dueTime)) {
            body["dueTime"] = request.dueTime!;
        }
        if (!TeaUtils.Client.isUnset(request.executorIdsShrink)) {
            body["executorIds"] = request.executorIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isOnlyShowExecutor)) {
            body["isOnlyShowExecutor"] = request.isOnlyShowExecutor!;
        }
        if (!TeaUtils.Client.isUnset(request.notifyConfigsShrink)) {
            body["notifyConfigs"] = request.notifyConfigsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.participantIdsShrink)) {
            body["participantIds"] = request.participantIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            body["subject"] = request.subject ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTodoTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/createTodoTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTodoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTodoTask(_ request: CreateTodoTaskRequest) async throws -> CreateTodoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateTodoTaskHeaders = CreateTodoTaskHeaders([:])
        return try await createTodoTaskWithOptions(request as! CreateTodoTaskRequest, headers as! CreateTodoTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoConferenceWithOptions(_ tmpReq: CreateVideoConferenceRequest, _ tmpHeader: CreateVideoConferenceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVideoConferenceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateVideoConferenceShrinkRequest = CreateVideoConferenceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateVideoConferenceShrinkHeaders = CreateVideoConferenceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.inviteUserIds)) {
            request.inviteUserIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.inviteUserIds, "InviteUserIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.confTitle)) {
            body["ConfTitle"] = request.confTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inviteCaller)) {
            body["InviteCaller"] = request.inviteCaller!;
        }
        if (!TeaUtils.Client.isUnset(request.inviteUserIdsShrink)) {
            body["InviteUserIds"] = request.inviteUserIdsShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVideoConference",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/createVideoConference",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVideoConferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoConference(_ request: CreateVideoConferenceRequest) async throws -> CreateVideoConferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateVideoConferenceHeaders = CreateVideoConferenceHeaders([:])
        return try await createVideoConferenceWithOptions(request as! CreateVideoConferenceRequest, headers as! CreateVideoConferenceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspaceWithOptions(_ tmpReq: CreateWorkspaceRequest, _ tmpHeader: CreateWorkspaceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkspaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateWorkspaceShrinkRequest = CreateWorkspaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateWorkspaceShrinkHeaders = CreateWorkspaceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkspace",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/createWorkspace",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspace(_ request: CreateWorkspaceRequest) async throws -> CreateWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateWorkspaceHeaders = CreateWorkspaceHeaders([:])
        return try await createWorkspaceWithOptions(request as! CreateWorkspaceRequest, headers as! CreateWorkspaceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspaceDocWithOptions(_ tmpReq: CreateWorkspaceDocRequest, _ tmpHeader: CreateWorkspaceDocHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkspaceDocResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateWorkspaceDocShrinkRequest = CreateWorkspaceDocShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateWorkspaceDocShrinkHeaders = CreateWorkspaceDocShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docType)) {
            body["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentNodeId)) {
            body["ParentNodeId"] = request.parentNodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            body["TemplateType"] = request.templateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkspaceDoc",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/createWorkspaceDoc",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkspaceDocResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspaceDoc(_ request: CreateWorkspaceDocRequest) async throws -> CreateWorkspaceDocResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateWorkspaceDocHeaders = CreateWorkspaceDocHeaders([:])
        return try await createWorkspaceDocWithOptions(request as! CreateWorkspaceDocRequest, headers as! CreateWorkspaceDocHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteColumnsWithOptions(_ tmpReq: DeleteColumnsRequest, _ tmpHeader: DeleteColumnsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteColumnsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteColumnsShrinkRequest = DeleteColumnsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteColumnsShrinkHeaders = DeleteColumnsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.column)) {
            body["Column"] = request.column!;
        }
        if (!TeaUtils.Client.isUnset(request.columnCount)) {
            body["ColumnCount"] = request.columnCount!;
        }
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteColumns",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/deleteColumns",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteColumnsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteColumns(_ request: DeleteColumnsRequest) async throws -> DeleteColumnsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteColumnsHeaders = DeleteColumnsHeaders([:])
        return try await deleteColumnsWithOptions(request as! DeleteColumnsRequest, headers as! DeleteColumnsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventWithOptions(_ request: DeleteEventRequest, _ tmpHeader: DeleteEventHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEventResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: DeleteEventShrinkHeaders = DeleteEventShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            body["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushNotification)) {
            body["pushNotification"] = request.pushNotification!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEvent",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/deleteEvent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEvent(_ request: DeleteEventRequest) async throws -> DeleteEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteEventHeaders = DeleteEventHeaders([:])
        return try await deleteEventWithOptions(request as! DeleteEventRequest, headers as! DeleteEventHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLiveWithOptions(_ tmpReq: DeleteLiveRequest, _ tmpHeader: DeleteLiveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLiveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteLiveShrinkRequest = DeleteLiveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteLiveShrinkHeaders = DeleteLiveShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.liveId)) {
            body["LiveId"] = request.liveId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLive",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/deleteLive",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLiveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLive(_ request: DeleteLiveRequest) async throws -> DeleteLiveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteLiveHeaders = DeleteLiveHeaders([:])
        return try await deleteLiveWithOptions(request as! DeleteLiveRequest, headers as! DeleteLiveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMeetingRoomWithOptions(_ tmpReq: DeleteMeetingRoomRequest, _ tmpHeader: DeleteMeetingRoomHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMeetingRoomResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteMeetingRoomShrinkRequest = DeleteMeetingRoomShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteMeetingRoomShrinkHeaders = DeleteMeetingRoomShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roomId)) {
            body["RoomId"] = request.roomId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMeetingRoom",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/deleteMeetingRoom",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMeetingRoomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMeetingRoom(_ request: DeleteMeetingRoomRequest) async throws -> DeleteMeetingRoomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteMeetingRoomHeaders = DeleteMeetingRoomHeaders([:])
        return try await deleteMeetingRoomWithOptions(request as! DeleteMeetingRoomRequest, headers as! DeleteMeetingRoomHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMeetingRoomGroupWithOptions(_ tmpReq: DeleteMeetingRoomGroupRequest, _ tmpHeader: DeleteMeetingRoomGroupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMeetingRoomGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteMeetingRoomGroupShrinkRequest = DeleteMeetingRoomGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteMeetingRoomGroupShrinkHeaders = DeleteMeetingRoomGroupShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMeetingRoomGroup",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/deleteMeetingRoomGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMeetingRoomGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMeetingRoomGroup(_ request: DeleteMeetingRoomGroupRequest) async throws -> DeleteMeetingRoomGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteMeetingRoomGroupHeaders = DeleteMeetingRoomGroupHeaders([:])
        return try await deleteMeetingRoomGroupWithOptions(request as! DeleteMeetingRoomGroupRequest, headers as! DeleteMeetingRoomGroupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRowsWithOptions(_ tmpReq: DeleteRowsRequest, _ tmpHeader: DeleteRowsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRowsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteRowsShrinkRequest = DeleteRowsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteRowsShrinkHeaders = DeleteRowsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.row)) {
            body["Row"] = request.row!;
        }
        if (!TeaUtils.Client.isUnset(request.rowCount)) {
            body["RowCount"] = request.rowCount!;
        }
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRows",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/deleteRows",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRowsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRows(_ request: DeleteRowsRequest) async throws -> DeleteRowsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteRowsHeaders = DeleteRowsHeaders([:])
        return try await deleteRowsWithOptions(request as! DeleteRowsRequest, headers as! DeleteRowsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScenegroupMemberWithOptions(_ request: DeleteScenegroupMemberRequest, _ tmpHeader: DeleteScenegroupMemberHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteScenegroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: DeleteScenegroupMemberShrinkHeaders = DeleteScenegroupMemberShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openConversationId)) {
            body["OpenConversationId"] = request.openConversationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            body["UserIds"] = request.userIds ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteScenegroupMember",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/im/deleteScenegroupMember",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteScenegroupMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScenegroupMember(_ request: DeleteScenegroupMemberRequest) async throws -> DeleteScenegroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteScenegroupMemberHeaders = DeleteScenegroupMemberHeaders([:])
        return try await deleteScenegroupMemberWithOptions(request as! DeleteScenegroupMemberRequest, headers as! DeleteScenegroupMemberHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSheetWithOptions(_ tmpReq: DeleteSheetRequest, _ tmpHeader: DeleteSheetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSheetResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteSheetShrinkRequest = DeleteSheetShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteSheetShrinkHeaders = DeleteSheetShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSheet",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/deleteSheet",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSheetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSheet(_ request: DeleteSheetRequest) async throws -> DeleteSheetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteSheetHeaders = DeleteSheetHeaders([:])
        return try await deleteSheetWithOptions(request as! DeleteSheetRequest, headers as! DeleteSheetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSubscribedCalendarWithOptions(_ request: DeleteSubscribedCalendarRequest, _ tmpHeader: DeleteSubscribedCalendarHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSubscribedCalendarResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: DeleteSubscribedCalendarShrinkHeaders = DeleteSubscribedCalendarShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSubscribedCalendar",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/deleteSubscribedCalendar",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSubscribedCalendarResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSubscribedCalendar(_ request: DeleteSubscribedCalendarRequest) async throws -> DeleteSubscribedCalendarResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteSubscribedCalendarHeaders = DeleteSubscribedCalendarHeaders([:])
        return try await deleteSubscribedCalendarWithOptions(request as! DeleteSubscribedCalendarRequest, headers as! DeleteSubscribedCalendarHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTodoTaskWithOptions(_ tmpReq: DeleteTodoTaskRequest, _ tmpHeader: DeleteTodoTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTodoTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteTodoTaskShrinkRequest = DeleteTodoTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteTodoTaskShrinkHeaders = DeleteTodoTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorId)) {
            body["operatorId"] = request.operatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTodoTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/deleteTodoTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTodoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTodoTask(_ request: DeleteTodoTaskRequest) async throws -> DeleteTodoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteTodoTaskHeaders = DeleteTodoTaskHeaders([:])
        return try await deleteTodoTaskWithOptions(request as! DeleteTodoTaskRequest, headers as! DeleteTodoTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceDocMembersWithOptions(_ tmpReq: DeleteWorkspaceDocMembersRequest, _ tmpHeader: DeleteWorkspaceDocMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkspaceDocMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteWorkspaceDocMembersShrinkRequest = DeleteWorkspaceDocMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteWorkspaceDocMembersShrinkHeaders = DeleteWorkspaceDocMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkspaceDocMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/deleteWorkspaceDocMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkspaceDocMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceDocMembers(_ request: DeleteWorkspaceDocMembersRequest) async throws -> DeleteWorkspaceDocMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteWorkspaceDocMembersHeaders = DeleteWorkspaceDocMembersHeaders([:])
        return try await deleteWorkspaceDocMembersWithOptions(request as! DeleteWorkspaceDocMembersRequest, headers as! DeleteWorkspaceDocMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceMembersWithOptions(_ tmpReq: DeleteWorkspaceMembersRequest, _ tmpHeader: DeleteWorkspaceMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkspaceMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteWorkspaceMembersShrinkRequest = DeleteWorkspaceMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteWorkspaceMembersShrinkHeaders = DeleteWorkspaceMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkspaceMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/deleteWorkspaceMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkspaceMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceMembers(_ request: DeleteWorkspaceMembersRequest) async throws -> DeleteWorkspaceMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteWorkspaceMembersHeaders = DeleteWorkspaceMembersHeaders([:])
        return try await deleteWorkspaceMembersWithOptions(request as! DeleteWorkspaceMembersRequest, headers as! DeleteWorkspaceMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAllSheetsWithOptions(_ tmpReq: GetAllSheetsRequest, _ tmpHeader: GetAllSheetsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAllSheetsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetAllSheetsShrinkRequest = GetAllSheetsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetAllSheetsShrinkHeaders = GetAllSheetsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAllSheets",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/getAllSheets",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAllSheetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAllSheets(_ request: GetAllSheetsRequest) async throws -> GetAllSheetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetAllSheetsHeaders = GetAllSheetsHeaders([:])
        return try await getAllSheetsWithOptions(request as! GetAllSheetsRequest, headers as! GetAllSheetsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEventWithOptions(_ request: GetEventRequest, _ tmpHeader: GetEventHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEventResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetEventShrinkHeaders = GetEventShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxAttendees)) {
            query["MaxAttendees"] = request.maxAttendees!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            body["EventId"] = request.eventId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEvent",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/getEvent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEvent(_ request: GetEventRequest) async throws -> GetEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetEventHeaders = GetEventHeaders([:])
        return try await getEventWithOptions(request as! GetEventRequest, headers as! GetEventHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMeetingRoomsScheduleWithOptions(_ tmpReq: GetMeetingRoomsScheduleRequest, _ tmpHeader: GetMeetingRoomsScheduleHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMeetingRoomsScheduleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetMeetingRoomsScheduleShrinkRequest = GetMeetingRoomsScheduleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetMeetingRoomsScheduleShrinkHeaders = GetMeetingRoomsScheduleShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.roomIds)) {
            request.roomIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.roomIds, "RoomIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomIdsShrink)) {
            body["RoomIds"] = request.roomIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMeetingRoomsSchedule",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/getMeetingRoomsSchedule",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMeetingRoomsScheduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMeetingRoomsSchedule(_ request: GetMeetingRoomsScheduleRequest) async throws -> GetMeetingRoomsScheduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetMeetingRoomsScheduleHeaders = GetMeetingRoomsScheduleHeaders([:])
        return try await getMeetingRoomsScheduleWithOptions(request as! GetMeetingRoomsScheduleRequest, headers as! GetMeetingRoomsScheduleHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMineWorkspaceWithOptions(_ tmpReq: GetMineWorkspaceRequest, _ tmpHeader: GetMineWorkspaceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMineWorkspaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetMineWorkspaceShrinkRequest = GetMineWorkspaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetMineWorkspaceShrinkHeaders = GetMineWorkspaceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.request)) {
            request.requestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.request, "Request", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.requestShrink)) {
            body["Request"] = request.requestShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMineWorkspace",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/getMineWorkspace",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMineWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMineWorkspace(_ request: GetMineWorkspaceRequest) async throws -> GetMineWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetMineWorkspaceHeaders = GetMineWorkspaceHeaders([:])
        return try await getMineWorkspaceWithOptions(request as! GetMineWorkspaceRequest, headers as! GetMineWorkspaceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeWithOptions(_ tmpReq: GetNodeRequest, _ tmpHeader: GetNodeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetNodeShrinkRequest = GetNodeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetNodeShrinkHeaders = GetNodeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withPermissionRole)) {
            body["WithPermissionRole"] = request.withPermissionRole!;
        }
        if (!TeaUtils.Client.isUnset(request.withStatisticalInfo)) {
            body["WithStatisticalInfo"] = request.withStatisticalInfo!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNode",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/getNode",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNode(_ request: GetNodeRequest) async throws -> GetNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetNodeHeaders = GetNodeHeaders([:])
        return try await getNodeWithOptions(request as! GetNodeRequest, headers as! GetNodeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeByUrlWithOptions(_ tmpReq: GetNodeByUrlRequest, _ tmpHeader: GetNodeByUrlHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeByUrlResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetNodeByUrlShrinkRequest = GetNodeByUrlShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetNodeByUrlShrinkHeaders = GetNodeByUrlShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.option)) {
            request.optionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.option, "Option", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.optionShrink)) {
            body["Option"] = request.optionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeByUrl",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/getNodeByUrl",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeByUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeByUrl(_ request: GetNodeByUrlRequest) async throws -> GetNodeByUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetNodeByUrlHeaders = GetNodeByUrlHeaders([:])
        return try await getNodeByUrlWithOptions(request as! GetNodeByUrlRequest, headers as! GetNodeByUrlHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodesWithOptions(_ tmpReq: GetNodesRequest, _ tmpHeader: GetNodesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetNodesShrinkRequest = GetNodesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetNodesShrinkHeaders = GetNodesShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.nodeIds)) {
            request.nodeIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nodeIds, "NodeIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.option)) {
            request.optionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.option, "Option", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeIdsShrink)) {
            body["NodeIds"] = request.nodeIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionShrink)) {
            body["Option"] = request.optionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodes",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/getNodes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodes(_ request: GetNodesRequest) async throws -> GetNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetNodesHeaders = GetNodesHeaders([:])
        return try await getNodesWithOptions(request as! GetNodesRequest, headers as! GetNodesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOpenUrlWithOptions(_ request: GetOpenUrlRequest, _ tmpHeader: GetOpenUrlHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOpenUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetOpenUrlShrinkHeaders = GetOpenUrlShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            body["FileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            body["Timeout"] = request.timeout!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOpenUrl",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getOpenUrl",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOpenUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOpenUrl(_ request: GetOpenUrlRequest) async throws -> GetOpenUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetOpenUrlHeaders = GetOpenUrlHeaders([:])
        return try await getOpenUrlWithOptions(request as! GetOpenUrlRequest, headers as! GetOpenUrlHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRangeWithOptions(_ tmpReq: GetRangeRequest, _ tmpHeader: GetRangeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRangeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetRangeShrinkRequest = GetRangeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetRangeShrinkHeaders = GetRangeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rangeAddress)) {
            body["RangeAddress"] = request.rangeAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.select)) {
            body["Select"] = request.select ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRange",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/getRange",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRangeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRange(_ request: GetRangeRequest) async throws -> GetRangeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetRangeHeaders = GetRangeHeaders([:])
        return try await getRangeWithOptions(request as! GetRangeRequest, headers as! GetRangeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReportTemplateByNameWithOptions(_ tmpReq: GetReportTemplateByNameRequest, _ tmpHeader: GetReportTemplateByNameHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetReportTemplateByNameResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetReportTemplateByNameShrinkRequest = GetReportTemplateByNameShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetReportTemplateByNameShrinkHeaders = GetReportTemplateByNameShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetReportTemplateByName",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/log/getReportTemplateByName",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetReportTemplateByNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReportTemplateByName(_ request: GetReportTemplateByNameRequest) async throws -> GetReportTemplateByNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetReportTemplateByNameHeaders = GetReportTemplateByNameHeaders([:])
        return try await getReportTemplateByNameWithOptions(request as! GetReportTemplateByNameRequest, headers as! GetReportTemplateByNameHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReportUnReadCountWithOptions(_ tmpReq: GetReportUnReadCountRequest, _ tmpHeader: GetReportUnReadCountHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetReportUnReadCountResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetReportUnReadCountShrinkRequest = GetReportUnReadCountShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetReportUnReadCountShrinkHeaders = GetReportUnReadCountShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.request)) {
            request.requestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.request, "Request", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.requestShrink)) {
            body["Request"] = request.requestShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetReportUnReadCount",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/log/getReportUnReadCount",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetReportUnReadCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReportUnReadCount(_ request: GetReportUnReadCountRequest) async throws -> GetReportUnReadCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetReportUnReadCountHeaders = GetReportUnReadCountHeaders([:])
        return try await getReportUnReadCountWithOptions(request as! GetReportUnReadCountRequest, headers as! GetReportUnReadCountHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSheetWithOptions(_ tmpReq: GetSheetRequest, _ tmpHeader: GetSheetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSheetResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetSheetShrinkRequest = GetSheetShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetSheetShrinkHeaders = GetSheetShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSheet",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/getSheet",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSheetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSheet(_ request: GetSheetRequest) async throws -> GetSheetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetSheetHeaders = GetSheetHeaders([:])
        return try await getSheetWithOptions(request as! GetSheetRequest, headers as! GetSheetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSpaceDirectoriesWithOptions(_ tmpReq: GetSpaceDirectoriesRequest, _ tmpHeader: GetSpaceDirectoriesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSpaceDirectoriesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetSpaceDirectoriesShrinkRequest = GetSpaceDirectoriesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetSpaceDirectoriesShrinkHeaders = GetSpaceDirectoriesShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dentryId)) {
            body["DentryId"] = request.dentryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceId)) {
            body["SpaceId"] = request.spaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSpaceDirectories",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/getSpaceDirectories",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSpaceDirectoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSpaceDirectories(_ request: GetSpaceDirectoriesRequest) async throws -> GetSpaceDirectoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetSpaceDirectoriesHeaders = GetSpaceDirectoriesHeaders([:])
        return try await getSpaceDirectoriesWithOptions(request as! GetSpaceDirectoriesRequest, headers as! GetSpaceDirectoriesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubscribedCalendarWithOptions(_ request: GetSubscribedCalendarRequest, _ tmpHeader: GetSubscribedCalendarHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSubscribedCalendarResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetSubscribedCalendarShrinkHeaders = GetSubscribedCalendarShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSubscribedCalendar",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/getSubscribedCalendar",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSubscribedCalendarResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubscribedCalendar(_ request: GetSubscribedCalendarRequest) async throws -> GetSubscribedCalendarResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetSubscribedCalendarHeaders = GetSubscribedCalendarHeaders([:])
        return try await getSubscribedCalendarWithOptions(request as! GetSubscribedCalendarRequest, headers as! GetSubscribedCalendarHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateListByUserIdWithOptions(_ tmpReq: GetTemplateListByUserIdRequest, _ tmpHeader: GetTemplateListByUserIdHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTemplateListByUserIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetTemplateListByUserIdShrinkRequest = GetTemplateListByUserIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetTemplateListByUserIdShrinkHeaders = GetTemplateListByUserIdShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.offset)) {
            body["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTemplateListByUserId",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/log/getTemplateListByUserId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTemplateListByUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateListByUserId(_ request: GetTemplateListByUserIdRequest) async throws -> GetTemplateListByUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetTemplateListByUserIdHeaders = GetTemplateListByUserIdHeaders([:])
        return try await getTemplateListByUserIdWithOptions(request as! GetTemplateListByUserIdRequest, headers as! GetTemplateListByUserIdHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserWithOptions(_ tmpReq: GetUserRequest, _ tmpHeader: GetUserHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetUserShrinkRequest = GetUserShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetUserShrinkHeaders = GetUserShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["language"] = request.language ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUser",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/im/getUser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUser(_ request: GetUserRequest) async throws -> GetUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUserHeaders = GetUserHeaders([:])
        return try await getUserWithOptions(request as! GetUserRequest, headers as! GetUserHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkspaceWithOptions(_ tmpReq: GetWorkspaceRequest, _ tmpHeader: GetWorkspaceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkspaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetWorkspaceShrinkRequest = GetWorkspaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetWorkspaceShrinkHeaders = GetWorkspaceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withPermissionRole)) {
            body["WithPermissionRole"] = request.withPermissionRole!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkspace",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/getWorkspace",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkspace(_ request: GetWorkspaceRequest) async throws -> GetWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetWorkspaceHeaders = GetWorkspaceHeaders([:])
        return try await getWorkspaceWithOptions(request as! GetWorkspaceRequest, headers as! GetWorkspaceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkspacesWithOptions(_ tmpReq: GetWorkspacesRequest, _ tmpHeader: GetWorkspacesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkspacesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetWorkspacesShrinkRequest = GetWorkspacesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetWorkspacesShrinkHeaders = GetWorkspacesShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.option)) {
            request.optionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.option, "Option", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.workspaceIds)) {
            request.workspaceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.workspaceIds, "WorkspaceIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.optionShrink)) {
            body["Option"] = request.optionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceIdsShrink)) {
            body["WorkspaceIds"] = request.workspaceIdsShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkspaces",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/getWorkspaces",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkspacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkspaces(_ request: GetWorkspacesRequest) async throws -> GetWorkspacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetWorkspacesHeaders = GetWorkspacesHeaders([:])
        return try await getWorkspacesWithOptions(request as! GetWorkspacesRequest, headers as! GetWorkspacesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantHonorWithOptions(_ tmpReq: GrantHonorRequest, _ tmpHeader: GrantHonorHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantHonorResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GrantHonorShrinkRequest = GrantHonorShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GrantHonorShrinkHeaders = GrantHonorShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.openConversationIds)) {
            request.openConversationIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.openConversationIds, "openConversationIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.receiverUserIds)) {
            request.receiverUserIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.receiverUserIds, "receiverUserIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expirationTime)) {
            body["expirationTime"] = request.expirationTime!;
        }
        if (!TeaUtils.Client.isUnset(request.grantReason)) {
            body["grantReason"] = request.grantReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.granterName)) {
            body["granterName"] = request.granterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.honorId)) {
            body["honorId"] = request.honorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.noticeAnnouncer)) {
            body["noticeAnnouncer"] = request.noticeAnnouncer!;
        }
        if (!TeaUtils.Client.isUnset(request.noticeSingle)) {
            body["noticeSingle"] = request.noticeSingle!;
        }
        if (!TeaUtils.Client.isUnset(request.openConversationIdsShrink)) {
            body["openConversationIds"] = request.openConversationIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["orgId"] = request.orgId!;
        }
        if (!TeaUtils.Client.isUnset(request.receiverUserIdsShrink)) {
            body["receiverUserIds"] = request.receiverUserIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.senderUserId)) {
            body["senderUserId"] = request.senderUserId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantHonor",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/aliding/v1/honor/grantHonor",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantHonorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantHonor(_ request: GrantHonorRequest) async throws -> GrantHonorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GrantHonorHeaders = GrantHonorHeaders([:])
        return try await grantHonorWithOptions(request as! GrantHonorRequest, headers as! GrantHonorHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertColumnsBeforeWithOptions(_ tmpReq: InsertColumnsBeforeRequest, _ tmpHeader: InsertColumnsBeforeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertColumnsBeforeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsertColumnsBeforeShrinkRequest = InsertColumnsBeforeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: InsertColumnsBeforeShrinkHeaders = InsertColumnsBeforeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.column)) {
            body["Column"] = request.column!;
        }
        if (!TeaUtils.Client.isUnset(request.columnCount)) {
            body["ColumnCount"] = request.columnCount!;
        }
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertColumnsBefore",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/insertColumnsBefore",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertColumnsBeforeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertColumnsBefore(_ request: InsertColumnsBeforeRequest) async throws -> InsertColumnsBeforeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsertColumnsBeforeHeaders = InsertColumnsBeforeHeaders([:])
        return try await insertColumnsBeforeWithOptions(request as! InsertColumnsBeforeRequest, headers as! InsertColumnsBeforeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertRowsBeforeWithOptions(_ tmpReq: InsertRowsBeforeRequest, _ tmpHeader: InsertRowsBeforeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertRowsBeforeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsertRowsBeforeShrinkRequest = InsertRowsBeforeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: InsertRowsBeforeShrinkHeaders = InsertRowsBeforeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.row)) {
            body["Row"] = request.row!;
        }
        if (!TeaUtils.Client.isUnset(request.rowCount)) {
            body["RowCount"] = request.rowCount!;
        }
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertRowsBefore",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/insertRowsBefore",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertRowsBeforeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertRowsBefore(_ request: InsertRowsBeforeRequest) async throws -> InsertRowsBeforeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsertRowsBeforeHeaders = InsertRowsBeforeHeaders([:])
        return try await insertRowsBeforeWithOptions(request as! InsertRowsBeforeRequest, headers as! InsertRowsBeforeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func inviteUsersWithOptions(_ tmpReq: InviteUsersRequest, _ tmpHeader: InviteUsersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InviteUsersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InviteUsersShrinkRequest = InviteUsersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: InviteUsersShrinkHeaders = InviteUsersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.inviteeList)) {
            request.inviteeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.inviteeList, "InviteeList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inviteeListShrink)) {
            body["InviteeList"] = request.inviteeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conferenceId)) {
            body["conferenceId"] = request.conferenceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InviteUsers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/inviteUsers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InviteUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func inviteUsers(_ request: InviteUsersRequest) async throws -> InviteUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InviteUsersHeaders = InviteUsersHeaders([:])
        return try await inviteUsersWithOptions(request as! InviteUsersRequest, headers as! InviteUsersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCalendarsWithOptions(_ tmpReq: ListCalendarsRequest, _ tmpHeader: ListCalendarsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCalendarsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListCalendarsShrinkRequest = ListCalendarsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ListCalendarsShrinkHeaders = ListCalendarsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.request)) {
            request.requestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.request, "Request", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.requestShrink)) {
            body["Request"] = request.requestShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCalendars",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/listCalendars",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCalendarsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCalendars(_ request: ListCalendarsRequest) async throws -> ListCalendarsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListCalendarsHeaders = ListCalendarsHeaders([:])
        return try await listCalendarsWithOptions(request as! ListCalendarsRequest, headers as! ListCalendarsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventsWithOptions(_ request: ListEventsRequest, _ tmpHeader: ListEventsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: ListEventsShrinkHeaders = ListEventsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxAttendees)) {
            body["MaxAttendees"] = request.maxAttendees!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seriesMasterId)) {
            body["SeriesMasterId"] = request.seriesMasterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showDeleted)) {
            body["ShowDeleted"] = request.showDeleted!;
        }
        if (!TeaUtils.Client.isUnset(request.syncToken)) {
            body["SyncToken"] = request.syncToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeMax)) {
            body["TimeMax"] = request.timeMax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeMin)) {
            body["TimeMin"] = request.timeMin ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEvents",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/listEvents",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEvents(_ request: ListEventsRequest) async throws -> ListEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListEventsHeaders = ListEventsHeaders([:])
        return try await listEventsWithOptions(request as! ListEventsRequest, headers as! ListEventsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventsViewWithOptions(_ request: ListEventsViewRequest, _ tmpHeader: ListEventsViewHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventsViewResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: ListEventsViewShrinkHeaders = ListEventsViewShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxAttendees)) {
            body["MaxAttendees"] = request.maxAttendees!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeMax)) {
            body["TimeMax"] = request.timeMax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeMin)) {
            body["TimeMin"] = request.timeMin ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEventsView",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/listEventsView",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventsViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventsView(_ request: ListEventsViewRequest) async throws -> ListEventsViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListEventsViewHeaders = ListEventsViewHeaders([:])
        return try await listEventsViewWithOptions(request as! ListEventsViewRequest, headers as! ListEventsViewHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodesWithOptions(_ tmpReq: ListNodesRequest, _ tmpHeader: ListNodesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListNodesShrinkRequest = ListNodesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ListNodesShrinkHeaders = ListNodesShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentNodeId)) {
            body["ParentNodeId"] = request.parentNodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withPermissionRole)) {
            body["WithPermissionRole"] = request.withPermissionRole!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodes",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/listNodes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodes(_ request: ListNodesRequest) async throws -> ListNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListNodesHeaders = ListNodesHeaders([:])
        return try await listNodesWithOptions(request as! ListNodesRequest, headers as! ListNodesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listReportWithOptions(_ tmpReq: ListReportRequest, _ tmpHeader: ListReportHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListReportResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListReportShrinkRequest = ListReportShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ListReportShrinkHeaders = ListReportShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cursor)) {
            body["Cursor"] = request.cursor!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.modifiedEndTime)) {
            body["ModifiedEndTime"] = request.modifiedEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.modifiedStartTime)) {
            body["ModifiedStartTime"] = request.modifiedStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListReport",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/log/listReport",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listReport(_ request: ListReportRequest) async throws -> ListReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListReportHeaders = ListReportHeaders([:])
        return try await listReportWithOptions(request as! ListReportRequest, headers as! ListReportHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspacesWithOptions(_ tmpReq: ListWorkspacesRequest, _ tmpHeader: ListWorkspacesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkspacesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListWorkspacesShrinkRequest = ListWorkspacesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ListWorkspacesShrinkHeaders = ListWorkspacesShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            body["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.teamId)) {
            body["TeamId"] = request.teamId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withPermissionRole)) {
            body["WithPermissionRole"] = request.withPermissionRole!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkspaces",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/listWorkspaces",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkspacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaces(_ request: ListWorkspacesRequest) async throws -> ListWorkspacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListWorkspacesHeaders = ListWorkspacesHeaders([:])
        return try await listWorkspacesWithOptions(request as! ListWorkspacesRequest, headers as! ListWorkspacesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func patchEventWithOptions(_ tmpReq: PatchEventRequest, _ tmpHeader: PatchEventHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PatchEventResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PatchEventShrinkRequest = PatchEventShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: PatchEventShrinkHeaders = PatchEventShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.attendees)) {
            request.attendeesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.attendees, "Attendees", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.end)) {
            request.endShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.end, "End", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.extra)) {
            request.extraShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extra, "Extra", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.location)) {
            request.locationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.location, "Location", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.recurrence)) {
            request.recurrenceShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.recurrence, "Recurrence", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.reminders)) {
            request.remindersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.reminders, "Reminders", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.start)) {
            request.startShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.start, "Start", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attendeesShrink)) {
            body["Attendees"] = request.attendeesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endShrink)) {
            body["End"] = request.endShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            body["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraShrink)) {
            body["Extra"] = request.extraShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAllDay)) {
            body["IsAllDay"] = request.isAllDay!;
        }
        if (!TeaUtils.Client.isUnset(request.locationShrink)) {
            body["Location"] = request.locationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recurrenceShrink)) {
            body["Recurrence"] = request.recurrenceShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remindersShrink)) {
            body["Reminders"] = request.remindersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startShrink)) {
            body["Start"] = request.startShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summary)) {
            body["Summary"] = request.summary ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PatchEvent",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/patchEvent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PatchEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func patchEvent(_ request: PatchEventRequest) async throws -> PatchEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PatchEventHeaders = PatchEventHeaders([:])
        return try await patchEventWithOptions(request as! PatchEventRequest, headers as! PatchEventHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCloudRecordTextWithOptions(_ tmpReq: QueryCloudRecordTextRequest, _ tmpHeader: QueryCloudRecordTextHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCloudRecordTextResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryCloudRecordTextShrinkRequest = QueryCloudRecordTextShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryCloudRecordTextShrinkHeaders = QueryCloudRecordTextShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.direction)) {
            body["Direction"] = request.direction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conferenceId)) {
            body["conferenceId"] = request.conferenceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCloudRecordText",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryCloudRecordText",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCloudRecordTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCloudRecordText(_ request: QueryCloudRecordTextRequest) async throws -> QueryCloudRecordTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryCloudRecordTextHeaders = QueryCloudRecordTextHeaders([:])
        return try await queryCloudRecordTextWithOptions(request as! QueryCloudRecordTextRequest, headers as! QueryCloudRecordTextHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCloudRecordVideoWithOptions(_ tmpReq: QueryCloudRecordVideoRequest, _ tmpHeader: QueryCloudRecordVideoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCloudRecordVideoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryCloudRecordVideoShrinkRequest = QueryCloudRecordVideoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryCloudRecordVideoShrinkHeaders = QueryCloudRecordVideoShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conferenceId)) {
            body["conferenceId"] = request.conferenceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCloudRecordVideo",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryCloudRecordVideo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCloudRecordVideoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCloudRecordVideo(_ request: QueryCloudRecordVideoRequest) async throws -> QueryCloudRecordVideoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryCloudRecordVideoHeaders = QueryCloudRecordVideoHeaders([:])
        return try await queryCloudRecordVideoWithOptions(request as! QueryCloudRecordVideoRequest, headers as! QueryCloudRecordVideoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCloudRecordVideoPlayInfoWithOptions(_ tmpReq: QueryCloudRecordVideoPlayInfoRequest, _ tmpHeader: QueryCloudRecordVideoPlayInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCloudRecordVideoPlayInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryCloudRecordVideoPlayInfoShrinkRequest = QueryCloudRecordVideoPlayInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryCloudRecordVideoPlayInfoShrinkHeaders = QueryCloudRecordVideoPlayInfoShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.conferenceId)) {
            body["ConferenceId"] = request.conferenceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mediaId)) {
            body["MediaId"] = request.mediaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCloudRecordVideoPlayInfo",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryCloudRecordVideoPlayInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCloudRecordVideoPlayInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCloudRecordVideoPlayInfo(_ request: QueryCloudRecordVideoPlayInfoRequest) async throws -> QueryCloudRecordVideoPlayInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryCloudRecordVideoPlayInfoHeaders = QueryCloudRecordVideoPlayInfoHeaders([:])
        return try await queryCloudRecordVideoPlayInfoWithOptions(request as! QueryCloudRecordVideoPlayInfoRequest, headers as! QueryCloudRecordVideoPlayInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryConferenceInfoWithOptions(_ request: QueryConferenceInfoRequest, _ tmpHeader: QueryConferenceInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryConferenceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: QueryConferenceInfoShrinkHeaders = QueryConferenceInfoShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.conferenceId)) {
            body["conferenceId"] = request.conferenceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryConferenceInfo",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryConferenceInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryConferenceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryConferenceInfo(_ request: QueryConferenceInfoRequest) async throws -> QueryConferenceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryConferenceInfoHeaders = QueryConferenceInfoHeaders([:])
        return try await queryConferenceInfoWithOptions(request as! QueryConferenceInfoRequest, headers as! QueryConferenceInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryConferenceMembersWithOptions(_ tmpReq: QueryConferenceMembersRequest, _ tmpHeader: QueryConferenceMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryConferenceMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryConferenceMembersShrinkRequest = QueryConferenceMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryConferenceMembersShrinkHeaders = QueryConferenceMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conferenceId)) {
            body["conferenceId"] = request.conferenceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryConferenceMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryConferenceMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryConferenceMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryConferenceMembers(_ request: QueryConferenceMembersRequest) async throws -> QueryConferenceMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryConferenceMembersHeaders = QueryConferenceMembersHeaders([:])
        return try await queryConferenceMembersWithOptions(request as! QueryConferenceMembersRequest, headers as! QueryConferenceMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDentryWithOptions(_ tmpReq: QueryDentryRequest, _ tmpHeader: QueryDentryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDentryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryDentryShrinkRequest = QueryDentryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryDentryShrinkHeaders = QueryDentryShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dentryId)) {
            body["DentryId"] = request.dentryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeSpace)) {
            body["IncludeSpace"] = request.includeSpace!;
        }
        if (!TeaUtils.Client.isUnset(request.spaceId)) {
            body["SpaceId"] = request.spaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDentry",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/queryDentry",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDentryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDentry(_ request: QueryDentryRequest) async throws -> QueryDentryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryDentryHeaders = QueryDentryHeaders([:])
        return try await queryDentryWithOptions(request as! QueryDentryRequest, headers as! QueryDentryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLiveInfoWithOptions(_ tmpReq: QueryLiveInfoRequest, _ tmpHeader: QueryLiveInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLiveInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryLiveInfoShrinkRequest = QueryLiveInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryLiveInfoShrinkHeaders = QueryLiveInfoShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.liveId)) {
            body["LiveId"] = request.liveId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLiveInfo",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryLiveInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLiveInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLiveInfo(_ request: QueryLiveInfoRequest) async throws -> QueryLiveInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryLiveInfoHeaders = QueryLiveInfoHeaders([:])
        return try await queryLiveInfoWithOptions(request as! QueryLiveInfoRequest, headers as! QueryLiveInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLiveWatchDetailWithOptions(_ tmpReq: QueryLiveWatchDetailRequest, _ tmpHeader: QueryLiveWatchDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLiveWatchDetailResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryLiveWatchDetailShrinkRequest = QueryLiveWatchDetailShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryLiveWatchDetailShrinkHeaders = QueryLiveWatchDetailShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.liveId)) {
            body["LiveId"] = request.liveId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLiveWatchDetail",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryLiveWatchDetail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLiveWatchDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLiveWatchDetail(_ request: QueryLiveWatchDetailRequest) async throws -> QueryLiveWatchDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryLiveWatchDetailHeaders = QueryLiveWatchDetailHeaders([:])
        return try await queryLiveWatchDetailWithOptions(request as! QueryLiveWatchDetailRequest, headers as! QueryLiveWatchDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLiveWatchUserListWithOptions(_ tmpReq: QueryLiveWatchUserListRequest, _ tmpHeader: QueryLiveWatchUserListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLiveWatchUserListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryLiveWatchUserListShrinkRequest = QueryLiveWatchUserListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryLiveWatchUserListShrinkHeaders = QueryLiveWatchUserListShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.liveId)) {
            body["LiveId"] = request.liveId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLiveWatchUserList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryLiveWatchUserList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLiveWatchUserListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLiveWatchUserList(_ request: QueryLiveWatchUserListRequest) async throws -> QueryLiveWatchUserListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryLiveWatchUserListHeaders = QueryLiveWatchUserListHeaders([:])
        return try await queryLiveWatchUserListWithOptions(request as! QueryLiveWatchUserListRequest, headers as! QueryLiveWatchUserListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMeetingRoomWithOptions(_ tmpReq: QueryMeetingRoomRequest, _ tmpHeader: QueryMeetingRoomHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMeetingRoomResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryMeetingRoomShrinkRequest = QueryMeetingRoomShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryMeetingRoomShrinkHeaders = QueryMeetingRoomShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roomId)) {
            body["RoomId"] = request.roomId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMeetingRoom",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryMeetingRoom",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMeetingRoomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMeetingRoom(_ request: QueryMeetingRoomRequest) async throws -> QueryMeetingRoomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryMeetingRoomHeaders = QueryMeetingRoomHeaders([:])
        return try await queryMeetingRoomWithOptions(request as! QueryMeetingRoomRequest, headers as! QueryMeetingRoomHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMeetingRoomGroupWithOptions(_ tmpReq: QueryMeetingRoomGroupRequest, _ tmpHeader: QueryMeetingRoomGroupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMeetingRoomGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryMeetingRoomGroupShrinkRequest = QueryMeetingRoomGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryMeetingRoomGroupShrinkHeaders = QueryMeetingRoomGroupShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMeetingRoomGroup",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryMeetingRoomGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMeetingRoomGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMeetingRoomGroup(_ request: QueryMeetingRoomGroupRequest) async throws -> QueryMeetingRoomGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryMeetingRoomGroupHeaders = QueryMeetingRoomGroupHeaders([:])
        return try await queryMeetingRoomGroupWithOptions(request as! QueryMeetingRoomGroupRequest, headers as! QueryMeetingRoomGroupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMeetingRoomGroupListWithOptions(_ tmpReq: QueryMeetingRoomGroupListRequest, _ tmpHeader: QueryMeetingRoomGroupListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMeetingRoomGroupListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryMeetingRoomGroupListShrinkRequest = QueryMeetingRoomGroupListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryMeetingRoomGroupListShrinkHeaders = QueryMeetingRoomGroupListShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.request)) {
            request.requestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.request, "Request", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.requestShrink)) {
            body["Request"] = request.requestShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMeetingRoomGroupList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryMeetingRoomGroupList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMeetingRoomGroupListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMeetingRoomGroupList(_ request: QueryMeetingRoomGroupListRequest) async throws -> QueryMeetingRoomGroupListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryMeetingRoomGroupListHeaders = QueryMeetingRoomGroupListHeaders([:])
        return try await queryMeetingRoomGroupListWithOptions(request as! QueryMeetingRoomGroupListRequest, headers as! QueryMeetingRoomGroupListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMeetingRoomListWithOptions(_ tmpReq: QueryMeetingRoomListRequest, _ tmpHeader: QueryMeetingRoomListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMeetingRoomListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryMeetingRoomListShrinkRequest = QueryMeetingRoomListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryMeetingRoomListShrinkHeaders = QueryMeetingRoomListShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMeetingRoomList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryMeetingRoomList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMeetingRoomListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMeetingRoomList(_ request: QueryMeetingRoomListRequest) async throws -> QueryMeetingRoomListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryMeetingRoomListHeaders = QueryMeetingRoomListHeaders([:])
        return try await queryMeetingRoomListWithOptions(request as! QueryMeetingRoomListRequest, headers as! QueryMeetingRoomListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrgHonorsWithOptions(_ tmpReq: QueryOrgHonorsRequest, _ tmpHeader: QueryOrgHonorsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrgHonorsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryOrgHonorsShrinkRequest = QueryOrgHonorsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryOrgHonorsShrinkHeaders = QueryOrgHonorsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["orgId"] = request.orgId!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrgHonors",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/aliding/v1/honor/queryOrgHonors",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrgHonorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrgHonors(_ request: QueryOrgHonorsRequest) async throws -> QueryOrgHonorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryOrgHonorsHeaders = QueryOrgHonorsHeaders([:])
        return try await queryOrgHonorsWithOptions(request as! QueryOrgHonorsRequest, headers as! QueryOrgHonorsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrgTodoTasksWithOptions(_ tmpReq: QueryOrgTodoTasksRequest, _ tmpHeader: QueryOrgTodoTasksHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrgTodoTasksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryOrgTodoTasksShrinkRequest = QueryOrgTodoTasksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryOrgTodoTasksShrinkHeaders = QueryOrgTodoTasksShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isDone)) {
            body["isDone"] = request.isDone!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrgTodoTasks",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/queryOrgTodoTasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrgTodoTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrgTodoTasks(_ request: QueryOrgTodoTasksRequest) async throws -> QueryOrgTodoTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryOrgTodoTasksHeaders = QueryOrgTodoTasksHeaders([:])
        return try await queryOrgTodoTasksWithOptions(request as! QueryOrgTodoTasksRequest, headers as! QueryOrgTodoTasksHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryScheduleConferenceWithOptions(_ tmpReq: QueryScheduleConferenceRequest, _ tmpHeader: QueryScheduleConferenceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryScheduleConferenceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryScheduleConferenceShrinkRequest = QueryScheduleConferenceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryScheduleConferenceShrinkHeaders = QueryScheduleConferenceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.requestUnionId)) {
            body["RequestUnionId"] = request.requestUnionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryScheduleConference",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryScheduleConference",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryScheduleConferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryScheduleConference(_ request: QueryScheduleConferenceRequest) async throws -> QueryScheduleConferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryScheduleConferenceHeaders = QueryScheduleConferenceHeaders([:])
        return try await queryScheduleConferenceWithOptions(request as! QueryScheduleConferenceRequest, headers as! QueryScheduleConferenceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserHonorsWithOptions(_ tmpReq: QueryUserHonorsRequest, _ tmpHeader: QueryUserHonorsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserHonorsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryUserHonorsShrinkRequest = QueryUserHonorsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryUserHonorsShrinkHeaders = QueryUserHonorsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["orgId"] = request.orgId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserHonors",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/aliding/v1/honor/queryUserHonors",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserHonorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserHonors(_ request: QueryUserHonorsRequest) async throws -> QueryUserHonorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryUserHonorsHeaders = QueryUserHonorsHeaders([:])
        return try await queryUserHonorsWithOptions(request as! QueryUserHonorsRequest, headers as! QueryUserHonorsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recallHonorWithOptions(_ tmpReq: RecallHonorRequest, _ tmpHeader: RecallHonorHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecallHonorResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RecallHonorShrinkRequest = RecallHonorShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: RecallHonorShrinkHeaders = RecallHonorShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.honorId)) {
            body["honorId"] = request.honorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["orgId"] = request.orgId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecallHonor",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/aliding/v1/honor/recallHonor",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecallHonorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recallHonor(_ request: RecallHonorRequest) async throws -> RecallHonorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RecallHonorHeaders = RecallHonorHeaders([:])
        return try await recallHonorWithOptions(request as! RecallHonorRequest, headers as! RecallHonorHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func receiverListReportWithOptions(_ tmpReq: ReceiverListReportRequest, _ tmpHeader: ReceiverListReportHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReceiverListReportResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ReceiverListReportShrinkRequest = ReceiverListReportShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ReceiverListReportShrinkHeaders = ReceiverListReportShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.offset)) {
            body["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.reportId)) {
            body["ReportId"] = request.reportId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReceiverListReport",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/log/receiverListReport",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReceiverListReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func receiverListReport(_ request: ReceiverListReportRequest) async throws -> ReceiverListReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ReceiverListReportHeaders = ReceiverListReportHeaders([:])
        return try await receiverListReportWithOptions(request as! ReceiverListReportRequest, headers as! ReceiverListReportHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeAttendeeWithOptions(_ tmpReq: RemoveAttendeeRequest, _ tmpHeader: RemoveAttendeeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveAttendeeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveAttendeeShrinkRequest = RemoveAttendeeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: RemoveAttendeeShrinkHeaders = RemoveAttendeeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.attendeesToRemove)) {
            request.attendeesToRemoveShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.attendeesToRemove, "AttendeesToRemove", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attendeesToRemoveShrink)) {
            body["AttendeesToRemove"] = request.attendeesToRemoveShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            body["EventId"] = request.eventId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveAttendee",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/removeAttendee",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveAttendeeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeAttendee(_ request: RemoveAttendeeRequest) async throws -> RemoveAttendeeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RemoveAttendeeHeaders = RemoveAttendeeHeaders([:])
        return try await removeAttendeeWithOptions(request as! RemoveAttendeeRequest, headers as! RemoveAttendeeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeMeetingRoomsWithOptions(_ tmpReq: RemoveMeetingRoomsRequest, _ tmpHeader: RemoveMeetingRoomsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveMeetingRoomsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveMeetingRoomsShrinkRequest = RemoveMeetingRoomsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: RemoveMeetingRoomsShrinkHeaders = RemoveMeetingRoomsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.meetingRoomsToRemove)) {
            request.meetingRoomsToRemoveShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.meetingRoomsToRemove, "MeetingRoomsToRemove", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            body["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.meetingRoomsToRemoveShrink)) {
            body["MeetingRoomsToRemove"] = request.meetingRoomsToRemoveShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveMeetingRooms",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/removeMeetingRooms",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveMeetingRoomsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeMeetingRooms(_ request: RemoveMeetingRoomsRequest) async throws -> RemoveMeetingRoomsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RemoveMeetingRoomsHeaders = RemoveMeetingRoomsHeaders([:])
        return try await removeMeetingRoomsWithOptions(request as! RemoveMeetingRoomsRequest, headers as! RemoveMeetingRoomsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveContentWithOptions(_ tmpReq: SaveContentRequest, _ tmpHeader: SaveContentHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveContentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SaveContentShrinkRequest = SaveContentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: SaveContentShrinkHeaders = SaveContentShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.contents)) {
            request.contentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contents, "Contents", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentsShrink)) {
            body["Contents"] = request.contentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ddFrom)) {
            body["DdFrom"] = request.ddFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveContent",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/log/saveContent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveContent(_ request: SaveContentRequest) async throws -> SaveContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SaveContentHeaders = SaveContentHeaders([:])
        return try await saveContentWithOptions(request as! SaveContentRequest, headers as! SaveContentHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setColumnsVisibilityWithOptions(_ tmpReq: SetColumnsVisibilityRequest, _ tmpHeader: SetColumnsVisibilityHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetColumnsVisibilityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetColumnsVisibilityShrinkRequest = SetColumnsVisibilityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: SetColumnsVisibilityShrinkHeaders = SetColumnsVisibilityShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.column)) {
            body["Column"] = request.column!;
        }
        if (!TeaUtils.Client.isUnset(request.columnCount)) {
            body["ColumnCount"] = request.columnCount!;
        }
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibility)) {
            body["Visibility"] = request.visibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetColumnsVisibility",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/setColumnsVisibility",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetColumnsVisibilityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setColumnsVisibility(_ request: SetColumnsVisibilityRequest) async throws -> SetColumnsVisibilityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SetColumnsVisibilityHeaders = SetColumnsVisibilityHeaders([:])
        return try await setColumnsVisibilityWithOptions(request as! SetColumnsVisibilityRequest, headers as! SetColumnsVisibilityHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setRowsVisibilityWithOptions(_ tmpReq: SetRowsVisibilityRequest, _ tmpHeader: SetRowsVisibilityHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetRowsVisibilityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetRowsVisibilityShrinkRequest = SetRowsVisibilityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: SetRowsVisibilityShrinkHeaders = SetRowsVisibilityShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.row)) {
            body["Row"] = request.row!;
        }
        if (!TeaUtils.Client.isUnset(request.rowCount)) {
            body["RowCount"] = request.rowCount!;
        }
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibility)) {
            body["Visibility"] = request.visibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetRowsVisibility",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/setRowsVisibility",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetRowsVisibilityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setRowsVisibility(_ request: SetRowsVisibilityRequest) async throws -> SetRowsVisibilityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SetRowsVisibilityHeaders = SetRowsVisibilityHeaders([:])
        return try await setRowsVisibilityWithOptions(request as! SetRowsVisibilityRequest, headers as! SetRowsVisibilityHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func simpleListReportWithOptions(_ tmpReq: SimpleListReportRequest, _ tmpHeader: SimpleListReportHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SimpleListReportResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SimpleListReportShrinkRequest = SimpleListReportShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: SimpleListReportShrinkHeaders = SimpleListReportShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cursor)) {
            body["Cursor"] = request.cursor!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SimpleListReport",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/log/simpleListReport",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SimpleListReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func simpleListReport(_ request: SimpleListReportRequest) async throws -> SimpleListReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SimpleListReportHeaders = SimpleListReportHeaders([:])
        return try await simpleListReportWithOptions(request as! SimpleListReportRequest, headers as! SimpleListReportHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startCloudRecordWithOptions(_ tmpReq: StartCloudRecordRequest, _ tmpHeader: StartCloudRecordHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartCloudRecordResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: StartCloudRecordShrinkRequest = StartCloudRecordShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: StartCloudRecordShrinkHeaders = StartCloudRecordShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.smallWindowPosition)) {
            body["SmallWindowPosition"] = request.smallWindowPosition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conferenceId)) {
            body["conferenceId"] = request.conferenceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartCloudRecord",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/startCloudRecord",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartCloudRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startCloudRecord(_ request: StartCloudRecordRequest) async throws -> StartCloudRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StartCloudRecordHeaders = StartCloudRecordHeaders([:])
        return try await startCloudRecordWithOptions(request as! StartCloudRecordRequest, headers as! StartCloudRecordHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func statisticsListByTypeReportWithOptions(_ tmpReq: StatisticsListByTypeReportRequest, _ tmpHeader: StatisticsListByTypeReportHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StatisticsListByTypeReportResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: StatisticsListByTypeReportShrinkRequest = StatisticsListByTypeReportShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: StatisticsListByTypeReportShrinkHeaders = StatisticsListByTypeReportShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.offset)) {
            body["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.reportId)) {
            body["ReportId"] = request.reportId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StatisticsListByTypeReport",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/log/statisticsListByTypeReport",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StatisticsListByTypeReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func statisticsListByTypeReport(_ request: StatisticsListByTypeReportRequest) async throws -> StatisticsListByTypeReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StatisticsListByTypeReportHeaders = StatisticsListByTypeReportHeaders([:])
        return try await statisticsListByTypeReportWithOptions(request as! StatisticsListByTypeReportRequest, headers as! StatisticsListByTypeReportHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func statisticsReportWithOptions(_ tmpReq: StatisticsReportRequest, _ tmpHeader: StatisticsReportHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StatisticsReportResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: StatisticsReportShrinkRequest = StatisticsReportShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: StatisticsReportShrinkHeaders = StatisticsReportShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportId)) {
            body["ReportId"] = request.reportId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StatisticsReport",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/log/statisticsReport",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StatisticsReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func statisticsReport(_ request: StatisticsReportRequest) async throws -> StatisticsReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StatisticsReportHeaders = StatisticsReportHeaders([:])
        return try await statisticsReportWithOptions(request as! StatisticsReportRequest, headers as! StatisticsReportHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopCloudRecordWithOptions(_ tmpReq: StopCloudRecordRequest, _ tmpHeader: StopCloudRecordHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopCloudRecordResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: StopCloudRecordShrinkRequest = StopCloudRecordShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: StopCloudRecordShrinkHeaders = StopCloudRecordShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conferenceId)) {
            body["conferenceId"] = request.conferenceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopCloudRecord",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/stopCloudRecord",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopCloudRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopCloudRecord(_ request: StopCloudRecordRequest) async throws -> StopCloudRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StopCloudRecordHeaders = StopCloudRecordHeaders([:])
        return try await stopCloudRecordWithOptions(request as! StopCloudRecordRequest, headers as! StopCloudRecordHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func subscribeCalendarWithOptions(_ request: SubscribeCalendarRequest, _ tmpHeader: SubscribeCalendarHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubscribeCalendarResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: SubscribeCalendarShrinkHeaders = SubscribeCalendarShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubscribeCalendar",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/subscribeCalendar",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubscribeCalendarResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func subscribeCalendar(_ request: SubscribeCalendarRequest) async throws -> SubscribeCalendarResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SubscribeCalendarHeaders = SubscribeCalendarHeaders([:])
        return try await subscribeCalendarWithOptions(request as! SubscribeCalendarRequest, headers as! SubscribeCalendarHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unsubscribeCalendarWithOptions(_ request: UnsubscribeCalendarRequest, _ tmpHeader: UnsubscribeCalendarHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnsubscribeCalendarResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: UnsubscribeCalendarShrinkHeaders = UnsubscribeCalendarShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnsubscribeCalendar",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/unsubscribeCalendar",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnsubscribeCalendarResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unsubscribeCalendar(_ request: UnsubscribeCalendarRequest) async throws -> UnsubscribeCalendarResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UnsubscribeCalendarHeaders = UnsubscribeCalendarHeaders([:])
        return try await unsubscribeCalendarWithOptions(request as! UnsubscribeCalendarRequest, headers as! UnsubscribeCalendarHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLiveWithOptions(_ tmpReq: UpdateLiveRequest, _ tmpHeader: UpdateLiveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLiveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateLiveShrinkRequest = UpdateLiveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateLiveShrinkHeaders = UpdateLiveShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coverUrl)) {
            body["CoverUrl"] = request.coverUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.introduction)) {
            body["Introduction"] = request.introduction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.liveId)) {
            body["LiveId"] = request.liveId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preEndTime)) {
            body["PreEndTime"] = request.preEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.preStartTime)) {
            body["PreStartTime"] = request.preStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLive",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/updateLive",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLiveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLive(_ request: UpdateLiveRequest) async throws -> UpdateLiveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateLiveHeaders = UpdateLiveHeaders([:])
        return try await updateLiveWithOptions(request as! UpdateLiveRequest, headers as! UpdateLiveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMeetingRoomWithOptions(_ tmpReq: UpdateMeetingRoomRequest, _ tmpHeader: UpdateMeetingRoomHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMeetingRoomResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateMeetingRoomShrinkRequest = UpdateMeetingRoomShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateMeetingRoomShrinkHeaders = UpdateMeetingRoomShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.roomLabelIds)) {
            request.roomLabelIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.roomLabelIds, "RoomLabelIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.roomLocation)) {
            request.roomLocationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.roomLocation, "RoomLocation", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.isvRoomId)) {
            body["IsvRoomId"] = request.isvRoomId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCapacity)) {
            body["RoomCapacity"] = request.roomCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.roomId)) {
            body["RoomId"] = request.roomId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomLabelIdsShrink)) {
            body["RoomLabelIds"] = request.roomLabelIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomLocationShrink)) {
            body["RoomLocation"] = request.roomLocationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomName)) {
            body["RoomName"] = request.roomName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomPicture)) {
            body["RoomPicture"] = request.roomPicture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomStatus)) {
            body["RoomStatus"] = request.roomStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMeetingRoom",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/updateMeetingRoom",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMeetingRoomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMeetingRoom(_ request: UpdateMeetingRoomRequest) async throws -> UpdateMeetingRoomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateMeetingRoomHeaders = UpdateMeetingRoomHeaders([:])
        return try await updateMeetingRoomWithOptions(request as! UpdateMeetingRoomRequest, headers as! UpdateMeetingRoomHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMeetingRoomGroupWithOptions(_ tmpReq: UpdateMeetingRoomGroupRequest, _ tmpHeader: UpdateMeetingRoomGroupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMeetingRoomGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateMeetingRoomGroupShrinkRequest = UpdateMeetingRoomGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateMeetingRoomGroupShrinkHeaders = UpdateMeetingRoomGroupShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMeetingRoomGroup",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/updateMeetingRoomGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMeetingRoomGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMeetingRoomGroup(_ request: UpdateMeetingRoomGroupRequest) async throws -> UpdateMeetingRoomGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateMeetingRoomGroupHeaders = UpdateMeetingRoomGroupHeaders([:])
        return try await updateMeetingRoomGroupWithOptions(request as! UpdateMeetingRoomGroupRequest, headers as! UpdateMeetingRoomGroupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRangeWithOptions(_ tmpReq: UpdateRangeRequest, _ tmpHeader: UpdateRangeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRangeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateRangeShrinkRequest = UpdateRangeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateRangeShrinkHeaders = UpdateRangeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.backgroundColors)) {
            request.backgroundColorsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.backgroundColors, "BackgroundColors", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.hyperlinks)) {
            request.hyperlinksShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.hyperlinks, "Hyperlinks", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.values)) {
            request.valuesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.values, "Values", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backgroundColorsShrink)) {
            body["BackgroundColors"] = request.backgroundColorsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hyperlinksShrink)) {
            body["Hyperlinks"] = request.hyperlinksShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.numberFormat)) {
            body["NumberFormat"] = request.numberFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rangeAddress)) {
            body["RangeAddress"] = request.rangeAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.valuesShrink)) {
            body["Values"] = request.valuesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRange",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/updateRange",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRangeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRange(_ request: UpdateRangeRequest) async throws -> UpdateRangeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateRangeHeaders = UpdateRangeHeaders([:])
        return try await updateRangeWithOptions(request as! UpdateRangeRequest, headers as! UpdateRangeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScheduleConferenceWithOptions(_ tmpReq: UpdateScheduleConferenceRequest, _ tmpHeader: UpdateScheduleConferenceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateScheduleConferenceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateScheduleConferenceShrinkRequest = UpdateScheduleConferenceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateScheduleConferenceShrinkHeaders = UpdateScheduleConferenceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleConferenceId)) {
            body["ScheduleConferenceId"] = request.scheduleConferenceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateScheduleConference",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/updateScheduleConference",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateScheduleConferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScheduleConference(_ request: UpdateScheduleConferenceRequest) async throws -> UpdateScheduleConferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateScheduleConferenceHeaders = UpdateScheduleConferenceHeaders([:])
        return try await updateScheduleConferenceWithOptions(request as! UpdateScheduleConferenceRequest, headers as! UpdateScheduleConferenceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSubscribedCalendarsWithOptions(_ tmpReq: UpdateSubscribedCalendarsRequest, _ tmpHeader: UpdateSubscribedCalendarsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSubscribedCalendarsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateSubscribedCalendarsShrinkRequest = UpdateSubscribedCalendarsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateSubscribedCalendarsShrinkHeaders = UpdateSubscribedCalendarsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.managers)) {
            request.managersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.managers, "Managers", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.subscribeScope)) {
            request.subscribeScopeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.subscribeScope, "SubscribeScope", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.managersShrink)) {
            body["Managers"] = request.managersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscribeScopeShrink)) {
            body["SubscribeScope"] = request.subscribeScopeShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSubscribedCalendars",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/updateSubscribedCalendars",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSubscribedCalendarsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSubscribedCalendars(_ request: UpdateSubscribedCalendarsRequest) async throws -> UpdateSubscribedCalendarsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateSubscribedCalendarsHeaders = UpdateSubscribedCalendarsHeaders([:])
        return try await updateSubscribedCalendarsWithOptions(request as! UpdateSubscribedCalendarsRequest, headers as! UpdateSubscribedCalendarsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTodoTaskWithOptions(_ tmpReq: UpdateTodoTaskRequest, _ tmpHeader: UpdateTodoTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTodoTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTodoTaskShrinkRequest = UpdateTodoTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateTodoTaskShrinkHeaders = UpdateTodoTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.executorIds)) {
            request.executorIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.executorIds, "executorIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.participantIds)) {
            request.participantIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.participantIds, "participantIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.done)) {
            body["done"] = request.done!;
        }
        if (!TeaUtils.Client.isUnset(request.dueTime)) {
            body["dueTime"] = request.dueTime!;
        }
        if (!TeaUtils.Client.isUnset(request.executorIdsShrink)) {
            body["executorIds"] = request.executorIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.participantIdsShrink)) {
            body["participantIds"] = request.participantIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            body["subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTodoTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/updateTodoTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTodoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTodoTask(_ request: UpdateTodoTaskRequest) async throws -> UpdateTodoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateTodoTaskHeaders = UpdateTodoTaskHeaders([:])
        return try await updateTodoTaskWithOptions(request as! UpdateTodoTaskRequest, headers as! UpdateTodoTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTodoTaskExecutorStatusWithOptions(_ tmpReq: UpdateTodoTaskExecutorStatusRequest, _ tmpHeader: UpdateTodoTaskExecutorStatusHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTodoTaskExecutorStatusResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTodoTaskExecutorStatusShrinkRequest = UpdateTodoTaskExecutorStatusShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateTodoTaskExecutorStatusShrinkHeaders = UpdateTodoTaskExecutorStatusShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.executorStatusList)) {
            request.executorStatusListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.executorStatusList, "executorStatusList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executorStatusListShrink)) {
            body["executorStatusList"] = request.executorStatusListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorId)) {
            body["operatorId"] = request.operatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTodoTaskExecutorStatus",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/updateTodoTaskExecutorStatus",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTodoTaskExecutorStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTodoTaskExecutorStatus(_ request: UpdateTodoTaskExecutorStatusRequest) async throws -> UpdateTodoTaskExecutorStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateTodoTaskExecutorStatusHeaders = UpdateTodoTaskExecutorStatusHeaders([:])
        return try await updateTodoTaskExecutorStatusWithOptions(request as! UpdateTodoTaskExecutorStatusRequest, headers as! UpdateTodoTaskExecutorStatusHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceDocMembersWithOptions(_ tmpReq: UpdateWorkspaceDocMembersRequest, _ tmpHeader: UpdateWorkspaceDocMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkspaceDocMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateWorkspaceDocMembersShrinkRequest = UpdateWorkspaceDocMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateWorkspaceDocMembersShrinkHeaders = UpdateWorkspaceDocMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkspaceDocMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/updateWorkspaceDocMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkspaceDocMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceDocMembers(_ request: UpdateWorkspaceDocMembersRequest) async throws -> UpdateWorkspaceDocMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateWorkspaceDocMembersHeaders = UpdateWorkspaceDocMembersHeaders([:])
        return try await updateWorkspaceDocMembersWithOptions(request as! UpdateWorkspaceDocMembersRequest, headers as! UpdateWorkspaceDocMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceMembersWithOptions(_ tmpReq: UpdateWorkspaceMembersRequest, _ tmpHeader: UpdateWorkspaceMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkspaceMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateWorkspaceMembersShrinkRequest = UpdateWorkspaceMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateWorkspaceMembersShrinkHeaders = UpdateWorkspaceMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkspaceMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/updateWorkspaceMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkspaceMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceMembers(_ request: UpdateWorkspaceMembersRequest) async throws -> UpdateWorkspaceMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateWorkspaceMembersHeaders = UpdateWorkspaceMembersHeaders([:])
        return try await updateWorkspaceMembersWithOptions(request as! UpdateWorkspaceMembersRequest, headers as! UpdateWorkspaceMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMediaWithOptions(_ tmpReq: UploadMediaRequest, _ tmpHeader: UploadMediaHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadMediaResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UploadMediaShrinkRequest = UploadMediaShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UploadMediaShrinkHeaders = UploadMediaShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mediaName)) {
            body["mediaName"] = request.mediaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mediaType)) {
            body["mediaType"] = request.mediaType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["orgId"] = request.orgId!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["url"] = request.url ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadMedia",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/aliding/v1/documents/uploadMedia",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadMediaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMedia(_ request: UploadMediaRequest) async throws -> UploadMediaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UploadMediaHeaders = UploadMediaHeaders([:])
        return try await uploadMediaWithOptions(request as! UploadMediaRequest, headers as! UploadMediaHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func wearOrgHonorWithOptions(_ tmpReq: WearOrgHonorRequest, _ tmpHeader: WearOrgHonorHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> WearOrgHonorResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: WearOrgHonorShrinkRequest = WearOrgHonorShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: WearOrgHonorShrinkHeaders = WearOrgHonorShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.honorId)) {
            body["honorId"] = request.honorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["orgId"] = request.orgId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wear)) {
            body["wear"] = request.wear!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "WearOrgHonor",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/aliding/v1/honor/wearOrgHonor",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(WearOrgHonorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func wearOrgHonor(_ request: WearOrgHonorRequest) async throws -> WearOrgHonorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: WearOrgHonorHeaders = WearOrgHonorHeaders([:])
        return try await wearOrgHonorWithOptions(request as! WearOrgHonorRequest, headers as! WearOrgHonorHeaders, runtime as! TeaUtils.RuntimeOptions)
    }
}
