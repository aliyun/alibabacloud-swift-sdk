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
    public func addDriveSpaceWithOptions(_ tmpReq: AddDriveSpaceRequest, _ tmpHeader: AddDriveSpaceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDriveSpaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddDriveSpaceShrinkRequest = AddDriveSpaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddDriveSpaceShrinkHeaders = AddDriveSpaceShrinkHeaders([:])
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
            "action": "AddDriveSpace",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/addDriveSpace",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDriveSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDriveSpace(_ request: AddDriveSpaceRequest) async throws -> AddDriveSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddDriveSpaceHeaders = AddDriveSpaceHeaders([:])
        return try await addDriveSpaceWithOptions(request as! AddDriveSpaceRequest, headers as! AddDriveSpaceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFolderWithOptions(_ tmpReq: AddFolderRequest, _ tmpHeader: AddFolderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddFolderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddFolderShrinkRequest = AddFolderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddFolderShrinkHeaders = AddFolderShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["ParentId"] = request.parentId ?? "";
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
            "action": "AddFolder",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/addFolder",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddFolderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFolder(_ request: AddFolderRequest) async throws -> AddFolderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddFolderHeaders = AddFolderHeaders([:])
        return try await addFolderWithOptions(request as! AddFolderRequest, headers as! AddFolderHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func addMultiDimTableWithOptions(_ tmpReq: AddMultiDimTableRequest, _ tmpHeader: AddMultiDimTableHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddMultiDimTableResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddMultiDimTableShrinkRequest = AddMultiDimTableShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddMultiDimTableShrinkHeaders = AddMultiDimTableShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.fields)) {
            request.fieldsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.fields, "Fields", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fieldsShrink)) {
            body["Fields"] = request.fieldsShrink ?? "";
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
            "action": "AddMultiDimTable",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/addMultiDimTable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddMultiDimTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMultiDimTable(_ request: AddMultiDimTableRequest) async throws -> AddMultiDimTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddMultiDimTableHeaders = AddMultiDimTableHeaders([:])
        return try await addMultiDimTableWithOptions(request as! AddMultiDimTableRequest, headers as! AddMultiDimTableHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addPermissionWithOptions(_ tmpReq: AddPermissionRequest, _ tmpHeader: AddPermissionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddPermissionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddPermissionShrinkRequest = AddPermissionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddPermissionShrinkHeaders = AddPermissionShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.option)) {
            request.optionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.option, "Option", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dentryUuid)) {
            body["DentryUuid"] = request.dentryUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionShrink)) {
            body["Option"] = request.optionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            body["RoleId"] = request.roleId ?? "";
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
            "action": "AddPermission",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/addPermission",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addPermission(_ request: AddPermissionRequest) async throws -> AddPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddPermissionHeaders = AddPermissionHeaders([:])
        return try await addPermissionWithOptions(request as! AddPermissionRequest, headers as! AddPermissionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRecordPermissionWithOptions(_ tmpReq: AddRecordPermissionRequest, _ tmpHeader: AddRecordPermissionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddRecordPermissionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddRecordPermissionShrinkRequest = AddRecordPermissionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddRecordPermissionShrinkHeaders = AddRecordPermissionShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conferenceId)) {
            body["ConferenceId"] = request.conferenceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
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
            "action": "AddRecordPermission",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/addRecordPermission",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddRecordPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRecordPermission(_ request: AddRecordPermissionRequest) async throws -> AddRecordPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddRecordPermissionHeaders = AddRecordPermissionHeaders([:])
        return try await addRecordPermissionWithOptions(request as! AddRecordPermissionRequest, headers as! AddRecordPermissionHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func addTicketMemoWithOptions(_ tmpReq: AddTicketMemoRequest, _ tmpHeader: AddTicketMemoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddTicketMemoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddTicketMemoShrinkRequest = AddTicketMemoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddTicketMemoShrinkHeaders = AddTicketMemoShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ticketMemo)) {
            request.ticketMemoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ticketMemo, "TicketMemo", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openTeamId)) {
            body["OpenTeamId"] = request.openTeamId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openTicketId)) {
            body["OpenTicketId"] = request.openTicketId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ticketMemoShrink)) {
            body["TicketMemo"] = request.ticketMemoShrink ?? "";
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
            "action": "AddTicketMemo",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ticket/addTicketMemo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddTicketMemoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTicketMemo(_ request: AddTicketMemoRequest) async throws -> AddTicketMemoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddTicketMemoHeaders = AddTicketMemoHeaders([:])
        return try await addTicketMemoWithOptions(request as! AddTicketMemoRequest, headers as! AddTicketMemoHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func assignTicketWithOptions(_ tmpReq: AssignTicketRequest, _ tmpHeader: AssignTicketHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssignTicketResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AssignTicketShrinkRequest = AssignTicketShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AssignTicketShrinkHeaders = AssignTicketShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notify)) {
            request.notifyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notify, "Notify", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.processorUserIds)) {
            request.processorUserIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.processorUserIds, "ProcessorUserIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ticketMemo)) {
            request.ticketMemoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ticketMemo, "TicketMemo", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.notifyShrink)) {
            body["Notify"] = request.notifyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openTeamId)) {
            body["OpenTeamId"] = request.openTeamId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openTicketId)) {
            body["OpenTicketId"] = request.openTicketId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processorUserIdsShrink)) {
            body["ProcessorUserIds"] = request.processorUserIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ticketMemoShrink)) {
            body["TicketMemo"] = request.ticketMemoShrink ?? "";
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
            "action": "AssignTicket",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ticket/assignTicket",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssignTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignTicket(_ request: AssignTicketRequest) async throws -> AssignTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AssignTicketHeaders = AssignTicketHeaders([:])
        return try await assignTicketWithOptions(request as! AssignTicketRequest, headers as! AssignTicketHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeSkillWithOptions(_ tmpReq: AuthorizeSkillRequest, _ tmpHeader: AuthorizeSkillHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeSkillResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AuthorizeSkillShrinkRequest = AuthorizeSkillShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AuthorizeSkillShrinkHeaders = AuthorizeSkillShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.permissionCodes)) {
            request.permissionCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.permissionCodes, "PermissionCodes", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.permissionCodesShrink)) {
            body["PermissionCodes"] = request.permissionCodesShrink ?? "";
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
            "action": "AuthorizeSkill",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/ai/v1/skill/authorizeSkill",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeSkill(_ request: AuthorizeSkillRequest) async throws -> AuthorizeSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AuthorizeSkillHeaders = AuthorizeSkillHeaders([:])
        return try await authorizeSkillWithOptions(request as! AuthorizeSkillRequest, headers as! AuthorizeSkillHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetFormDataByIdListWithOptions(_ tmpReq: BatchGetFormDataByIdListRequest, _ tmpHeader: BatchGetFormDataByIdListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGetFormDataByIdListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchGetFormDataByIdListShrinkRequest = BatchGetFormDataByIdListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: BatchGetFormDataByIdListShrinkHeaders = BatchGetFormDataByIdListShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.formInstanceIdList)) {
            request.formInstanceIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.formInstanceIdList, "FormInstanceIdList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formInstanceIdListShrink)) {
            body["FormInstanceIdList"] = request.formInstanceIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needFormInstanceValue)) {
            body["NeedFormInstanceValue"] = request.needFormInstanceValue!;
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "BatchGetFormDataByIdList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/batchGetFormDataByIdList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGetFormDataByIdListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetFormDataByIdList(_ request: BatchGetFormDataByIdListRequest) async throws -> BatchGetFormDataByIdListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: BatchGetFormDataByIdListHeaders = BatchGetFormDataByIdListHeaders([:])
        return try await batchGetFormDataByIdListWithOptions(request as! BatchGetFormDataByIdListRequest, headers as! BatchGetFormDataByIdListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchRemovalByFormInstanceIdListWithOptions(_ tmpReq: BatchRemovalByFormInstanceIdListRequest, _ tmpHeader: BatchRemovalByFormInstanceIdListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchRemovalByFormInstanceIdListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchRemovalByFormInstanceIdListShrinkRequest = BatchRemovalByFormInstanceIdListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: BatchRemovalByFormInstanceIdListShrinkHeaders = BatchRemovalByFormInstanceIdListShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.formInstanceIdList)) {
            request.formInstanceIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.formInstanceIdList, "FormInstanceIdList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asynchronousExecution)) {
            body["AsynchronousExecution"] = request.asynchronousExecution!;
        }
        if (!TeaUtils.Client.isUnset(request.executeExpression)) {
            body["ExecuteExpression"] = request.executeExpression!;
        }
        if (!TeaUtils.Client.isUnset(request.formInstanceIdListShrink)) {
            body["FormInstanceIdList"] = request.formInstanceIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "BatchRemovalByFormInstanceIdList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/batchRemovalByFormInstanceIdList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchRemovalByFormInstanceIdListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchRemovalByFormInstanceIdList(_ request: BatchRemovalByFormInstanceIdListRequest) async throws -> BatchRemovalByFormInstanceIdListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: BatchRemovalByFormInstanceIdListHeaders = BatchRemovalByFormInstanceIdListHeaders([:])
        return try await batchRemovalByFormInstanceIdListWithOptions(request as! BatchRemovalByFormInstanceIdListRequest, headers as! BatchRemovalByFormInstanceIdListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchSaveFormDataWithOptions(_ tmpReq: BatchSaveFormDataRequest, _ tmpHeader: BatchSaveFormDataHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchSaveFormDataResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchSaveFormDataShrinkRequest = BatchSaveFormDataShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: BatchSaveFormDataShrinkHeaders = BatchSaveFormDataShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.formDataJsonList)) {
            request.formDataJsonListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.formDataJsonList, "FormDataJsonList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asynchronousExecution)) {
            body["AsynchronousExecution"] = request.asynchronousExecution!;
        }
        if (!TeaUtils.Client.isUnset(request.formDataJsonListShrink)) {
            body["FormDataJsonList"] = request.formDataJsonListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keepRunningAfterException)) {
            body["KeepRunningAfterException"] = request.keepRunningAfterException!;
        }
        if (!TeaUtils.Client.isUnset(request.noExecuteExpression)) {
            body["NoExecuteExpression"] = request.noExecuteExpression!;
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "BatchSaveFormData",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/batchSaveFormData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchSaveFormDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchSaveFormData(_ request: BatchSaveFormDataRequest) async throws -> BatchSaveFormDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: BatchSaveFormDataHeaders = BatchSaveFormDataHeaders([:])
        return try await batchSaveFormDataWithOptions(request as! BatchSaveFormDataRequest, headers as! BatchSaveFormDataHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUpdateFormDataByInstanceIdWithOptions(_ tmpReq: BatchUpdateFormDataByInstanceIdRequest, _ tmpHeader: BatchUpdateFormDataByInstanceIdHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchUpdateFormDataByInstanceIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchUpdateFormDataByInstanceIdShrinkRequest = BatchUpdateFormDataByInstanceIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: BatchUpdateFormDataByInstanceIdShrinkHeaders = BatchUpdateFormDataByInstanceIdShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.formInstanceIdList)) {
            request.formInstanceIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.formInstanceIdList, "FormInstanceIdList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asynchronousExecution)) {
            body["AsynchronousExecution"] = request.asynchronousExecution!;
        }
        if (!TeaUtils.Client.isUnset(request.formInstanceIdListShrink)) {
            body["FormInstanceIdList"] = request.formInstanceIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreEmpty)) {
            body["IgnoreEmpty"] = request.ignoreEmpty!;
        }
        if (!TeaUtils.Client.isUnset(request.noExecuteExpression)) {
            body["NoExecuteExpression"] = request.noExecuteExpression!;
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateFormDataJson)) {
            body["UpdateFormDataJson"] = request.updateFormDataJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useLatestFormSchemaVersion)) {
            body["UseLatestFormSchemaVersion"] = request.useLatestFormSchemaVersion!;
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
            "action": "BatchUpdateFormDataByInstanceId",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/batchUpdateFormDataByInstanceId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchUpdateFormDataByInstanceIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUpdateFormDataByInstanceId(_ request: BatchUpdateFormDataByInstanceIdRequest) async throws -> BatchUpdateFormDataByInstanceIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: BatchUpdateFormDataByInstanceIdHeaders = BatchUpdateFormDataByInstanceIdHeaders([:])
        return try await batchUpdateFormDataByInstanceIdWithOptions(request as! BatchUpdateFormDataByInstanceIdRequest, headers as! BatchUpdateFormDataByInstanceIdHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUpdateFormDataByInstanceMapWithOptions(_ tmpReq: BatchUpdateFormDataByInstanceMapRequest, _ tmpHeader: BatchUpdateFormDataByInstanceMapHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchUpdateFormDataByInstanceMapResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchUpdateFormDataByInstanceMapShrinkRequest = BatchUpdateFormDataByInstanceMapShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: BatchUpdateFormDataByInstanceMapShrinkHeaders = BatchUpdateFormDataByInstanceMapShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.updateFormDataJsonMap)) {
            request.updateFormDataJsonMapShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateFormDataJsonMap, "UpdateFormDataJsonMap", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asynchronousExecution)) {
            body["AsynchronousExecution"] = request.asynchronousExecution!;
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreEmpty)) {
            body["IgnoreEmpty"] = request.ignoreEmpty!;
        }
        if (!TeaUtils.Client.isUnset(request.noExecuteExpression)) {
            body["NoExecuteExpression"] = request.noExecuteExpression!;
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateFormDataJsonMapShrink)) {
            body["UpdateFormDataJsonMap"] = request.updateFormDataJsonMapShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useLatestFormSchemaVersion)) {
            body["UseLatestFormSchemaVersion"] = request.useLatestFormSchemaVersion!;
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
            "action": "BatchUpdateFormDataByInstanceMap",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/batchUpdateFormDataByInstanceMap",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchUpdateFormDataByInstanceMapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUpdateFormDataByInstanceMap(_ request: BatchUpdateFormDataByInstanceMapRequest) async throws -> BatchUpdateFormDataByInstanceMapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: BatchUpdateFormDataByInstanceMapHeaders = BatchUpdateFormDataByInstanceMapHeaders([:])
        return try await batchUpdateFormDataByInstanceMapWithOptions(request as! BatchUpdateFormDataByInstanceMapRequest, headers as! BatchUpdateFormDataByInstanceMapHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func changeDingTalkIdWithOptions(_ tmpReq: ChangeDingTalkIdRequest, _ tmpHeader: ChangeDingTalkIdHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeDingTalkIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ChangeDingTalkIdShrinkRequest = ChangeDingTalkIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ChangeDingTalkIdShrinkHeaders = ChangeDingTalkIdShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dingTalkId)) {
            body["DingTalkId"] = request.dingTalkId ?? "";
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
            "action": "ChangeDingTalkId",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/user/changeDingTalkId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeDingTalkIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeDingTalkId(_ request: ChangeDingTalkIdRequest) async throws -> ChangeDingTalkIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ChangeDingTalkIdHeaders = ChangeDingTalkIdHeaders([:])
        return try await changeDingTalkIdWithOptions(request as! ChangeDingTalkIdRequest, headers as! ChangeDingTalkIdHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkAlibabaStaffWithOptions(_ tmpReq: CheckAlibabaStaffRequest, _ tmpHeader: CheckAlibabaStaffHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckAlibabaStaffResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CheckAlibabaStaffShrinkRequest = CheckAlibabaStaffShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CheckAlibabaStaffShrinkHeaders = CheckAlibabaStaffShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
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
            "action": "CheckAlibabaStaff",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/im/checkAlibabaStaff",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckAlibabaStaffResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkAlibabaStaff(_ request: CheckAlibabaStaffRequest) async throws -> CheckAlibabaStaffResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CheckAlibabaStaffHeaders = CheckAlibabaStaffHeaders([:])
        return try await checkAlibabaStaffWithOptions(request as! CheckAlibabaStaffRequest, headers as! CheckAlibabaStaffHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkUserIsGroupMemberWithOptions(_ request: CheckUserIsGroupMemberRequest, _ tmpHeader: CheckUserIsGroupMemberHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckUserIsGroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: CheckUserIsGroupMemberShrinkHeaders = CheckUserIsGroupMemberShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openConversationId)) {
            body["OpenConversationId"] = request.openConversationId ?? "";
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
            "action": "CheckUserIsGroupMember",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/im/checkUserIsGroupMember",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckUserIsGroupMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkUserIsGroupMember(_ request: CheckUserIsGroupMemberRequest) async throws -> CheckUserIsGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CheckUserIsGroupMemberHeaders = CheckUserIsGroupMemberHeaders([:])
        return try await checkUserIsGroupMemberWithOptions(request as! CheckUserIsGroupMemberRequest, headers as! CheckUserIsGroupMemberHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func closeVideoConferenceWithOptions(_ tmpReq: CloseVideoConferenceRequest, _ tmpHeader: CloseVideoConferenceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloseVideoConferenceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CloseVideoConferenceShrinkRequest = CloseVideoConferenceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CloseVideoConferenceShrinkHeaders = CloseVideoConferenceShrinkHeaders([:])
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
            "action": "CloseVideoConference",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/closeVideoConference",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloseVideoConferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeVideoConference(_ request: CloseVideoConferenceRequest) async throws -> CloseVideoConferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CloseVideoConferenceHeaders = CloseVideoConferenceHeaders([:])
        return try await closeVideoConferenceWithOptions(request as! CloseVideoConferenceRequest, headers as! CloseVideoConferenceHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func commitFileWithOptions(_ tmpReq: CommitFileRequest, _ tmpHeader: CommitFileHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CommitFileResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CommitFileShrinkRequest = CommitFileShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CommitFileShrinkHeaders = CommitFileShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.parentDentryUuid)) {
            body["ParentDentryUuid"] = request.parentDentryUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadKey)) {
            body["UploadKey"] = request.uploadKey ?? "";
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
            "action": "CommitFile",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/commitFile",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CommitFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commitFile(_ request: CommitFileRequest) async throws -> CommitFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CommitFileHeaders = CommitFileHeaders([:])
        return try await commitFileWithOptions(request as! CommitFileRequest, headers as! CommitFileHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyDentryWithOptions(_ tmpReq: CopyDentryRequest, _ tmpHeader: CopyDentryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CopyDentryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CopyDentryShrinkRequest = CopyDentryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CopyDentryShrinkHeaders = CopyDentryShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceId)) {
            body["SpaceId"] = request.spaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetSpaceId)) {
            body["TargetSpaceId"] = request.targetSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toNextDentryId)) {
            body["ToNextDentryId"] = request.toNextDentryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toParentDentryId)) {
            body["ToParentDentryId"] = request.toParentDentryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toPrevDentryId)) {
            body["ToPrevDentryId"] = request.toPrevDentryId ?? "";
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
            "action": "CopyDentry",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/copyDentry",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CopyDentryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyDentry(_ request: CopyDentryRequest) async throws -> CopyDentryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CopyDentryHeaders = CopyDentryHeaders([:])
        return try await copyDentryWithOptions(request as! CopyDentryRequest, headers as! CopyDentryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlidingAssistantWithOptions(_ tmpReq: CreateAlidingAssistantRequest, _ tmpHeader: CreateAlidingAssistantHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAlidingAssistantResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAlidingAssistantShrinkRequest = CreateAlidingAssistantShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateAlidingAssistantShrinkHeaders = CreateAlidingAssistantShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ext)) {
            request.extShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ext, "Ext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.recommendPrompts)) {
            request.recommendPromptsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.recommendPrompts, "RecommendPrompts", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            body["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extShrink)) {
            body["Ext"] = request.extShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.icon)) {
            body["Icon"] = request.icon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instructions)) {
            body["Instructions"] = request.instructions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recommendPromptsShrink)) {
            body["RecommendPrompts"] = request.recommendPromptsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["Source"] = request.source!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceIdentityId)) {
            body["SourceIdentityId"] = request.sourceIdentityId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.welcomeContent)) {
            body["WelcomeContent"] = request.welcomeContent ?? "";
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
            "action": "CreateAlidingAssistant",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/aiagent/createAlidingAssistant",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAlidingAssistantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlidingAssistant(_ request: CreateAlidingAssistantRequest) async throws -> CreateAlidingAssistantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateAlidingAssistantHeaders = CreateAlidingAssistantHeaders([:])
        return try await createAlidingAssistantWithOptions(request as! CreateAlidingAssistantRequest, headers as! CreateAlidingAssistantHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeliveryPlanWithOptions(_ tmpReq: CreateDeliveryPlanRequest, _ tmpHeader: CreateDeliveryPlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDeliveryPlanResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDeliveryPlanShrinkRequest = CreateDeliveryPlanShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateDeliveryPlanShrinkHeaders = CreateDeliveryPlanShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.content)) {
            request.contentShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.content, "Content", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userIdList)) {
            request.userIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIdList, "UserIdList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentShrink)) {
            body["Content"] = request.contentShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.resId)) {
            body["ResId"] = request.resId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdListShrink)) {
            body["UserIdList"] = request.userIdListShrink ?? "";
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
            "action": "CreateDeliveryPlan",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/watt/createDeliveryPlan",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDeliveryPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeliveryPlan(_ request: CreateDeliveryPlanRequest) async throws -> CreateDeliveryPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateDeliveryPlanHeaders = CreateDeliveryPlanHeaders([:])
        return try await createDeliveryPlanWithOptions(request as! CreateDeliveryPlanRequest, headers as! CreateDeliveryPlanHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDingtalkPersonalTodoTaskWithOptions(_ tmpReq: CreateDingtalkPersonalTodoTaskRequest, _ tmpHeader: CreateDingtalkPersonalTodoTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDingtalkPersonalTodoTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDingtalkPersonalTodoTaskShrinkRequest = CreateDingtalkPersonalTodoTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateDingtalkPersonalTodoTaskShrinkHeaders = CreateDingtalkPersonalTodoTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.executorIds)) {
            request.executorIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.executorIds, "ExecutorIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notifyConfigs)) {
            request.notifyConfigsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notifyConfigs, "NotifyConfigs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.participantIds)) {
            request.participantIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.participantIds, "ParticipantIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dueTime)) {
            body["DueTime"] = request.dueTime!;
        }
        if (!TeaUtils.Client.isUnset(request.executorIdsShrink)) {
            body["ExecutorIds"] = request.executorIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyConfigsShrink)) {
            body["NotifyConfigs"] = request.notifyConfigsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.participantIdsShrink)) {
            body["ParticipantIds"] = request.participantIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            body["Subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userToken)) {
            body["UserToken"] = request.userToken ?? "";
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
            "action": "CreateDingtalkPersonalTodoTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/createDingtalkPersonalTodoTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDingtalkPersonalTodoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDingtalkPersonalTodoTask(_ request: CreateDingtalkPersonalTodoTaskRequest) async throws -> CreateDingtalkPersonalTodoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateDingtalkPersonalTodoTaskHeaders = CreateDingtalkPersonalTodoTaskHeaders([:])
        return try await createDingtalkPersonalTodoTaskWithOptions(request as! CreateDingtalkPersonalTodoTaskRequest, headers as! CreateDingtalkPersonalTodoTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(tmpReq.cardInstances)) {
            request.cardInstancesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cardInstances, "CardInstances", "json")
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
        if (!TeaUtils.Client.isUnset(tmpReq.richTextDescription)) {
            request.richTextDescriptionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.richTextDescription, "RichTextDescription", "json")
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
        if (!TeaUtils.Client.isUnset(request.cardInstancesShrink)) {
            body["CardInstances"] = request.cardInstancesShrink ?? "";
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
        if (!TeaUtils.Client.isUnset(request.richTextDescriptionShrink)) {
            body["RichTextDescription"] = request.richTextDescriptionShrink ?? "";
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
        if (!TeaUtils.Client.isUnset(tmpReq.reservationAuthority)) {
            request.reservationAuthorityShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.reservationAuthority, "ReservationAuthority", "json")
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
        if (!TeaUtils.Client.isUnset(request.enableCycleReservation)) {
            body["EnableCycleReservation"] = request.enableCycleReservation!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.isvRoomId)) {
            body["IsvRoomId"] = request.isvRoomId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reservationAuthorityShrink)) {
            body["ReservationAuthority"] = request.reservationAuthorityShrink ?? "";
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
    public func createMessageWithOptions(_ request: CreateMessageRequest, _ headers: CreateMessageHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMessageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assistantId)) {
            body["assistantId"] = request.assistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messages)) {
            body["messages"] = request.messages ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.originalAssistantId)) {
            body["originalAssistantId"] = request.originalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIdOfOriginalAssistantId)) {
            body["sourceIdOfOriginalAssistantId"] = request.sourceIdOfOriginalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypeOfOriginalAssistantId)) {
            body["sourceTypeOfOriginalAssistantId"] = request.sourceTypeOfOriginalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threadId)) {
            body["threadId"] = request.threadId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountId)) {
            realHeaders["accountId"] = TeaUtils.Client.toJSONString(headers.accountId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMessage",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/ai/v1/assistant/createMessage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMessage(_ request: CreateMessageRequest) async throws -> CreateMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateMessageHeaders = CreateMessageHeaders([:])
        return try await createMessageWithOptions(request as! CreateMessageRequest, headers as! CreateMessageHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMultiDimTableFieldWithOptions(_ tmpReq: CreateMultiDimTableFieldRequest, _ tmpHeader: CreateMultiDimTableFieldHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMultiDimTableFieldResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateMultiDimTableFieldShrinkRequest = CreateMultiDimTableFieldShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateMultiDimTableFieldShrinkHeaders = CreateMultiDimTableFieldShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.property)) {
            request.propertyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.property, "Property", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.propertyShrink)) {
            body["Property"] = request.propertyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetIdOrName)) {
            body["SheetIdOrName"] = request.sheetIdOrName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
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
            "action": "CreateMultiDimTableField",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/createMultiDimTableField",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMultiDimTableFieldResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMultiDimTableField(_ request: CreateMultiDimTableFieldRequest) async throws -> CreateMultiDimTableFieldResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateMultiDimTableFieldHeaders = CreateMultiDimTableFieldHeaders([:])
        return try await createMultiDimTableFieldWithOptions(request as! CreateMultiDimTableFieldRequest, headers as! CreateMultiDimTableFieldHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrUpdateFormDataWithOptions(_ request: CreateOrUpdateFormDataRequest, _ tmpHeader: CreateOrUpdateFormDataHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrUpdateFormDataResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: CreateOrUpdateFormDataShrinkHeaders = CreateOrUpdateFormDataShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formDataJson)) {
            body["FormDataJson"] = request.formDataJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.noExecuteExpression)) {
            body["NoExecuteExpression"] = request.noExecuteExpression!;
        }
        if (!TeaUtils.Client.isUnset(request.searchCondition)) {
            body["SearchCondition"] = request.searchCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
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
            "action": "CreateOrUpdateFormData",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/createOrUpdateFormData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOrUpdateFormDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrUpdateFormData(_ request: CreateOrUpdateFormDataRequest) async throws -> CreateOrUpdateFormDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateOrUpdateFormDataHeaders = CreateOrUpdateFormDataHeaders([:])
        return try await createOrUpdateFormDataWithOptions(request as! CreateOrUpdateFormDataRequest, headers as! CreateOrUpdateFormDataHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func createPersonalTodoTaskWithOptions(_ tmpReq: CreatePersonalTodoTaskRequest, _ tmpHeader: CreatePersonalTodoTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalTodoTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePersonalTodoTaskShrinkRequest = CreatePersonalTodoTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreatePersonalTodoTaskShrinkHeaders = CreatePersonalTodoTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.executorIds)) {
            request.executorIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.executorIds, "ExecutorIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notifyConfigs)) {
            request.notifyConfigsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notifyConfigs, "NotifyConfigs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.participantIds)) {
            request.participantIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.participantIds, "ParticipantIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dueTime)) {
            body["DueTime"] = request.dueTime!;
        }
        if (!TeaUtils.Client.isUnset(request.executorIdsShrink)) {
            body["ExecutorIds"] = request.executorIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyConfigsShrink)) {
            body["NotifyConfigs"] = request.notifyConfigsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.participantIdsShrink)) {
            body["ParticipantIds"] = request.participantIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reminderTimeStamp)) {
            body["ReminderTimeStamp"] = request.reminderTimeStamp!;
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            body["Subject"] = request.subject ?? "";
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
            "action": "CreatePersonalTodoTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/createPersonalTodoTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalTodoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalTodoTask(_ request: CreatePersonalTodoTaskRequest) async throws -> CreatePersonalTodoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreatePersonalTodoTaskHeaders = CreatePersonalTodoTaskHeaders([:])
        return try await createPersonalTodoTaskWithOptions(request as! CreatePersonalTodoTaskRequest, headers as! CreatePersonalTodoTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func createRunWithOptions(_ request: CreateRunRequest, _ headers: CreateRunHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRunResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowStructViewContent)) {
            body["allowStructViewContent"] = request.allowStructViewContent!;
        }
        if (!TeaUtils.Client.isUnset(request.assistantId)) {
            body["assistantId"] = request.assistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalAssistantId)) {
            body["originalAssistantId"] = request.originalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIdOfOriginalAssistantId)) {
            body["sourceIdOfOriginalAssistantId"] = request.sourceIdOfOriginalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypeOfOriginalAssistantId)) {
            body["sourceTypeOfOriginalAssistantId"] = request.sourceTypeOfOriginalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.threadId)) {
            body["threadId"] = request.threadId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountId)) {
            realHeaders["accountId"] = TeaUtils.Client.toJSONString(headers.accountId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRun",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/ai/v1/assistant/createRun",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRun(_ request: CreateRunRequest) async throws -> CreateRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateRunHeaders = CreateRunHeaders([:])
        return try await createRunWithOptions(request as! CreateRunRequest, headers as! CreateRunHeaders, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(tmpReq.scheduleConfSettingModel)) {
            request.scheduleConfSettingModelShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scheduleConfSettingModel, "ScheduleConfSettingModel", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleConfSettingModelShrink)) {
            body["ScheduleConfSettingModel"] = request.scheduleConfSettingModelShrink ?? "";
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
    public func createSearchDomeWithOptions(_ tmpReq: CreateSearchDomeRequest, _ tmpHeader: CreateSearchDomeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSearchDomeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSearchDomeShrinkRequest = CreateSearchDomeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateSearchDomeShrinkHeaders = CreateSearchDomeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userIdList)) {
            request.userIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIdList, "UserIdList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.resId)) {
            body["ResId"] = request.resId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdListShrink)) {
            body["UserIdList"] = request.userIdListShrink ?? "";
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
            "action": "CreateSearchDome",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/watt/createSearchDome",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSearchDomeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSearchDome(_ request: CreateSearchDomeRequest) async throws -> CreateSearchDomeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateSearchDomeHeaders = CreateSearchDomeHeaders([:])
        return try await createSearchDomeWithOptions(request as! CreateSearchDomeRequest, headers as! CreateSearchDomeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSearchKeywordWithOptions(_ tmpReq: CreateSearchKeywordRequest, _ tmpHeader: CreateSearchKeywordHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSearchKeywordResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSearchKeywordShrinkRequest = CreateSearchKeywordShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateSearchKeywordShrinkHeaders = CreateSearchKeywordShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userIdList)) {
            request.userIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIdList, "UserIdList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.resId)) {
            body["ResId"] = request.resId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdListShrink)) {
            body["UserIdList"] = request.userIdListShrink ?? "";
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
            "action": "CreateSearchKeyword",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/watt/createSearchKeyword",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSearchKeywordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSearchKeyword(_ request: CreateSearchKeywordRequest) async throws -> CreateSearchKeywordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateSearchKeywordHeaders = CreateSearchKeywordHeaders([:])
        return try await createSearchKeywordWithOptions(request as! CreateSearchKeywordRequest, headers as! CreateSearchKeywordHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func createThreadWithOptions(_ request: CreateThreadRequest, _ headers: CreateThreadHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateThreadResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assistantId)) {
            body["assistantId"] = request.assistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalAssistantId)) {
            body["originalAssistantId"] = request.originalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIdOfOriginalAssistantId)) {
            body["sourceIdOfOriginalAssistantId"] = request.sourceIdOfOriginalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypeOfOriginalAssistantId)) {
            body["sourceTypeOfOriginalAssistantId"] = request.sourceTypeOfOriginalAssistantId!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountId)) {
            realHeaders["accountId"] = TeaUtils.Client.toJSONString(headers.accountId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateThread",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/ai/v1/assistant/createThread",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateThreadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createThread(_ request: CreateThreadRequest) async throws -> CreateThreadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateThreadHeaders = CreateThreadHeaders([:])
        return try await createThreadWithOptions(request as! CreateThreadRequest, headers as! CreateThreadHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTicketWithOptions(_ tmpReq: CreateTicketRequest, _ tmpHeader: CreateTicketHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTicketResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateTicketShrinkRequest = CreateTicketShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateTicketShrinkHeaders = CreateTicketShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notify)) {
            request.notifyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notify, "Notify", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.processorUserIds)) {
            request.processorUserIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.processorUserIds, "ProcessorUserIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sceneContext)) {
            request.sceneContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sceneContext, "SceneContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customFields)) {
            body["CustomFields"] = request.customFields ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyShrink)) {
            body["Notify"] = request.notifyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openTeamId)) {
            body["OpenTeamId"] = request.openTeamId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openTemplateBizId)) {
            body["OpenTemplateBizId"] = request.openTemplateBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processorUserIdsShrink)) {
            body["ProcessorUserIds"] = request.processorUserIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["Scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneContextShrink)) {
            body["SceneContext"] = request.sceneContextShrink ?? "";
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
            "action": "CreateTicket",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ticket/createTicket",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTicket(_ request: CreateTicketRequest) async throws -> CreateTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateTicketHeaders = CreateTicketHeaders([:])
        return try await createTicketWithOptions(request as! CreateTicketRequest, headers as! CreateTicketHeaders, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(tmpReq.actionList)) {
            request.actionListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.actionList, "actionList", "json")
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
        if (!TeaUtils.Client.isUnset(tmpReq.remindNotifyConfigs)) {
            request.remindNotifyConfigsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.remindNotifyConfigs, "remindNotifyConfigs", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operatorId)) {
            query["operatorId"] = request.operatorId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.actionListShrink)) {
            body["actionList"] = request.actionListShrink ?? "";
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
        if (!TeaUtils.Client.isUnset(request.remindNotifyConfigsShrink)) {
            body["remindNotifyConfigs"] = request.remindNotifyConfigsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reminderTimeStamp)) {
            body["reminderTimeStamp"] = request.reminderTimeStamp!;
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
    public func deleteAlidingAssistantWithOptions(_ tmpReq: DeleteAlidingAssistantRequest, _ tmpHeader: DeleteAlidingAssistantHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAlidingAssistantResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteAlidingAssistantShrinkRequest = DeleteAlidingAssistantShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteAlidingAssistantShrinkHeaders = DeleteAlidingAssistantShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assistantId)) {
            body["AssistantId"] = request.assistantId ?? "";
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
            "action": "DeleteAlidingAssistant",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/aiagent/deleteAlidingAssistant",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAlidingAssistantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlidingAssistant(_ request: DeleteAlidingAssistantRequest) async throws -> DeleteAlidingAssistantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteAlidingAssistantHeaders = DeleteAlidingAssistantHeaders([:])
        return try await deleteAlidingAssistantWithOptions(request as! DeleteAlidingAssistantRequest, headers as! DeleteAlidingAssistantHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func deleteDentryWithOptions(_ tmpReq: DeleteDentryRequest, _ tmpHeader: DeleteDentryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDentryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteDentryShrinkRequest = DeleteDentryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteDentryShrinkHeaders = DeleteDentryShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.spaceId)) {
            body["SpaceId"] = request.spaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toRecycleBin)) {
            body["ToRecycleBin"] = request.toRecycleBin!;
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
            "action": "DeleteDentry",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/deleteDentry",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDentryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDentry(_ request: DeleteDentryRequest) async throws -> DeleteDentryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteDentryHeaders = DeleteDentryHeaders([:])
        return try await deleteDentryWithOptions(request as! DeleteDentryRequest, headers as! DeleteDentryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDriveSpaceWithOptions(_ tmpReq: DeleteDriveSpaceRequest, _ tmpHeader: DeleteDriveSpaceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDriveSpaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteDriveSpaceShrinkRequest = DeleteDriveSpaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteDriveSpaceShrinkHeaders = DeleteDriveSpaceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
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
            "action": "DeleteDriveSpace",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/deleteDriveSpace",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDriveSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDriveSpace(_ request: DeleteDriveSpaceRequest) async throws -> DeleteDriveSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteDriveSpaceHeaders = DeleteDriveSpaceHeaders([:])
        return try await deleteDriveSpaceWithOptions(request as! DeleteDriveSpaceRequest, headers as! DeleteDriveSpaceHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func deleteFormDataWithOptions(_ request: DeleteFormDataRequest, _ tmpHeader: DeleteFormDataHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFormDataResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: DeleteFormDataShrinkHeaders = DeleteFormDataShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formInstanceId)) {
            body["FormInstanceId"] = request.formInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "DeleteFormData",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/deleteFormData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFormDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFormData(_ request: DeleteFormDataRequest) async throws -> DeleteFormDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteFormDataHeaders = DeleteFormDataHeaders([:])
        return try await deleteFormDataWithOptions(request as! DeleteFormDataRequest, headers as! DeleteFormDataHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceWithOptions(_ request: DeleteInstanceRequest, _ tmpHeader: DeleteInstanceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: DeleteInstanceShrinkHeaders = DeleteInstanceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processInstanceId)) {
            body["ProcessInstanceId"] = request.processInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "DeleteInstance",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/deleteInstance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstance(_ request: DeleteInstanceRequest) async throws -> DeleteInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteInstanceHeaders = DeleteInstanceHeaders([:])
        return try await deleteInstanceWithOptions(request as! DeleteInstanceRequest, headers as! DeleteInstanceHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func deleteMultiDimTableFieldWithOptions(_ tmpReq: DeleteMultiDimTableFieldRequest, _ tmpHeader: DeleteMultiDimTableFieldHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMultiDimTableFieldResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteMultiDimTableFieldShrinkRequest = DeleteMultiDimTableFieldShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteMultiDimTableFieldShrinkHeaders = DeleteMultiDimTableFieldShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fieldIdOrName)) {
            body["FieldIdOrName"] = request.fieldIdOrName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetIdOrName)) {
            body["SheetIdOrName"] = request.sheetIdOrName ?? "";
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
            "action": "DeleteMultiDimTableField",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/deleteMultiDimTableField",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMultiDimTableFieldResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMultiDimTableField(_ request: DeleteMultiDimTableFieldRequest) async throws -> DeleteMultiDimTableFieldResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteMultiDimTableFieldHeaders = DeleteMultiDimTableFieldHeaders([:])
        return try await deleteMultiDimTableFieldWithOptions(request as! DeleteMultiDimTableFieldRequest, headers as! DeleteMultiDimTableFieldHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMultiDimTableRecordsWithOptions(_ tmpReq: DeleteMultiDimTableRecordsRequest, _ tmpHeader: DeleteMultiDimTableRecordsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMultiDimTableRecordsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteMultiDimTableRecordsShrinkRequest = DeleteMultiDimTableRecordsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteMultiDimTableRecordsShrinkHeaders = DeleteMultiDimTableRecordsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.recordIds)) {
            request.recordIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.recordIds, "RecordIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordIdsShrink)) {
            body["RecordIds"] = request.recordIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetIdOrName)) {
            body["SheetIdOrName"] = request.sheetIdOrName ?? "";
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
            "action": "DeleteMultiDimTableRecords",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/deleteMultiDimTableRecords",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMultiDimTableRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMultiDimTableRecords(_ request: DeleteMultiDimTableRecordsRequest) async throws -> DeleteMultiDimTableRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteMultiDimTableRecordsHeaders = DeleteMultiDimTableRecordsHeaders([:])
        return try await deleteMultiDimTableRecordsWithOptions(request as! DeleteMultiDimTableRecordsRequest, headers as! DeleteMultiDimTableRecordsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePermissionWithOptions(_ tmpReq: DeletePermissionRequest, _ tmpHeader: DeletePermissionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePermissionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeletePermissionShrinkRequest = DeletePermissionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeletePermissionShrinkHeaders = DeletePermissionShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.dentryUuid)) {
            body["DentryUuid"] = request.dentryUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            body["RoleId"] = request.roleId ?? "";
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
            "action": "DeletePermission",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/deletePermission",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePermission(_ request: DeletePermissionRequest) async throws -> DeletePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeletePermissionHeaders = DeletePermissionHeaders([:])
        return try await deletePermissionWithOptions(request as! DeletePermissionRequest, headers as! DeletePermissionHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func docBlocksDeleteWithOptions(_ tmpReq: DocBlocksDeleteRequest, _ tmpHeader: DocBlocksDeleteHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DocBlocksDeleteResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DocBlocksDeleteShrinkRequest = DocBlocksDeleteShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DocBlocksDeleteShrinkHeaders = DocBlocksDeleteShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.blockId)) {
            body["BlockId"] = request.blockId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dentryUuid)) {
            body["DentryUuid"] = request.dentryUuid ?? "";
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
            "action": "DocBlocksDelete",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/docBlocksDelete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DocBlocksDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func docBlocksDelete(_ request: DocBlocksDeleteRequest) async throws -> DocBlocksDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DocBlocksDeleteHeaders = DocBlocksDeleteHeaders([:])
        return try await docBlocksDeleteWithOptions(request as! DocBlocksDeleteRequest, headers as! DocBlocksDeleteHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func docBlocksModifyWithOptions(_ tmpReq: DocBlocksModifyRequest, _ tmpHeader: DocBlocksModifyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DocBlocksModifyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DocBlocksModifyShrinkRequest = DocBlocksModifyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DocBlocksModifyShrinkHeaders = DocBlocksModifyShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.element)) {
            request.elementShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.element, "Element", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.blockId)) {
            body["BlockId"] = request.blockId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dentryUuid)) {
            body["DentryUuid"] = request.dentryUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elementShrink)) {
            body["Element"] = request.elementShrink ?? "";
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
            "action": "DocBlocksModify",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/docBlocksModify",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DocBlocksModifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func docBlocksModify(_ request: DocBlocksModifyRequest) async throws -> DocBlocksModifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DocBlocksModifyHeaders = DocBlocksModifyHeaders([:])
        return try await docBlocksModifyWithOptions(request as! DocBlocksModifyRequest, headers as! DocBlocksModifyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func docBlocksQueryWithOptions(_ tmpReq: DocBlocksQueryRequest, _ tmpHeader: DocBlocksQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DocBlocksQueryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DocBlocksQueryShrinkRequest = DocBlocksQueryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DocBlocksQueryShrinkHeaders = DocBlocksQueryShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.blockType)) {
            body["BlockType"] = request.blockType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docKey)) {
            body["DocKey"] = request.docKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endIndex)) {
            body["EndIndex"] = request.endIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.startIndex)) {
            body["StartIndex"] = request.startIndex!;
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
            "action": "DocBlocksQuery",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/docBlocksQuery",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DocBlocksQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func docBlocksQuery(_ request: DocBlocksQueryRequest) async throws -> DocBlocksQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DocBlocksQueryHeaders = DocBlocksQueryHeaders([:])
        return try await docBlocksQueryWithOptions(request as! DocBlocksQueryRequest, headers as! DocBlocksQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func docUpdateContentWithOptions(_ tmpReq: DocUpdateContentRequest, _ tmpHeader: DocUpdateContentHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DocUpdateContentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DocUpdateContentShrinkRequest = DocUpdateContentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DocUpdateContentShrinkHeaders = DocUpdateContentShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            body["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docKey)) {
            body["DocKey"] = request.docKey ?? "";
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
            "action": "DocUpdateContent",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/docUpdateContent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DocUpdateContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func docUpdateContent(_ request: DocUpdateContentRequest) async throws -> DocUpdateContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DocUpdateContentHeaders = DocUpdateContentHeaders([:])
        return try await docUpdateContentWithOptions(request as! DocUpdateContentRequest, headers as! DocUpdateContentHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeBatchTaskWithOptions(_ request: ExecuteBatchTaskRequest, _ tmpHeader: ExecuteBatchTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteBatchTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: ExecuteBatchTaskShrinkHeaders = ExecuteBatchTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outResult)) {
            body["OutResult"] = request.outResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskInformationList)) {
            body["TaskInformationList"] = request.taskInformationList ?? "";
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
            "action": "ExecuteBatchTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/executeBatchTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteBatchTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeBatchTask(_ request: ExecuteBatchTaskRequest) async throws -> ExecuteBatchTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ExecuteBatchTaskHeaders = ExecuteBatchTaskHeaders([:])
        return try await executeBatchTaskWithOptions(request as! ExecuteBatchTaskRequest, headers as! ExecuteBatchTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executePlatformTaskWithOptions(_ request: ExecutePlatformTaskRequest, _ tmpHeader: ExecutePlatformTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecutePlatformTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: ExecutePlatformTaskShrinkHeaders = ExecutePlatformTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formDataJson)) {
            body["FormDataJson"] = request.formDataJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.noExecuteExpressions)) {
            body["NoExecuteExpressions"] = request.noExecuteExpressions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outResult)) {
            body["OutResult"] = request.outResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processInstanceId)) {
            body["ProcessInstanceId"] = request.processInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "ExecutePlatformTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/executePlatformTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecutePlatformTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executePlatformTask(_ request: ExecutePlatformTaskRequest) async throws -> ExecutePlatformTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ExecutePlatformTaskHeaders = ExecutePlatformTaskHeaders([:])
        return try await executePlatformTaskWithOptions(request as! ExecutePlatformTaskRequest, headers as! ExecutePlatformTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTaskWithOptions(_ request: ExecuteTaskRequest, _ tmpHeader: ExecuteTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: ExecuteTaskShrinkHeaders = ExecuteTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digitalSignUrl)) {
            body["DigitalSignUrl"] = request.digitalSignUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formDataJson)) {
            body["FormDataJson"] = request.formDataJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.noExecuteExpressions)) {
            body["NoExecuteExpressions"] = request.noExecuteExpressions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outResult)) {
            body["OutResult"] = request.outResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processInstanceId)) {
            body["ProcessInstanceId"] = request.processInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId!;
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
            "action": "ExecuteTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/executeTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTask(_ request: ExecuteTaskRequest) async throws -> ExecuteTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ExecuteTaskHeaders = ExecuteTaskHeaders([:])
        return try await executeTaskWithOptions(request as! ExecuteTaskRequest, headers as! ExecuteTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expandGroupCapacityWithOptions(_ tmpReq: ExpandGroupCapacityRequest, _ tmpHeader: ExpandGroupCapacityHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExpandGroupCapacityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ExpandGroupCapacityShrinkRequest = ExpandGroupCapacityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ExpandGroupCapacityShrinkHeaders = ExpandGroupCapacityShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openConversationId)) {
            body["OpenConversationId"] = request.openConversationId ?? "";
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
            "action": "ExpandGroupCapacity",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/aliding/v1/im/expandGroupCapacity",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExpandGroupCapacityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expandGroupCapacity(_ request: ExpandGroupCapacityRequest) async throws -> ExpandGroupCapacityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ExpandGroupCapacityHeaders = ExpandGroupCapacityHeaders([:])
        return try await expandGroupCapacityWithOptions(request as! ExpandGroupCapacityRequest, headers as! ExpandGroupCapacityHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func finishTicketWithOptions(_ tmpReq: FinishTicketRequest, _ tmpHeader: FinishTicketHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FinishTicketResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FinishTicketShrinkRequest = FinishTicketShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: FinishTicketShrinkHeaders = FinishTicketShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notify)) {
            request.notifyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notify, "Notify", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ticketMemo)) {
            request.ticketMemoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ticketMemo, "TicketMemo", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.notifyShrink)) {
            body["Notify"] = request.notifyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openTeamId)) {
            body["OpenTeamId"] = request.openTeamId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openTicketId)) {
            body["OpenTicketId"] = request.openTicketId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ticketMemoShrink)) {
            body["TicketMemo"] = request.ticketMemoShrink ?? "";
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
            "action": "FinishTicket",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ticket/finishTicket",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FinishTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func finishTicket(_ request: FinishTicketRequest) async throws -> FinishTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FinishTicketHeaders = FinishTicketHeaders([:])
        return try await finishTicketWithOptions(request as! FinishTicketRequest, headers as! FinishTicketHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getActivityListWithOptions(_ request: GetActivityListRequest, _ tmpHeader: GetActivityListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetActivityListResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetActivityListShrinkHeaders = GetActivityListShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processCode)) {
            body["ProcessCode"] = request.processCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "GetActivityList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getActivityList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetActivityListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getActivityList(_ request: GetActivityListRequest) async throws -> GetActivityListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetActivityListHeaders = GetActivityListHeaders([:])
        return try await getActivityListWithOptions(request as! GetActivityListRequest, headers as! GetActivityListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlidingAssistantInfoWithOptions(_ tmpReq: GetAlidingAssistantInfoRequest, _ tmpHeader: GetAlidingAssistantInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAlidingAssistantInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetAlidingAssistantInfoShrinkRequest = GetAlidingAssistantInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetAlidingAssistantInfoShrinkHeaders = GetAlidingAssistantInfoShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assistantId)) {
            body["AssistantId"] = request.assistantId ?? "";
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
            "action": "GetAlidingAssistantInfo",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/aiagent/getAlidingAssistantInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAlidingAssistantInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlidingAssistantInfo(_ request: GetAlidingAssistantInfoRequest) async throws -> GetAlidingAssistantInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetAlidingAssistantInfoHeaders = GetAlidingAssistantInfoHeaders([:])
        return try await getAlidingAssistantInfoWithOptions(request as! GetAlidingAssistantInfoRequest, headers as! GetAlidingAssistantInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getAssistantCapabilityWithOptions(_ request: GetAssistantCapabilityRequest, _ headers: GetAssistantCapabilityHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAssistantCapabilityResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assistantId)) {
            body["assistantId"] = request.assistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messages)) {
            body["messages"] = request.messages ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.originalAssistantId)) {
            body["originalAssistantId"] = request.originalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIdOfOriginalAssistantId)) {
            body["sourceIdOfOriginalAssistantId"] = request.sourceIdOfOriginalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypeOfOriginalAssistantId)) {
            body["sourceTypeOfOriginalAssistantId"] = request.sourceTypeOfOriginalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threadId)) {
            body["threadId"] = request.threadId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            body["timeout"] = request.timeout!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountId)) {
            realHeaders["accountId"] = TeaUtils.Client.toJSONString(headers.accountId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAssistantCapability",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/ai/v1/assistant/getAssistantCapability",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAssistantCapabilityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAssistantCapability(_ request: GetAssistantCapabilityRequest) async throws -> GetAssistantCapabilityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetAssistantCapabilityHeaders = GetAssistantCapabilityHeaders([:])
        return try await getAssistantCapabilityWithOptions(request as! GetAssistantCapabilityRequest, headers as! GetAssistantCapabilityHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCardTemplateWithOptions(_ tmpReq: GetCardTemplateRequest, _ tmpHeader: GetCardTemplateHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCardTemplateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetCardTemplateShrinkRequest = GetCardTemplateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetCardTemplateShrinkHeaders = GetCardTemplateShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
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
            "action": "GetCardTemplate",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/card/getCardTemplate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCardTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCardTemplate(_ request: GetCardTemplateRequest) async throws -> GetCardTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetCardTemplateHeaders = GetCardTemplateHeaders([:])
        return try await getCardTemplateWithOptions(request as! GetCardTemplateRequest, headers as! GetCardTemplateHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConversaionSpaceWithOptions(_ tmpReq: GetConversaionSpaceRequest, _ tmpHeader: GetConversaionSpaceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConversaionSpaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetConversaionSpaceShrinkRequest = GetConversaionSpaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetConversaionSpaceShrinkHeaders = GetConversaionSpaceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openConversationId)) {
            body["OpenConversationId"] = request.openConversationId ?? "";
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
            "action": "GetConversaionSpace",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/getConversaionSpace",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConversaionSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConversaionSpace(_ request: GetConversaionSpaceRequest) async throws -> GetConversaionSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetConversaionSpaceHeaders = GetConversaionSpaceHeaders([:])
        return try await getConversaionSpaceWithOptions(request as! GetConversaionSpaceRequest, headers as! GetConversaionSpaceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCorpAccomplishmentTasksWithOptions(_ request: GetCorpAccomplishmentTasksRequest, _ tmpHeader: GetCorpAccomplishmentTasksHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCorpAccomplishmentTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetCorpAccomplishmentTasksShrinkHeaders = GetCorpAccomplishmentTasksShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appTypes)) {
            body["AppTypes"] = request.appTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createFromTimeGMT)) {
            body["CreateFromTimeGMT"] = request.createFromTimeGMT!;
        }
        if (!TeaUtils.Client.isUnset(request.createToTimeGMT)) {
            body["CreateToTimeGMT"] = request.createToTimeGMT!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.processCodes)) {
            body["ProcessCodes"] = request.processCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            body["Token"] = request.token ?? "";
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
            "action": "GetCorpAccomplishmentTasks",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getCorpAccomplishmentTasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCorpAccomplishmentTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCorpAccomplishmentTasks(_ request: GetCorpAccomplishmentTasksRequest) async throws -> GetCorpAccomplishmentTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetCorpAccomplishmentTasksHeaders = GetCorpAccomplishmentTasksHeaders([:])
        return try await getCorpAccomplishmentTasksWithOptions(request as! GetCorpAccomplishmentTasksRequest, headers as! GetCorpAccomplishmentTasksHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCorpTasksWithOptions(_ request: GetCorpTasksRequest, _ tmpHeader: GetCorpTasksHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCorpTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetCorpTasksShrinkHeaders = GetCorpTasksShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appTypes)) {
            body["AppTypes"] = request.appTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createFromTimeGMT)) {
            body["CreateFromTimeGMT"] = request.createFromTimeGMT!;
        }
        if (!TeaUtils.Client.isUnset(request.createToTimeGMT)) {
            body["CreateToTimeGMT"] = request.createToTimeGMT!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.processCodes)) {
            body["ProcessCodes"] = request.processCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            body["Token"] = request.token ?? "";
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
            "action": "GetCorpTasks",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getCorpTasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCorpTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCorpTasks(_ request: GetCorpTasksRequest) async throws -> GetCorpTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetCorpTasksHeaders = GetCorpTasksHeaders([:])
        return try await getCorpTasksWithOptions(request as! GetCorpTasksRequest, headers as! GetCorpTasksHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeptNoWithOptions(_ tmpReq: GetDeptNoRequest, _ tmpHeader: GetDeptNoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeptNoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetDeptNoShrinkRequest = GetDeptNoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetDeptNoShrinkHeaders = GetDeptNoShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.deptId)) {
            body["deptId"] = request.deptId ?? "";
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
            "action": "GetDeptNo",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/aliding/v1/dept/getDeptNo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeptNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeptNo(_ request: GetDeptNoRequest) async throws -> GetDeptNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetDeptNoHeaders = GetDeptNoHeaders([:])
        return try await getDeptNoWithOptions(request as! GetDeptNoRequest, headers as! GetDeptNoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocContentWithOptions(_ tmpReq: GetDocContentRequest, _ tmpHeader: GetDocContentHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocContentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetDocContentShrinkRequest = GetDocContentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetDocContentShrinkHeaders = GetDocContentShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dentryUuid)) {
            body["DentryUuid"] = request.dentryUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetFormat)) {
            body["TargetFormat"] = request.targetFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userToken)) {
            body["userToken"] = request.userToken ?? "";
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
            "action": "GetDocContent",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/getDocContent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocContent(_ request: GetDocContentRequest) async throws -> GetDocContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetDocContentHeaders = GetDocContentHeaders([:])
        return try await getDocContentWithOptions(request as! GetDocContentRequest, headers as! GetDocContentHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocContentTakIdWithOptions(_ tmpReq: GetDocContentTakIdRequest, _ tmpHeader: GetDocContentTakIdHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocContentTakIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetDocContentTakIdShrinkRequest = GetDocContentTakIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetDocContentTakIdShrinkHeaders = GetDocContentTakIdShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dentryUuid)) {
            body["DentryUuid"] = request.dentryUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generateCp)) {
            body["GenerateCp"] = request.generateCp!;
        }
        if (!TeaUtils.Client.isUnset(request.targetFormat)) {
            body["TargetFormat"] = request.targetFormat ?? "";
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
            "action": "GetDocContentTakId",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/getDocContentTakId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocContentTakIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocContentTakId(_ request: GetDocContentTakIdRequest) async throws -> GetDocContentTakIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetDocContentTakIdHeaders = GetDocContentTakIdHeaders([:])
        return try await getDocContentTakIdWithOptions(request as! GetDocContentTakIdRequest, headers as! GetDocContentTakIdHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getFieldDefByUuidWithOptions(_ request: GetFieldDefByUuidRequest, _ tmpHeader: GetFieldDefByUuidHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFieldDefByUuidResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetFieldDefByUuidShrinkHeaders = GetFieldDefByUuidShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "GetFieldDefByUuid",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getFieldDefByUuid",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFieldDefByUuidResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFieldDefByUuid(_ request: GetFieldDefByUuidRequest) async throws -> GetFieldDefByUuidResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetFieldDefByUuidHeaders = GetFieldDefByUuidHeaders([:])
        return try await getFieldDefByUuidWithOptions(request as! GetFieldDefByUuidRequest, headers as! GetFieldDefByUuidHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileDownloadInfoWithOptions(_ tmpReq: GetFileDownloadInfoRequest, _ tmpHeader: GetFileDownloadInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFileDownloadInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetFileDownloadInfoShrinkRequest = GetFileDownloadInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetFileDownloadInfoShrinkHeaders = GetFileDownloadInfoShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.dentryId)) {
            body["DentryId"] = request.dentryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionShrink)) {
            body["Option"] = request.optionShrink ?? "";
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
            "action": "GetFileDownloadInfo",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/getFileDownloadInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFileDownloadInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileDownloadInfo(_ request: GetFileDownloadInfoRequest) async throws -> GetFileDownloadInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetFileDownloadInfoHeaders = GetFileDownloadInfoHeaders([:])
        return try await getFileDownloadInfoWithOptions(request as! GetFileDownloadInfoRequest, headers as! GetFileDownloadInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileUploadInfoWithOptions(_ tmpReq: GetFileUploadInfoRequest, _ tmpHeader: GetFileUploadInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFileUploadInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetFileUploadInfoShrinkRequest = GetFileUploadInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetFileUploadInfoShrinkHeaders = GetFileUploadInfoShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.parentDentryUuid)) {
            body["ParentDentryUuid"] = request.parentDentryUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["Protocol"] = request.protocol_ ?? "";
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
            "action": "GetFileUploadInfo",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/getFileUploadInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFileUploadInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileUploadInfo(_ request: GetFileUploadInfoRequest) async throws -> GetFileUploadInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetFileUploadInfoHeaders = GetFileUploadInfoHeaders([:])
        return try await getFileUploadInfoWithOptions(request as! GetFileUploadInfoRequest, headers as! GetFileUploadInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFormComponentDefinitionListWithOptions(_ request: GetFormComponentDefinitionListRequest, _ tmpHeader: GetFormComponentDefinitionListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFormComponentDefinitionListResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetFormComponentDefinitionListShrinkHeaders = GetFormComponentDefinitionListShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "GetFormComponentDefinitionList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getFormComponentDefinitionList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFormComponentDefinitionListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFormComponentDefinitionList(_ request: GetFormComponentDefinitionListRequest) async throws -> GetFormComponentDefinitionListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetFormComponentDefinitionListHeaders = GetFormComponentDefinitionListHeaders([:])
        return try await getFormComponentDefinitionListWithOptions(request as! GetFormComponentDefinitionListRequest, headers as! GetFormComponentDefinitionListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFormDataByIDWithOptions(_ request: GetFormDataByIDRequest, _ tmpHeader: GetFormDataByIDHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFormDataByIDResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetFormDataByIDShrinkHeaders = GetFormDataByIDShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "GetFormDataByID",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getFormDataByID",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFormDataByIDResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFormDataByID(_ request: GetFormDataByIDRequest) async throws -> GetFormDataByIDResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetFormDataByIDHeaders = GetFormDataByIDHeaders([:])
        return try await getFormDataByIDWithOptions(request as! GetFormDataByIDRequest, headers as! GetFormDataByIDHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFormListInAppWithOptions(_ request: GetFormListInAppRequest, _ tmpHeader: GetFormListInAppHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFormListInAppResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetFormListInAppShrinkHeaders = GetFormListInAppShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formTypes)) {
            body["FormTypes"] = request.formTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "GetFormListInApp",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getFormListInApp",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFormListInAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFormListInApp(_ request: GetFormListInAppRequest) async throws -> GetFormListInAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetFormListInAppHeaders = GetFormListInAppHeaders([:])
        return try await getFormListInAppWithOptions(request as! GetFormListInAppRequest, headers as! GetFormListInAppHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroupLiveListWithOptions(_ tmpReq: GetGroupLiveListRequest, _ tmpHeader: GetGroupLiveListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGroupLiveListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetGroupLiveListShrinkRequest = GetGroupLiveListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetGroupLiveListShrinkHeaders = GetGroupLiveListShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.openConversationId)) {
            body["OpenConversationId"] = request.openConversationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
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
            "action": "GetGroupLiveList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/getGroupLiveList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGroupLiveListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroupLiveList(_ request: GetGroupLiveListRequest) async throws -> GetGroupLiveListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetGroupLiveListHeaders = GetGroupLiveListHeaders([:])
        return try await getGroupLiveListWithOptions(request as! GetGroupLiveListRequest, headers as! GetGroupLiveListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInnerGroupMembersWithOptions(_ request: GetInnerGroupMembersRequest, _ tmpHeader: GetInnerGroupMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInnerGroupMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetInnerGroupMembersShrinkHeaders = GetInnerGroupMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openConversationId)) {
            body["OpenConversationId"] = request.openConversationId ?? "";
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
            "action": "GetInnerGroupMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/im/getInnerGroupMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInnerGroupMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInnerGroupMembers(_ request: GetInnerGroupMembersRequest) async throws -> GetInnerGroupMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetInnerGroupMembersHeaders = GetInnerGroupMembersHeaders([:])
        return try await getInnerGroupMembersWithOptions(request as! GetInnerGroupMembersRequest, headers as! GetInnerGroupMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceByIdWithOptions(_ request: GetInstanceByIdRequest, _ tmpHeader: GetInstanceByIdHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetInstanceByIdShrinkHeaders = GetInstanceByIdShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "GetInstanceById",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getInstanceById",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceById(_ request: GetInstanceByIdRequest) async throws -> GetInstanceByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetInstanceByIdHeaders = GetInstanceByIdHeaders([:])
        return try await getInstanceByIdWithOptions(request as! GetInstanceByIdRequest, headers as! GetInstanceByIdHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceIdListWithOptions(_ request: GetInstanceIdListRequest, _ tmpHeader: GetInstanceIdListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceIdListResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetInstanceIdListShrinkHeaders = GetInstanceIdListShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.approvedResult)) {
            body["ApprovedResult"] = request.approvedResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createFromTimeGMT)) {
            body["CreateFromTimeGMT"] = request.createFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createToTimeGMT)) {
            body["CreateToTimeGMT"] = request.createToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceStatus)) {
            body["InstanceStatus"] = request.instanceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedFromTimeGMT)) {
            body["ModifiedFromTimeGMT"] = request.modifiedFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedToTimeGMT)) {
            body["ModifiedToTimeGMT"] = request.modifiedToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originatorId)) {
            body["OriginatorId"] = request.originatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchFieldJson)) {
            body["SearchFieldJson"] = request.searchFieldJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
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
            "action": "GetInstanceIdList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getInstanceIdList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceIdListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceIdList(_ request: GetInstanceIdListRequest) async throws -> GetInstanceIdListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetInstanceIdListHeaders = GetInstanceIdListHeaders([:])
        return try await getInstanceIdListWithOptions(request as! GetInstanceIdListRequest, headers as! GetInstanceIdListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstancesWithOptions(_ request: GetInstancesRequest, _ tmpHeader: GetInstancesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetInstancesShrinkHeaders = GetInstancesShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.approvedResult)) {
            body["ApprovedResult"] = request.approvedResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createFromTimeGMT)) {
            body["CreateFromTimeGMT"] = request.createFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createToTimeGMT)) {
            body["CreateToTimeGMT"] = request.createToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceStatus)) {
            body["InstanceStatus"] = request.instanceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedFromTimeGMT)) {
            body["ModifiedFromTimeGMT"] = request.modifiedFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedToTimeGMT)) {
            body["ModifiedToTimeGMT"] = request.modifiedToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderConfigJson)) {
            body["OrderConfigJson"] = request.orderConfigJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originatorId)) {
            body["OriginatorId"] = request.originatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchFieldJson)) {
            body["SearchFieldJson"] = request.searchFieldJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
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
            "action": "GetInstances",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getInstances",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstances(_ request: GetInstancesRequest) async throws -> GetInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetInstancesHeaders = GetInstancesHeaders([:])
        return try await getInstancesWithOptions(request as! GetInstancesRequest, headers as! GetInstancesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstancesByIdListWithOptions(_ request: GetInstancesByIdListRequest, _ tmpHeader: GetInstancesByIdListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstancesByIdListResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetInstancesByIdListShrinkHeaders = GetInstancesByIdListShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processInstanceIds)) {
            body["ProcessInstanceIds"] = request.processInstanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "GetInstancesByIdList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getInstancesByIdList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstancesByIdListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstancesByIdList(_ request: GetInstancesByIdListRequest) async throws -> GetInstancesByIdListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetInstancesByIdListHeaders = GetInstancesByIdListHeaders([:])
        return try await getInstancesByIdListWithOptions(request as! GetInstancesByIdListRequest, headers as! GetInstancesByIdListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLiveReplayUrlWithOptions(_ tmpReq: GetLiveReplayUrlRequest, _ tmpHeader: GetLiveReplayUrlHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLiveReplayUrlResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetLiveReplayUrlShrinkRequest = GetLiveReplayUrlShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetLiveReplayUrlShrinkHeaders = GetLiveReplayUrlShrinkHeaders([:])
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
            "action": "GetLiveReplayUrl",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/getLiveReplayUrl",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLiveReplayUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLiveReplayUrl(_ request: GetLiveReplayUrlRequest) async throws -> GetLiveReplayUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetLiveReplayUrlHeaders = GetLiveReplayUrlHeaders([:])
        return try await getLiveReplayUrlWithOptions(request as! GetLiveReplayUrlRequest, headers as! GetLiveReplayUrlHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMeCorpSubmissionWithOptions(_ request: GetMeCorpSubmissionRequest, _ tmpHeader: GetMeCorpSubmissionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMeCorpSubmissionResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetMeCorpSubmissionShrinkHeaders = GetMeCorpSubmissionShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appTypes)) {
            body["AppTypes"] = request.appTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createFromTimeGMT)) {
            body["CreateFromTimeGMT"] = request.createFromTimeGMT!;
        }
        if (!TeaUtils.Client.isUnset(request.createToTimeGMT)) {
            body["CreateToTimeGMT"] = request.createToTimeGMT!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.processCodes)) {
            body["ProcessCodes"] = request.processCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            body["Token"] = request.token ?? "";
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
            "action": "GetMeCorpSubmission",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getMeCorpSubmission",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMeCorpSubmissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMeCorpSubmission(_ request: GetMeCorpSubmissionRequest) async throws -> GetMeCorpSubmissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetMeCorpSubmissionHeaders = GetMeCorpSubmissionHeaders([:])
        return try await getMeCorpSubmissionWithOptions(request as! GetMeCorpSubmissionRequest, headers as! GetMeCorpSubmissionHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getMultiDimTableAllFieldsWithOptions(_ tmpReq: GetMultiDimTableAllFieldsRequest, _ tmpHeader: GetMultiDimTableAllFieldsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMultiDimTableAllFieldsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetMultiDimTableAllFieldsShrinkRequest = GetMultiDimTableAllFieldsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetMultiDimTableAllFieldsShrinkHeaders = GetMultiDimTableAllFieldsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetIdOrName)) {
            body["SheetIdOrName"] = request.sheetIdOrName ?? "";
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
            "action": "GetMultiDimTableAllFields",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/getMultiDimTableAllFields",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMultiDimTableAllFieldsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiDimTableAllFields(_ request: GetMultiDimTableAllFieldsRequest) async throws -> GetMultiDimTableAllFieldsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetMultiDimTableAllFieldsHeaders = GetMultiDimTableAllFieldsHeaders([:])
        return try await getMultiDimTableAllFieldsWithOptions(request as! GetMultiDimTableAllFieldsRequest, headers as! GetMultiDimTableAllFieldsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiDimTableAllSheetsWithOptions(_ tmpReq: GetMultiDimTableAllSheetsRequest, _ tmpHeader: GetMultiDimTableAllSheetsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMultiDimTableAllSheetsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetMultiDimTableAllSheetsShrinkRequest = GetMultiDimTableAllSheetsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetMultiDimTableAllSheetsShrinkHeaders = GetMultiDimTableAllSheetsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
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
            "action": "GetMultiDimTableAllSheets",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/getMultiDimTableAllSheets",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMultiDimTableAllSheetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiDimTableAllSheets(_ request: GetMultiDimTableAllSheetsRequest) async throws -> GetMultiDimTableAllSheetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetMultiDimTableAllSheetsHeaders = GetMultiDimTableAllSheetsHeaders([:])
        return try await getMultiDimTableAllSheetsWithOptions(request as! GetMultiDimTableAllSheetsRequest, headers as! GetMultiDimTableAllSheetsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiDimTableRecordWithOptions(_ tmpReq: GetMultiDimTableRecordRequest, _ tmpHeader: GetMultiDimTableRecordHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMultiDimTableRecordResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetMultiDimTableRecordShrinkRequest = GetMultiDimTableRecordShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetMultiDimTableRecordShrinkHeaders = GetMultiDimTableRecordShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordId)) {
            body["RecordId"] = request.recordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetIdOrName)) {
            body["SheetIdOrName"] = request.sheetIdOrName ?? "";
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
            "action": "GetMultiDimTableRecord",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/getMultiDimTableRecord",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMultiDimTableRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiDimTableRecord(_ request: GetMultiDimTableRecordRequest) async throws -> GetMultiDimTableRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetMultiDimTableRecordHeaders = GetMultiDimTableRecordHeaders([:])
        return try await getMultiDimTableRecordWithOptions(request as! GetMultiDimTableRecordRequest, headers as! GetMultiDimTableRecordHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiDimTableSheetWithOptions(_ tmpReq: GetMultiDimTableSheetRequest, _ tmpHeader: GetMultiDimTableSheetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMultiDimTableSheetResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetMultiDimTableSheetShrinkRequest = GetMultiDimTableSheetShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetMultiDimTableSheetShrinkHeaders = GetMultiDimTableSheetShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetIdOrName)) {
            body["SheetIdOrName"] = request.sheetIdOrName ?? "";
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
            "action": "GetMultiDimTableSheet",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/getMultiDimTableSheet",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMultiDimTableSheetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiDimTableSheet(_ request: GetMultiDimTableSheetRequest) async throws -> GetMultiDimTableSheetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetMultiDimTableSheetHeaders = GetMultiDimTableSheetHeaders([:])
        return try await getMultiDimTableSheetWithOptions(request as! GetMultiDimTableSheetRequest, headers as! GetMultiDimTableSheetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultipartFileUploadInfosWithOptions(_ tmpReq: GetMultipartFileUploadInfosRequest, _ tmpHeader: GetMultipartFileUploadInfosHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMultipartFileUploadInfosResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetMultipartFileUploadInfosShrinkRequest = GetMultipartFileUploadInfosShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetMultipartFileUploadInfosShrinkHeaders = GetMultipartFileUploadInfosShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.option)) {
            request.optionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.option, "Option", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.partNumbers)) {
            request.partNumbersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.partNumbers, "PartNumbers", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.optionShrink)) {
            body["Option"] = request.optionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partNumbersShrink)) {
            body["PartNumbers"] = request.partNumbersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadKey)) {
            body["UploadKey"] = request.uploadKey ?? "";
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
            "action": "GetMultipartFileUploadInfos",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/GetMultipartFileUploadInfos",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMultipartFileUploadInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultipartFileUploadInfos(_ request: GetMultipartFileUploadInfosRequest) async throws -> GetMultipartFileUploadInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetMultipartFileUploadInfosHeaders = GetMultipartFileUploadInfosHeaders([:])
        return try await getMultipartFileUploadInfosWithOptions(request as! GetMultipartFileUploadInfosRequest, headers as! GetMultipartFileUploadInfosHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNewestInnerGroupsWithOptions(_ tmpReq: GetNewestInnerGroupsRequest, _ tmpHeader: GetNewestInnerGroupsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNewestInnerGroupsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetNewestInnerGroupsShrinkRequest = GetNewestInnerGroupsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetNewestInnerGroupsShrinkHeaders = GetNewestInnerGroupsShrinkHeaders([:])
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
            "action": "GetNewestInnerGroups",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/im/getNewestInnerGroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNewestInnerGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNewestInnerGroups(_ request: GetNewestInnerGroupsRequest) async throws -> GetNewestInnerGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetNewestInnerGroupsHeaders = GetNewestInnerGroupsHeaders([:])
        return try await getNewestInnerGroupsWithOptions(request as! GetNewestInnerGroupsRequest, headers as! GetNewestInnerGroupsHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getNotifyMeWithOptions(_ request: GetNotifyMeRequest, _ tmpHeader: GetNotifyMeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNotifyMeResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetNotifyMeShrinkHeaders = GetNotifyMeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appTypes)) {
            body["AppTypes"] = request.appTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createFromTimeGMT)) {
            body["CreateFromTimeGMT"] = request.createFromTimeGMT!;
        }
        if (!TeaUtils.Client.isUnset(request.createToTimeGMT)) {
            body["CreateToTimeGMT"] = request.createToTimeGMT!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceCreateFromTimeGMT)) {
            body["InstanceCreateFromTimeGMT"] = request.instanceCreateFromTimeGMT!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceCreateToTimeGMT)) {
            body["InstanceCreateToTimeGMT"] = request.instanceCreateToTimeGMT!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.processCodes)) {
            body["ProcessCodes"] = request.processCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            body["Token"] = request.token ?? "";
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
            "action": "GetNotifyMe",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getNotifyMe",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNotifyMeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNotifyMe(_ request: GetNotifyMeRequest) async throws -> GetNotifyMeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetNotifyMeHeaders = GetNotifyMeHeaders([:])
        return try await getNotifyMeWithOptions(request as! GetNotifyMeRequest, headers as! GetNotifyMeHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getOperationRecordsWithOptions(_ request: GetOperationRecordsRequest, _ tmpHeader: GetOperationRecordsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOperationRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetOperationRecordsShrinkHeaders = GetOperationRecordsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processInstanceId)) {
            body["ProcessInstanceId"] = request.processInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "GetOperationRecords",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getOperationRecords",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOperationRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOperationRecords(_ request: GetOperationRecordsRequest) async throws -> GetOperationRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetOperationRecordsHeaders = GetOperationRecordsHeaders([:])
        return try await getOperationRecordsWithOptions(request as! GetOperationRecordsRequest, headers as! GetOperationRecordsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrgLiveListWithOptions(_ tmpReq: GetOrgLiveListRequest, _ tmpHeader: GetOrgLiveListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrgLiveListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetOrgLiveListShrinkRequest = GetOrgLiveListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetOrgLiveListShrinkHeaders = GetOrgLiveListShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
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
            "action": "GetOrgLiveList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/getOrgLiveList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrgLiveListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrgLiveList(_ request: GetOrgLiveListRequest) async throws -> GetOrgLiveListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetOrgLiveListHeaders = GetOrgLiveListHeaders([:])
        return try await getOrgLiveListWithOptions(request as! GetOrgLiveListRequest, headers as! GetOrgLiveListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrgOrWebOpenDocContentTaskIdWithOptions(_ tmpReq: GetOrgOrWebOpenDocContentTaskIdRequest, _ tmpHeader: GetOrgOrWebOpenDocContentTaskIdHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrgOrWebOpenDocContentTaskIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetOrgOrWebOpenDocContentTaskIdShrinkRequest = GetOrgOrWebOpenDocContentTaskIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetOrgOrWebOpenDocContentTaskIdShrinkHeaders = GetOrgOrWebOpenDocContentTaskIdShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dentryUuid)) {
            body["DentryUuid"] = request.dentryUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generateCp)) {
            body["GenerateCp"] = request.generateCp!;
        }
        if (!TeaUtils.Client.isUnset(request.scopeType)) {
            body["ScopeType"] = request.scopeType!;
        }
        if (!TeaUtils.Client.isUnset(request.targetFormat)) {
            body["TargetFormat"] = request.targetFormat ?? "";
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
            "action": "GetOrgOrWebOpenDocContentTaskId",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/getOrgOrWebOpenDocContentTaskId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrgOrWebOpenDocContentTaskIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrgOrWebOpenDocContentTaskId(_ request: GetOrgOrWebOpenDocContentTaskIdRequest) async throws -> GetOrgOrWebOpenDocContentTaskIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetOrgOrWebOpenDocContentTaskIdHeaders = GetOrgOrWebOpenDocContentTaskIdHeaders([:])
        return try await getOrgOrWebOpenDocContentTaskIdWithOptions(request as! GetOrgOrWebOpenDocContentTaskIdRequest, headers as! GetOrgOrWebOpenDocContentTaskIdHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProcessDefinitionWithOptions(_ request: GetProcessDefinitionRequest, _ tmpHeader: GetProcessDefinitionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProcessDefinitionResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetProcessDefinitionShrinkHeaders = GetProcessDefinitionShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nameSpace)) {
            body["NameSpace"] = request.nameSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderNumber)) {
            body["OrderNumber"] = request.orderNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processInstanceId)) {
            body["ProcessInstanceId"] = request.processInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemType)) {
            body["SystemType"] = request.systemType ?? "";
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
            "action": "GetProcessDefinition",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getProcessDefinition",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProcessDefinitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProcessDefinition(_ request: GetProcessDefinitionRequest) async throws -> GetProcessDefinitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetProcessDefinitionHeaders = GetProcessDefinitionHeaders([:])
        return try await getProcessDefinitionWithOptions(request as! GetProcessDefinitionRequest, headers as! GetProcessDefinitionHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getRelatedWorkspacesWithOptions(_ tmpReq: GetRelatedWorkspacesRequest, _ tmpHeader: GetRelatedWorkspacesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRelatedWorkspacesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetRelatedWorkspacesShrinkRequest = GetRelatedWorkspacesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetRelatedWorkspacesShrinkHeaders = GetRelatedWorkspacesShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.includeRecent)) {
            body["IncludeRecent"] = request.includeRecent!;
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
            "action": "GetRelatedWorkspaces",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/getRelatedWorkspaces",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRelatedWorkspacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRelatedWorkspaces(_ request: GetRelatedWorkspacesRequest) async throws -> GetRelatedWorkspacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetRelatedWorkspacesHeaders = GetRelatedWorkspacesHeaders([:])
        return try await getRelatedWorkspacesWithOptions(request as! GetRelatedWorkspacesRequest, headers as! GetRelatedWorkspacesHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getRunningTasksWithOptions(_ request: GetRunningTasksRequest, _ tmpHeader: GetRunningTasksHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRunningTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetRunningTasksShrinkHeaders = GetRunningTasksShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processCodes)) {
            body["ProcessCodes"] = request.processCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processInstanceId)) {
            body["ProcessInstanceId"] = request.processInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "GetRunningTasks",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getRunningTasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRunningTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRunningTasks(_ request: GetRunningTasksRequest) async throws -> GetRunningTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetRunningTasksHeaders = GetRunningTasksHeaders([:])
        return try await getRunningTasksWithOptions(request as! GetRunningTasksRequest, headers as! GetRunningTasksHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScheduleWithOptions(_ tmpReq: GetScheduleRequest, _ tmpHeader: GetScheduleHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetScheduleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetScheduleShrinkRequest = GetScheduleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetScheduleShrinkHeaders = GetScheduleShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userIds)) {
            request.userIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIds, "UserIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdsShrink)) {
            body["UserIds"] = request.userIdsShrink ?? "";
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
            "action": "GetSchedule",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/getSchedule",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetScheduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSchedule(_ request: GetScheduleRequest) async throws -> GetScheduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetScheduleHeaders = GetScheduleHeaders([:])
        return try await getScheduleWithOptions(request as! GetScheduleRequest, headers as! GetScheduleHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getSheetContentJobIdWithOptions(_ tmpReq: GetSheetContentJobIdRequest, _ tmpHeader: GetSheetContentJobIdHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSheetContentJobIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetSheetContentJobIdShrinkRequest = GetSheetContentJobIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetSheetContentJobIdShrinkHeaders = GetSheetContentJobIdShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dentryUuid)) {
            body["DentryUuid"] = request.dentryUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exportType)) {
            body["ExportType"] = request.exportType ?? "";
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
            "action": "GetSheetContentJobId",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/getSheetContentJobId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSheetContentJobIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSheetContentJobId(_ request: GetSheetContentJobIdRequest) async throws -> GetSheetContentJobIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetSheetContentJobIdHeaders = GetSheetContentJobIdHeaders([:])
        return try await getSheetContentJobIdWithOptions(request as! GetSheetContentJobIdRequest, headers as! GetSheetContentJobIdHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getTaskCopiesWithOptions(_ request: GetTaskCopiesRequest, _ tmpHeader: GetTaskCopiesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTaskCopiesResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: GetTaskCopiesShrinkHeaders = GetTaskCopiesShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createFromTimeGMT)) {
            body["CreateFromTimeGMT"] = request.createFromTimeGMT!;
        }
        if (!TeaUtils.Client.isUnset(request.createToTimeGMT)) {
            body["CreateToTimeGMT"] = request.createToTimeGMT!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.processCodes)) {
            body["ProcessCodes"] = request.processCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "GetTaskCopies",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/getTaskCopies",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTaskCopiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskCopies(_ request: GetTaskCopiesRequest) async throws -> GetTaskCopiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetTaskCopiesHeaders = GetTaskCopiesHeaders([:])
        return try await getTaskCopiesWithOptions(request as! GetTaskCopiesRequest, headers as! GetTaskCopiesHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getTicketWithOptions(_ tmpReq: GetTicketRequest, _ tmpHeader: GetTicketHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTicketResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetTicketShrinkRequest = GetTicketShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetTicketShrinkHeaders = GetTicketShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openTeamId)) {
            body["OpenTeamId"] = request.openTeamId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openTicketId)) {
            body["OpenTicketId"] = request.openTicketId ?? "";
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
            "action": "GetTicket",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ticket/getTicket",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTicket(_ request: GetTicketRequest) async throws -> GetTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetTicketHeaders = GetTicketHeaders([:])
        return try await getTicketWithOptions(request as! GetTicketRequest, headers as! GetTicketHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTodoTaskWithOptions(_ tmpReq: GetTodoTaskRequest, _ tmpHeader: GetTodoTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTodoTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetTodoTaskShrinkRequest = GetTodoTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetTodoTaskShrinkHeaders = GetTodoTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
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
            "action": "GetTodoTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/getTodoTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTodoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTodoTask(_ request: GetTodoTaskRequest) async throws -> GetTodoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetTodoTaskHeaders = GetTodoTaskHeaders([:])
        return try await getTodoTaskWithOptions(request as! GetTodoTaskRequest, headers as! GetTodoTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getUserIdWithOptions(_ tmpReq: GetUserIdRequest, _ tmpHeader: GetUserIdHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetUserIdShrinkRequest = GetUserIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetUserIdShrinkHeaders = GetUserIdShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.unionId)) {
            body["UnionId"] = request.unionId ?? "";
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
            "action": "GetUserId",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/im/getUserId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserId(_ request: GetUserIdRequest) async throws -> GetUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUserIdHeaders = GetUserIdHeaders([:])
        return try await getUserIdWithOptions(request as! GetUserIdRequest, headers as! GetUserIdHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserIdByOrgIdAndStaffIdWithOptions(_ tmpReq: GetUserIdByOrgIdAndStaffIdRequest, _ tmpHeader: GetUserIdByOrgIdAndStaffIdHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserIdByOrgIdAndStaffIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetUserIdByOrgIdAndStaffIdShrinkRequest = GetUserIdByOrgIdAndStaffIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetUserIdByOrgIdAndStaffIdShrinkHeaders = GetUserIdByOrgIdAndStaffIdShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId!;
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
            "action": "GetUserIdByOrgIdAndStaffId",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/im/getUserIdByOrgIdAndStaffId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserIdByOrgIdAndStaffIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserIdByOrgIdAndStaffId(_ request: GetUserIdByOrgIdAndStaffIdRequest) async throws -> GetUserIdByOrgIdAndStaffIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUserIdByOrgIdAndStaffIdHeaders = GetUserIdByOrgIdAndStaffIdHeaders([:])
        return try await getUserIdByOrgIdAndStaffIdWithOptions(request as! GetUserIdByOrgIdAndStaffIdRequest, headers as! GetUserIdByOrgIdAndStaffIdHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserLatestPlanWithOptions(_ tmpReq: GetUserLatestPlanRequest, _ tmpHeader: GetUserLatestPlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserLatestPlanResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetUserLatestPlanShrinkRequest = GetUserLatestPlanShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetUserLatestPlanShrinkHeaders = GetUserLatestPlanShrinkHeaders([:])
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
            "action": "GetUserLatestPlan",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/aliding/v1/indepding/getUserLatestPlan",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserLatestPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserLatestPlan(_ request: GetUserLatestPlanRequest) async throws -> GetUserLatestPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUserLatestPlanHeaders = GetUserLatestPlanHeaders([:])
        return try await getUserLatestPlanWithOptions(request as! GetUserLatestPlanRequest, headers as! GetUserLatestPlanHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func initMultipartFileUploadWithOptions(_ tmpReq: InitMultipartFileUploadRequest, _ tmpHeader: InitMultipartFileUploadHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitMultipartFileUploadResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InitMultipartFileUploadShrinkRequest = InitMultipartFileUploadShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: InitMultipartFileUploadShrinkHeaders = InitMultipartFileUploadShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.parentDentryUuid)) {
            body["ParentDentryUuid"] = request.parentDentryUuid ?? "";
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
            "action": "InitMultipartFileUpload",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/initMultipartFileUpload",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitMultipartFileUploadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initMultipartFileUpload(_ request: InitMultipartFileUploadRequest) async throws -> InitMultipartFileUploadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InitMultipartFileUploadHeaders = InitMultipartFileUploadHeaders([:])
        return try await initMultipartFileUploadWithOptions(request as! InitMultipartFileUploadRequest, headers as! InitMultipartFileUploadHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func insertContentWithOptionsWithOptions(_ tmpReq: InsertContentWithOptionsRequest, _ tmpHeader: InsertContentWithOptionsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertContentWithOptionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsertContentWithOptionsShrinkRequest = InsertContentWithOptionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: InsertContentWithOptionsShrinkHeaders = InsertContentWithOptionsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.content)) {
            request.contentShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.content, "Content", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.path)) {
            request.pathShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.path, "Path", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentShrink)) {
            body["Content"] = request.contentShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentId)) {
            body["DocumentId"] = request.documentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.index)) {
            body["Index"] = request.index!;
        }
        if (!TeaUtils.Client.isUnset(request.pathShrink)) {
            body["Path"] = request.pathShrink ?? "";
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
            "action": "InsertContentWithOptions",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/insertContentWithOptions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertContentWithOptionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertContentWithOptions(_ request: InsertContentWithOptionsRequest) async throws -> InsertContentWithOptionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsertContentWithOptionsHeaders = InsertContentWithOptionsHeaders([:])
        return try await insertContentWithOptionsWithOptions(request as! InsertContentWithOptionsRequest, headers as! InsertContentWithOptionsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertDropDownListWithOptions(_ tmpReq: InsertDropDownListRequest, _ tmpHeader: InsertDropDownListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertDropDownListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsertDropDownListShrinkRequest = InsertDropDownListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: InsertDropDownListShrinkHeaders = InsertDropDownListShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.options)) {
            request.optionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.options, "Options", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.optionsShrink)) {
            body["Options"] = request.optionsShrink ?? "";
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
            "action": "InsertDropDownList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/insertDropDownList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertDropDownListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertDropDownList(_ request: InsertDropDownListRequest) async throws -> InsertDropDownListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsertDropDownListHeaders = InsertDropDownListHeaders([:])
        return try await insertDropDownListWithOptions(request as! InsertDropDownListRequest, headers as! InsertDropDownListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertMultiDimTableRecordWithOptions(_ tmpReq: InsertMultiDimTableRecordRequest, _ tmpHeader: InsertMultiDimTableRecordHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertMultiDimTableRecordResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsertMultiDimTableRecordShrinkRequest = InsertMultiDimTableRecordShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: InsertMultiDimTableRecordShrinkHeaders = InsertMultiDimTableRecordShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.records)) {
            request.recordsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.records, "Records", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordsShrink)) {
            body["Records"] = request.recordsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetIdOrName)) {
            body["SheetIdOrName"] = request.sheetIdOrName ?? "";
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
            "action": "InsertMultiDimTableRecord",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/insertMultiDimTableRecord",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertMultiDimTableRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertMultiDimTableRecord(_ request: InsertMultiDimTableRecordRequest) async throws -> InsertMultiDimTableRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsertMultiDimTableRecordHeaders = InsertMultiDimTableRecordHeaders([:])
        return try await insertMultiDimTableRecordWithOptions(request as! InsertMultiDimTableRecordRequest, headers as! InsertMultiDimTableRecordHeaders, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(tmpReq.phoneInviteeList)) {
            request.phoneInviteeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.phoneInviteeList, "phoneInviteeList", "json")
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
        if (!TeaUtils.Client.isUnset(request.phoneInviteeListShrink)) {
            body["phoneInviteeList"] = request.phoneInviteeListShrink ?? "";
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
    public func invokeAssistantWithOptions(_ request: InvokeAssistantRequest, _ headers: InvokeAssistantHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvokeAssistantResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assistantId)) {
            body["assistantId"] = request.assistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messages)) {
            body["messages"] = request.messages ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.originalAssistantId)) {
            body["originalAssistantId"] = request.originalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIdOfOriginalAssistantId)) {
            body["sourceIdOfOriginalAssistantId"] = request.sourceIdOfOriginalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypeOfOriginalAssistantId)) {
            body["sourceTypeOfOriginalAssistantId"] = request.sourceTypeOfOriginalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountId)) {
            realHeaders["accountId"] = TeaUtils.Client.toJSONString(headers.accountId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvokeAssistant",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/ai/v1/assistant/invokeAssistant",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvokeAssistantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeAssistant(_ request: InvokeAssistantRequest) async throws -> InvokeAssistantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvokeAssistantHeaders = InvokeAssistantHeaders([:])
        return try await invokeAssistantWithOptions(request as! InvokeAssistantRequest, headers as! InvokeAssistantHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeSkillWithOptions(_ tmpReq: InvokeSkillRequest, _ tmpHeader: InvokeSkillHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvokeSkillResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InvokeSkillShrinkRequest = InvokeSkillShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: InvokeSkillShrinkHeaders = InvokeSkillShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.params)) {
            request.paramsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.params, "Params", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.paramsShrink)) {
            body["Params"] = request.paramsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillId)) {
            body["SkillId"] = request.skillId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["Stream"] = request.stream!;
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
            "action": "InvokeSkill",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/ai/v1/skill/invoke",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvokeSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeSkill(_ request: InvokeSkillRequest) async throws -> InvokeSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvokeSkillHeaders = InvokeSkillHeaders([:])
        return try await invokeSkillWithOptions(request as! InvokeSkillRequest, headers as! InvokeSkillHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationWithOptions(_ request: ListApplicationRequest, _ tmpHeader: ListApplicationHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: ListApplicationShrinkHeaders = ListApplicationShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appFilter)) {
            body["AppFilter"] = request.appFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appNameSearchKeyword)) {
            body["AppNameSearchKeyword"] = request.appNameSearchKeyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            body["Token"] = request.token ?? "";
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
            "action": "ListApplication",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/listApplication",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplication(_ request: ListApplicationRequest) async throws -> ListApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListApplicationHeaders = ListApplicationHeaders([:])
        return try await listApplicationWithOptions(request as! ListApplicationRequest, headers as! ListApplicationHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func listDentriesWithOptions(_ tmpReq: ListDentriesRequest, _ tmpHeader: ListDentriesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDentriesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDentriesShrinkRequest = ListDentriesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ListDentriesShrinkHeaders = ListDentriesShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.order)) {
            body["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            body["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["ParentId"] = request.parentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceId)) {
            body["SpaceId"] = request.spaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withThumbnail)) {
            body["WithThumbnail"] = request.withThumbnail!;
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
            "action": "ListDentries",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/listDentries",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDentriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDentries(_ request: ListDentriesRequest) async throws -> ListDentriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListDentriesHeaders = ListDentriesHeaders([:])
        return try await listDentriesWithOptions(request as! ListDentriesRequest, headers as! ListDentriesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDriveSpacesWithOptions(_ tmpReq: ListDriveSpacesRequest, _ tmpHeader: ListDriveSpacesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDriveSpacesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDriveSpacesShrinkRequest = ListDriveSpacesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ListDriveSpacesShrinkHeaders = ListDriveSpacesShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.spaceType)) {
            body["SpaceType"] = request.spaceType ?? "";
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
            "action": "ListDriveSpaces",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/listDriveSpaces",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDriveSpacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDriveSpaces(_ request: ListDriveSpacesRequest) async throws -> ListDriveSpacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListDriveSpacesHeaders = ListDriveSpacesHeaders([:])
        return try await listDriveSpacesWithOptions(request as! ListDriveSpacesRequest, headers as! ListDriveSpacesHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func listFormRemarksWithOptions(_ tmpReq: ListFormRemarksRequest, _ tmpHeader: ListFormRemarksHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFormRemarksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListFormRemarksShrinkRequest = ListFormRemarksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ListFormRemarksShrinkHeaders = ListFormRemarksShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.formInstanceIdList)) {
            request.formInstanceIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.formInstanceIdList, "FormInstanceIdList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formInstanceIdListShrink)) {
            body["FormInstanceIdList"] = request.formInstanceIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "ListFormRemarks",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/listFormRemarks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFormRemarksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFormRemarks(_ request: ListFormRemarksRequest) async throws -> ListFormRemarksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListFormRemarksHeaders = ListFormRemarksHeaders([:])
        return try await listFormRemarksWithOptions(request as! ListFormRemarksRequest, headers as! ListFormRemarksHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMessageWithOptions(_ request: ListMessageRequest, _ headers: ListMessageHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMessageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assistantId)) {
            body["assistantId"] = request.assistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            body["order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalAssistantId)) {
            body["originalAssistantId"] = request.originalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runId)) {
            body["runId"] = request.runId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIdOfOriginalAssistantId)) {
            body["sourceIdOfOriginalAssistantId"] = request.sourceIdOfOriginalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypeOfOriginalAssistantId)) {
            body["sourceTypeOfOriginalAssistantId"] = request.sourceTypeOfOriginalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threadId)) {
            body["threadId"] = request.threadId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountId)) {
            realHeaders["accountId"] = TeaUtils.Client.toJSONString(headers.accountId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMessage",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/ai/v1/assistant/listMessage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMessage(_ request: ListMessageRequest) async throws -> ListMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListMessageHeaders = ListMessageHeaders([:])
        return try await listMessageWithOptions(request as! ListMessageRequest, headers as! ListMessageHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultiDimTableRecordsWithOptions(_ tmpReq: ListMultiDimTableRecordsRequest, _ tmpHeader: ListMultiDimTableRecordsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMultiDimTableRecordsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListMultiDimTableRecordsShrinkRequest = ListMultiDimTableRecordsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ListMultiDimTableRecordsShrinkHeaders = ListMultiDimTableRecordsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "Filter", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            body["Filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetIdOrName)) {
            body["SheetIdOrName"] = request.sheetIdOrName ?? "";
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
            "action": "ListMultiDimTableRecords",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/listMultiDimTableRecords",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMultiDimTableRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultiDimTableRecords(_ request: ListMultiDimTableRecordsRequest) async throws -> ListMultiDimTableRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListMultiDimTableRecordsHeaders = ListMultiDimTableRecordsHeaders([:])
        return try await listMultiDimTableRecordsWithOptions(request as! ListMultiDimTableRecordsRequest, headers as! ListMultiDimTableRecordsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNavigationByFormTypeWithOptions(_ request: ListNavigationByFormTypeRequest, _ tmpHeader: ListNavigationByFormTypeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNavigationByFormTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: ListNavigationByFormTypeShrinkHeaders = ListNavigationByFormTypeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formType)) {
            body["FormType"] = request.formType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "ListNavigationByFormType",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/listNavigationByFormType",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNavigationByFormTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNavigationByFormType(_ request: ListNavigationByFormTypeRequest) async throws -> ListNavigationByFormTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListNavigationByFormTypeHeaders = ListNavigationByFormTypeHeaders([:])
        return try await listNavigationByFormTypeWithOptions(request as! ListNavigationByFormTypeRequest, headers as! ListNavigationByFormTypeHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func listPermissionsWithOptions(_ tmpReq: ListPermissionsRequest, _ tmpHeader: ListPermissionsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPermissionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListPermissionsShrinkRequest = ListPermissionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ListPermissionsShrinkHeaders = ListPermissionsShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.dentryUuid)) {
            body["DentryUuid"] = request.dentryUuid ?? "";
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
            "action": "ListPermissions",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/listPermissions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPermissions(_ request: ListPermissionsRequest) async throws -> ListPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListPermissionsHeaders = ListPermissionsHeaders([:])
        return try await listPermissionsWithOptions(request as! ListPermissionsRequest, headers as! ListPermissionsHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func listSkillWithOptions(_ request: ListSkillRequest, _ tmpHeader: ListSkillHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSkillResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: ListSkillShrinkHeaders = ListSkillShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["groupId"] = request.groupId ?? "";
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
            "action": "ListSkill",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/ai/v1/skill/listSkill",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkill(_ request: ListSkillRequest) async throws -> ListSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListSkillHeaders = ListSkillHeaders([:])
        return try await listSkillWithOptions(request as! ListSkillRequest, headers as! ListSkillHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTableDataByFormInstanceIdTableIdWithOptions(_ request: ListTableDataByFormInstanceIdTableIdRequest, _ tmpHeader: ListTableDataByFormInstanceIdTableIdHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTableDataByFormInstanceIdTableIdResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: ListTableDataByFormInstanceIdTableIdShrinkHeaders = ListTableDataByFormInstanceIdTableIdShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formInstanceId)) {
            body["FormInstanceId"] = request.formInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableFieldId)) {
            body["TableFieldId"] = request.tableFieldId ?? "";
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
            "action": "ListTableDataByFormInstanceIdTableId",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/listTableDataByFormInstanceIdTableId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTableDataByFormInstanceIdTableIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTableDataByFormInstanceIdTableId(_ request: ListTableDataByFormInstanceIdTableIdRequest) async throws -> ListTableDataByFormInstanceIdTableIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListTableDataByFormInstanceIdTableIdHeaders = ListTableDataByFormInstanceIdTableIdHeaders([:])
        return try await listTableDataByFormInstanceIdTableIdWithOptions(request as! ListTableDataByFormInstanceIdTableIdRequest, headers as! ListTableDataByFormInstanceIdTableIdHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTeamsWithOptions(_ tmpReq: ListTeamsRequest, _ tmpHeader: ListTeamsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTeamsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTeamsShrinkRequest = ListTeamsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ListTeamsShrinkHeaders = ListTeamsShrinkHeaders([:])
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
            "action": "ListTeams",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v2/documents/listTeams",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTeamsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTeams(_ request: ListTeamsRequest) async throws -> ListTeamsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListTeamsHeaders = ListTeamsHeaders([:])
        return try await listTeamsWithOptions(request as! ListTeamsRequest, headers as! ListTeamsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTemplateWithOptions(_ tmpReq: ListTemplateRequest, _ tmpHeader: ListTemplateHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTemplateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTemplateShrinkRequest = ListTemplateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ListTemplateShrinkHeaders = ListTemplateShrinkHeaders([:])
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
            "action": "ListTemplate",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/listTemplate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTemplate(_ request: ListTemplateRequest) async throws -> ListTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListTemplateHeaders = ListTemplateHeaders([:])
        return try await listTemplateWithOptions(request as! ListTemplateRequest, headers as! ListTemplateHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTicketOperateRecordWithOptions(_ tmpReq: ListTicketOperateRecordRequest, _ tmpHeader: ListTicketOperateRecordHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTicketOperateRecordResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTicketOperateRecordShrinkRequest = ListTicketOperateRecordShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: ListTicketOperateRecordShrinkHeaders = ListTicketOperateRecordShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openTeamId)) {
            body["OpenTeamId"] = request.openTeamId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openTicketId)) {
            body["OpenTicketId"] = request.openTicketId ?? "";
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
            "action": "ListTicketOperateRecord",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ticket/listTicketOperateRecord",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTicketOperateRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTicketOperateRecord(_ request: ListTicketOperateRecordRequest) async throws -> ListTicketOperateRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListTicketOperateRecordHeaders = ListTicketOperateRecordHeaders([:])
        return try await listTicketOperateRecordWithOptions(request as! ListTicketOperateRecordRequest, headers as! ListTicketOperateRecordHeaders, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(tmpReq.cardInstances)) {
            request.cardInstancesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cardInstances, "CardInstances", "json")
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
        if (!TeaUtils.Client.isUnset(request.cardInstancesShrink)) {
            body["CardInstances"] = request.cardInstancesShrink ?? "";
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
    public func queryConferenceInfoByRoomCodeWithOptions(_ tmpReq: QueryConferenceInfoByRoomCodeRequest, _ tmpHeader: QueryConferenceInfoByRoomCodeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryConferenceInfoByRoomCodeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryConferenceInfoByRoomCodeShrinkRequest = QueryConferenceInfoByRoomCodeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryConferenceInfoByRoomCodeShrinkHeaders = QueryConferenceInfoByRoomCodeShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.roomCode)) {
            body["roomCode"] = request.roomCode ?? "";
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
            "action": "QueryConferenceInfoByRoomCode",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryConferenceInfoByRoomCode",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryConferenceInfoByRoomCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryConferenceInfoByRoomCode(_ request: QueryConferenceInfoByRoomCodeRequest) async throws -> QueryConferenceInfoByRoomCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryConferenceInfoByRoomCodeHeaders = QueryConferenceInfoByRoomCodeHeaders([:])
        return try await queryConferenceInfoByRoomCodeWithOptions(request as! QueryConferenceInfoByRoomCodeRequest, headers as! QueryConferenceInfoByRoomCodeHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func queryDentriesInfoWithOptions(_ tmpReq: QueryDentriesInfoRequest, _ tmpHeader: QueryDentriesInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDentriesInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryDentriesInfoShrinkRequest = QueryDentriesInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryDentriesInfoShrinkHeaders = QueryDentriesInfoShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.appIdsForAppProperties)) {
            request.appIdsForAppPropertiesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.appIdsForAppProperties, "AppIdsForAppProperties", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIdsForAppPropertiesShrink)) {
            body["AppIdsForAppProperties"] = request.appIdsForAppPropertiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dentryId)) {
            body["DentryId"] = request.dentryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceId)) {
            body["SpaceId"] = request.spaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unionId)) {
            body["UnionId"] = request.unionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withThumbnail)) {
            body["WithThumbnail"] = request.withThumbnail!;
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
            "action": "QueryDentriesInfo",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/queryDentriesInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDentriesInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDentriesInfo(_ request: QueryDentriesInfoRequest) async throws -> QueryDentriesInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryDentriesInfoHeaders = QueryDentriesInfoHeaders([:])
        return try await queryDentriesInfoWithOptions(request as! QueryDentriesInfoRequest, headers as! QueryDentriesInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func queryGroupLiveInfoWithOptions(_ tmpReq: QueryGroupLiveInfoRequest, _ tmpHeader: QueryGroupLiveInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryGroupLiveInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryGroupLiveInfoShrinkRequest = QueryGroupLiveInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryGroupLiveInfoShrinkHeaders = QueryGroupLiveInfoShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anchorUnionId)) {
            body["AnchorUnionId"] = request.anchorUnionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.liveUuid)) {
            body["LiveUuid"] = request.liveUuid ?? "";
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
            "action": "QueryGroupLiveInfo",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryGroupLiveInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryGroupLiveInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryGroupLiveInfo(_ request: QueryGroupLiveInfoRequest) async throws -> QueryGroupLiveInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryGroupLiveInfoHeaders = QueryGroupLiveInfoHeaders([:])
        return try await queryGroupLiveInfoWithOptions(request as! QueryGroupLiveInfoRequest, headers as! QueryGroupLiveInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func queryMinutesWithOptions(_ tmpReq: QueryMinutesRequest, _ tmpHeader: QueryMinutesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMinutesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryMinutesShrinkRequest = QueryMinutesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryMinutesShrinkHeaders = QueryMinutesShrinkHeaders([:])
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
            "action": "QueryMinutes",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryMinutes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMinutesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMinutes(_ request: QueryMinutesRequest) async throws -> QueryMinutesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryMinutesHeaders = QueryMinutesHeaders([:])
        return try await queryMinutesWithOptions(request as! QueryMinutesRequest, headers as! QueryMinutesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMinutesSummaryWithOptions(_ tmpReq: QueryMinutesSummaryRequest, _ tmpHeader: QueryMinutesSummaryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMinutesSummaryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryMinutesSummaryShrinkRequest = QueryMinutesSummaryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryMinutesSummaryShrinkHeaders = QueryMinutesSummaryShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.summaryTypeList)) {
            request.summaryTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.summaryTypeList, "summaryTypeList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conferenceId)) {
            body["conferenceId"] = request.conferenceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summaryTypeListShrink)) {
            body["summaryTypeList"] = request.summaryTypeListShrink ?? "";
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
            "action": "QueryMinutesSummary",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryMinutesSummary",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMinutesSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMinutesSummary(_ request: QueryMinutesSummaryRequest) async throws -> QueryMinutesSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryMinutesSummaryHeaders = QueryMinutesSummaryHeaders([:])
        return try await queryMinutesSummaryWithOptions(request as! QueryMinutesSummaryRequest, headers as! QueryMinutesSummaryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMinutesTextWithOptions(_ tmpReq: QueryMinutesTextRequest, _ tmpHeader: QueryMinutesTextHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMinutesTextResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryMinutesTextShrinkRequest = QueryMinutesTextShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryMinutesTextShrinkHeaders = QueryMinutesTextShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.direction)) {
            body["direction"] = request.direction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
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
            "action": "QueryMinutesText",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryMinutesText",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMinutesTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMinutesText(_ request: QueryMinutesTextRequest) async throws -> QueryMinutesTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryMinutesTextHeaders = QueryMinutesTextHeaders([:])
        return try await queryMinutesTextWithOptions(request as! QueryMinutesTextRequest, headers as! QueryMinutesTextHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func queryRecordMinutesUrlWithOptions(_ tmpReq: QueryRecordMinutesUrlRequest, _ tmpHeader: QueryRecordMinutesUrlHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecordMinutesUrlResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryRecordMinutesUrlShrinkRequest = QueryRecordMinutesUrlShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryRecordMinutesUrlShrinkHeaders = QueryRecordMinutesUrlShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conferenceId)) {
            body["ConferenceId"] = request.conferenceId ?? "";
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
            "action": "QueryRecordMinutesUrl",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryRecordMinutesUrl",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecordMinutesUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordMinutesUrl(_ request: QueryRecordMinutesUrlRequest) async throws -> QueryRecordMinutesUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryRecordMinutesUrlHeaders = QueryRecordMinutesUrlHeaders([:])
        return try await queryRecordMinutesUrlWithOptions(request as! QueryRecordMinutesUrlRequest, headers as! QueryRecordMinutesUrlHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryReportDetailWithOptions(_ tmpReq: QueryReportDetailRequest, _ tmpHeader: QueryReportDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryReportDetailResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryReportDetailShrinkRequest = QueryReportDetailShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryReportDetailShrinkHeaders = QueryReportDetailShrinkHeaders([:])
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
            "action": "QueryReportDetail",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/log/queryReportDetail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryReportDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryReportDetail(_ request: QueryReportDetailRequest) async throws -> QueryReportDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryReportDetailHeaders = QueryReportDetailHeaders([:])
        return try await queryReportDetailWithOptions(request as! QueryReportDetailRequest, headers as! QueryReportDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleConferenceId)) {
            body["scheduleConferenceId"] = request.scheduleConferenceId ?? "";
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
    public func queryScheduleConferenceInfoWithOptions(_ tmpReq: QueryScheduleConferenceInfoRequest, _ tmpHeader: QueryScheduleConferenceInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryScheduleConferenceInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryScheduleConferenceInfoShrinkRequest = QueryScheduleConferenceInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryScheduleConferenceInfoShrinkHeaders = QueryScheduleConferenceInfoShrinkHeaders([:])
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
            "action": "QueryScheduleConferenceInfo",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/queryScheduleConferenceInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryScheduleConferenceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryScheduleConferenceInfo(_ request: QueryScheduleConferenceInfoRequest) async throws -> QueryScheduleConferenceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryScheduleConferenceInfoHeaders = QueryScheduleConferenceInfoHeaders([:])
        return try await queryScheduleConferenceInfoWithOptions(request as! QueryScheduleConferenceInfoRequest, headers as! QueryScheduleConferenceInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func redirectTaskWithOptions(_ request: RedirectTaskRequest, _ tmpHeader: RedirectTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RedirectTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: RedirectTaskShrinkHeaders = RedirectTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.byManager)) {
            body["ByManager"] = request.byManager ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nowActionExecutorId)) {
            body["NowActionExecutorId"] = request.nowActionExecutorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processInstanceId)) {
            body["ProcessInstanceId"] = request.processInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId!;
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
            "action": "RedirectTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/redirectTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RedirectTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func redirectTask(_ request: RedirectTaskRequest) async throws -> RedirectTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RedirectTaskHeaders = RedirectTaskHeaders([:])
        return try await redirectTaskWithOptions(request as! RedirectTaskRequest, headers as! RedirectTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func respondEventWithOptions(_ tmpReq: RespondEventRequest, _ tmpHeader: RespondEventHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RespondEventResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RespondEventShrinkRequest = RespondEventShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: RespondEventShrinkHeaders = RespondEventShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calendarId)) {
            body["CalendarId"] = request.calendarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            body["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.responseStatus)) {
            body["ResponseStatus"] = request.responseStatus ?? "";
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
            "action": "RespondEvent",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/calendar/respondEvent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RespondEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func respondEvent(_ request: RespondEventRequest) async throws -> RespondEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RespondEventHeaders = RespondEventHeaders([:])
        return try await respondEventWithOptions(request as! RespondEventRequest, headers as! RespondEventHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retrieveRunWithOptions(_ request: RetrieveRunRequest, _ headers: RetrieveRunHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RetrieveRunResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assistantId)) {
            body["assistantId"] = request.assistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalAssistantId)) {
            body["originalAssistantId"] = request.originalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runId)) {
            body["runId"] = request.runId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIdOfOriginalAssistantId)) {
            body["sourceIdOfOriginalAssistantId"] = request.sourceIdOfOriginalAssistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypeOfOriginalAssistantId)) {
            body["sourceTypeOfOriginalAssistantId"] = request.sourceTypeOfOriginalAssistantId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountId)) {
            realHeaders["accountId"] = TeaUtils.Client.toJSONString(headers.accountId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RetrieveRun",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/ai/v1/assistant/retrieveRun",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetrieveRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retrieveRun(_ request: RetrieveRunRequest) async throws -> RetrieveRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RetrieveRunHeaders = RetrieveRunHeaders([:])
        return try await retrieveRunWithOptions(request as! RetrieveRunRequest, headers as! RetrieveRunHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func saveFormDataWithOptions(_ request: SaveFormDataRequest, _ tmpHeader: SaveFormDataHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveFormDataResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: SaveFormDataShrinkHeaders = SaveFormDataShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formDataJson)) {
            body["FormDataJson"] = request.formDataJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "SaveFormData",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/saveFormData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveFormDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveFormData(_ request: SaveFormDataRequest) async throws -> SaveFormDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SaveFormDataHeaders = SaveFormDataHeaders([:])
        return try await saveFormDataWithOptions(request as! SaveFormDataRequest, headers as! SaveFormDataHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveFormRemarkWithOptions(_ request: SaveFormRemarkRequest, _ tmpHeader: SaveFormRemarkHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveFormRemarkResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: SaveFormRemarkShrinkHeaders = SaveFormRemarkShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.atUserId)) {
            body["AtUserId"] = request.atUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formInstanceId)) {
            body["FormInstanceId"] = request.formInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replyId)) {
            body["ReplyId"] = request.replyId!;
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "SaveFormRemark",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/saveFormRemark",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveFormRemarkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveFormRemark(_ request: SaveFormRemarkRequest) async throws -> SaveFormRemarkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SaveFormRemarkHeaders = SaveFormRemarkHeaders([:])
        return try await saveFormRemarkWithOptions(request as! SaveFormRemarkRequest, headers as! SaveFormRemarkHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchEmployeeFieldValuesWithOptions(_ request: SearchEmployeeFieldValuesRequest, _ tmpHeader: SearchEmployeeFieldValuesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchEmployeeFieldValuesResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: SearchEmployeeFieldValuesShrinkHeaders = SearchEmployeeFieldValuesShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createFromTimeGMT)) {
            body["CreateFromTimeGMT"] = request.createFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createToTimeGMT)) {
            body["CreateToTimeGMT"] = request.createToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedFromTimeGMT)) {
            body["ModifiedFromTimeGMT"] = request.modifiedFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedToTimeGMT)) {
            body["ModifiedToTimeGMT"] = request.modifiedToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originatorId)) {
            body["OriginatorId"] = request.originatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchFieldJson)) {
            body["SearchFieldJson"] = request.searchFieldJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetFieldJson)) {
            body["TargetFieldJson"] = request.targetFieldJson ?? "";
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
            "action": "SearchEmployeeFieldValues",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/searchEmployeeFieldValues",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchEmployeeFieldValuesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchEmployeeFieldValues(_ request: SearchEmployeeFieldValuesRequest) async throws -> SearchEmployeeFieldValuesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SearchEmployeeFieldValuesHeaders = SearchEmployeeFieldValuesHeaders([:])
        return try await searchEmployeeFieldValuesWithOptions(request as! SearchEmployeeFieldValuesRequest, headers as! SearchEmployeeFieldValuesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchFormDataIdListWithOptions(_ request: SearchFormDataIdListRequest, _ tmpHeader: SearchFormDataIdListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchFormDataIdListResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: SearchFormDataIdListShrinkHeaders = SearchFormDataIdListShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createFromTimeGMT)) {
            body["CreateFromTimeGMT"] = request.createFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createToTimeGMT)) {
            body["CreateToTimeGMT"] = request.createToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedFromTimeGMT)) {
            body["ModifiedFromTimeGMT"] = request.modifiedFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedToTimeGMT)) {
            body["ModifiedToTimeGMT"] = request.modifiedToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originatorId)) {
            body["OriginatorId"] = request.originatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchFieldJson)) {
            body["SearchFieldJson"] = request.searchFieldJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "SearchFormDataIdList",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/searchFormDataIdList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchFormDataIdListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchFormDataIdList(_ request: SearchFormDataIdListRequest) async throws -> SearchFormDataIdListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SearchFormDataIdListHeaders = SearchFormDataIdListHeaders([:])
        return try await searchFormDataIdListWithOptions(request as! SearchFormDataIdListRequest, headers as! SearchFormDataIdListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchFormDataSecondGenerationWithOptions(_ request: SearchFormDataSecondGenerationRequest, _ tmpHeader: SearchFormDataSecondGenerationHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchFormDataSecondGenerationResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: SearchFormDataSecondGenerationShrinkHeaders = SearchFormDataSecondGenerationShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createFromTimeGMT)) {
            body["CreateFromTimeGMT"] = request.createFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createToTimeGMT)) {
            body["CreateToTimeGMT"] = request.createToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedFromTimeGMT)) {
            body["ModifiedFromTimeGMT"] = request.modifiedFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedToTimeGMT)) {
            body["ModifiedToTimeGMT"] = request.modifiedToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderConfigJson)) {
            body["OrderConfigJson"] = request.orderConfigJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originatorId)) {
            body["OriginatorId"] = request.originatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchCondition)) {
            body["SearchCondition"] = request.searchCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "SearchFormDataSecondGeneration",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/searchFormDataSecondGeneration",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchFormDataSecondGenerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchFormDataSecondGeneration(_ request: SearchFormDataSecondGenerationRequest) async throws -> SearchFormDataSecondGenerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SearchFormDataSecondGenerationHeaders = SearchFormDataSecondGenerationHeaders([:])
        return try await searchFormDataSecondGenerationWithOptions(request as! SearchFormDataSecondGenerationRequest, headers as! SearchFormDataSecondGenerationHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchFormDataSecondGenerationNoTableFieldWithOptions(_ request: SearchFormDataSecondGenerationNoTableFieldRequest, _ tmpHeader: SearchFormDataSecondGenerationNoTableFieldHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchFormDataSecondGenerationNoTableFieldResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: SearchFormDataSecondGenerationNoTableFieldShrinkHeaders = SearchFormDataSecondGenerationNoTableFieldShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createFromTimeGMT)) {
            body["CreateFromTimeGMT"] = request.createFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createToTimeGMT)) {
            body["CreateToTimeGMT"] = request.createToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedFromTimeGMT)) {
            body["ModifiedFromTimeGMT"] = request.modifiedFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedToTimeGMT)) {
            body["ModifiedToTimeGMT"] = request.modifiedToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderConfigJson)) {
            body["OrderConfigJson"] = request.orderConfigJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originatorId)) {
            body["OriginatorId"] = request.originatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchCondition)) {
            body["SearchCondition"] = request.searchCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "SearchFormDataSecondGenerationNoTableField",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/searchFormDataSecondGenerationNoTableField",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchFormDataSecondGenerationNoTableFieldResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchFormDataSecondGenerationNoTableField(_ request: SearchFormDataSecondGenerationNoTableFieldRequest) async throws -> SearchFormDataSecondGenerationNoTableFieldResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SearchFormDataSecondGenerationNoTableFieldHeaders = SearchFormDataSecondGenerationNoTableFieldHeaders([:])
        return try await searchFormDataSecondGenerationNoTableFieldWithOptions(request as! SearchFormDataSecondGenerationNoTableFieldRequest, headers as! SearchFormDataSecondGenerationNoTableFieldHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchFormDatasWithOptions(_ request: SearchFormDatasRequest, _ tmpHeader: SearchFormDatasHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchFormDatasResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: SearchFormDatasShrinkHeaders = SearchFormDatasShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createFromTimeGMT)) {
            body["CreateFromTimeGMT"] = request.createFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createToTimeGMT)) {
            body["CreateToTimeGMT"] = request.createToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.dynamicOrder)) {
            body["DynamicOrder"] = request.dynamicOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedFromTimeGMT)) {
            body["ModifiedFromTimeGMT"] = request.modifiedFromTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedToTimeGMT)) {
            body["ModifiedToTimeGMT"] = request.modifiedToTimeGMT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originatorId)) {
            body["OriginatorId"] = request.originatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchFieldJson)) {
            body["SearchFieldJson"] = request.searchFieldJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "SearchFormDatas",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/searchFormDatas",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchFormDatasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchFormDatas(_ request: SearchFormDatasRequest) async throws -> SearchFormDatasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SearchFormDatasHeaders = SearchFormDatasHeaders([:])
        return try await searchFormDatasWithOptions(request as! SearchFormDatasRequest, headers as! SearchFormDatasHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchInnerGroupsWithOptions(_ request: SearchInnerGroupsRequest, _ tmpHeader: SearchInnerGroupsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchInnerGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: SearchInnerGroupsShrinkHeaders = SearchInnerGroupsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            body["SearchKey"] = request.searchKey ?? "";
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
            "action": "SearchInnerGroups",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/im/searchInnerGroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchInnerGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchInnerGroups(_ request: SearchInnerGroupsRequest) async throws -> SearchInnerGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SearchInnerGroupsHeaders = SearchInnerGroupsHeaders([:])
        return try await searchInnerGroupsWithOptions(request as! SearchInnerGroupsRequest, headers as! SearchInnerGroupsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendBannerWithOptions(_ tmpReq: SendBannerRequest, _ tmpHeader: SendBannerHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendBannerResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendBannerShrinkRequest = SendBannerShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: SendBannerShrinkHeaders = SendBannerShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.content)) {
            request.contentShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.content, "Content", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentShrink)) {
            body["Content"] = request.contentShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
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
            "action": "SendBanner",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/watt/sendBanner",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendBannerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendBanner(_ request: SendBannerRequest) async throws -> SendBannerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SendBannerHeaders = SendBannerHeaders([:])
        return try await sendBannerWithOptions(request as! SendBannerRequest, headers as! SendBannerHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendPopupWithOptions(_ tmpReq: SendPopupRequest, _ tmpHeader: SendPopupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendPopupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendPopupShrinkRequest = SendPopupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: SendPopupShrinkHeaders = SendPopupShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.content)) {
            request.contentShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.content, "Content", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentShrink)) {
            body["Content"] = request.contentShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
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
            "action": "SendPopup",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/watt/sendPopup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendPopupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendPopup(_ request: SendPopupRequest) async throws -> SendPopupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SendPopupHeaders = SendPopupHeaders([:])
        return try await sendPopupWithOptions(request as! SendPopupRequest, headers as! SendPopupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendSearchShadeWithOptions(_ tmpReq: SendSearchShadeRequest, _ tmpHeader: SendSearchShadeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendSearchShadeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendSearchShadeShrinkRequest = SendSearchShadeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: SendSearchShadeShrinkHeaders = SendSearchShadeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.content)) {
            request.contentShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.content, "Content", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentShrink)) {
            body["Content"] = request.contentShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
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
            "action": "SendSearchShade",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/watt/sendSearchShade",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendSearchShadeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendSearchShade(_ request: SendSearchShadeRequest) async throws -> SendSearchShadeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SendSearchShadeHeaders = SendSearchShadeHeaders([:])
        return try await sendSearchShadeWithOptions(request as! SendSearchShadeRequest, headers as! SendSearchShadeHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func setConferenceHostsWithOptions(_ tmpReq: SetConferenceHostsRequest, _ tmpHeader: SetConferenceHostsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetConferenceHostsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetConferenceHostsShrinkRequest = SetConferenceHostsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: SetConferenceHostsShrinkHeaders = SetConferenceHostsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userIds)) {
            request.userIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIds, "UserIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            body["OperationType"] = request.operationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdsShrink)) {
            body["UserIds"] = request.userIdsShrink ?? "";
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
            "action": "SetConferenceHosts",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/setConferenceHosts",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetConferenceHostsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setConferenceHosts(_ request: SetConferenceHostsRequest) async throws -> SetConferenceHostsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SetConferenceHostsHeaders = SetConferenceHostsHeaders([:])
        return try await setConferenceHostsWithOptions(request as! SetConferenceHostsRequest, headers as! SetConferenceHostsHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func startInstanceWithOptions(_ request: StartInstanceRequest, _ tmpHeader: StartInstanceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: StartInstanceShrinkHeaders = StartInstanceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.departmentId)) {
            body["DepartmentId"] = request.departmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formDataJson)) {
            body["FormDataJson"] = request.formDataJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formUuid)) {
            body["FormUuid"] = request.formUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processCode)) {
            body["ProcessCode"] = request.processCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processData)) {
            body["ProcessData"] = request.processData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "StartInstance",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/startInstance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startInstance(_ request: StartInstanceRequest) async throws -> StartInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StartInstanceHeaders = StartInstanceHeaders([:])
        return try await startInstanceWithOptions(request as! StartInstanceRequest, headers as! StartInstanceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startMinutesWithOptions(_ tmpReq: StartMinutesRequest, _ tmpHeader: StartMinutesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartMinutesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: StartMinutesShrinkRequest = StartMinutesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: StartMinutesShrinkHeaders = StartMinutesShrinkHeaders([:])
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
        if (!TeaUtils.Client.isUnset(request.ownerUserId)) {
            body["ownerUserId"] = request.ownerUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordAudio)) {
            body["recordAudio"] = request.recordAudio!;
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
            "action": "StartMinutes",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/startMinutes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartMinutesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startMinutes(_ request: StartMinutesRequest) async throws -> StartMinutesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StartMinutesHeaders = StartMinutesHeaders([:])
        return try await startMinutesWithOptions(request as! StartMinutesRequest, headers as! StartMinutesHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func stopMinutesWithOptions(_ tmpReq: StopMinutesRequest, _ tmpHeader: StopMinutesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopMinutesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: StopMinutesShrinkRequest = StopMinutesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: StopMinutesShrinkHeaders = StopMinutesShrinkHeaders([:])
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
            "action": "StopMinutes",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/stopMinutes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopMinutesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMinutes(_ request: StopMinutesRequest) async throws -> StopMinutesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StopMinutesHeaders = StopMinutesHeaders([:])
        return try await stopMinutesWithOptions(request as! StopMinutesRequest, headers as! StopMinutesHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func subscribeEventWithOptions(_ tmpReq: SubscribeEventRequest, _ tmpHeader: SubscribeEventHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubscribeEventResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubscribeEventShrinkRequest = SubscribeEventShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: SubscribeEventShrinkHeaders = SubscribeEventShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scopeId)) {
            body["ScopeId"] = request.scopeId ?? "";
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
            "action": "SubscribeEvent",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/subscribeEvent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubscribeEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func subscribeEvent(_ request: SubscribeEventRequest) async throws -> SubscribeEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SubscribeEventHeaders = SubscribeEventHeaders([:])
        return try await subscribeEventWithOptions(request as! SubscribeEventRequest, headers as! SubscribeEventHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchMainOrgWithOptions(_ tmpReq: SwitchMainOrgRequest, _ tmpHeader: SwitchMainOrgHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchMainOrgResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SwitchMainOrgShrinkRequest = SwitchMainOrgShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: SwitchMainOrgShrinkHeaders = SwitchMainOrgShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.targetOrgId)) {
            body["TargetOrgId"] = request.targetOrgId!;
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
            "action": "SwitchMainOrg",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/aliding/v1/user/switchMainOrg",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchMainOrgResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchMainOrg(_ request: SwitchMainOrgRequest) async throws -> SwitchMainOrgResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SwitchMainOrgHeaders = SwitchMainOrgHeaders([:])
        return try await switchMainOrgWithOptions(request as! SwitchMainOrgRequest, headers as! SwitchMainOrgHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncDingTypeWithOptions(_ tmpReq: SyncDingTypeRequest, _ tmpHeader: SyncDingTypeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncDingTypeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SyncDingTypeShrinkRequest = SyncDingTypeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: SyncDingTypeShrinkHeaders = SyncDingTypeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dingType)) {
            body["DingType"] = request.dingType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isDimission)) {
            body["IsDimission"] = request.isDimission ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workNo)) {
            body["WorkNo"] = request.workNo ?? "";
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
            "action": "SyncDingType",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/aliding/v1/indepding/syncDingType",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncDingTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncDingType(_ request: SyncDingTypeRequest) async throws -> SyncDingTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SyncDingTypeHeaders = SyncDingTypeHeaders([:])
        return try await syncDingTypeWithOptions(request as! SyncDingTypeRequest, headers as! SyncDingTypeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func terminateInstanceWithOptions(_ request: TerminateInstanceRequest, _ tmpHeader: TerminateInstanceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TerminateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: TerminateInstanceShrinkHeaders = TerminateInstanceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processInstanceId)) {
            body["ProcessInstanceId"] = request.processInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "TerminateInstance",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/terminateInstance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TerminateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func terminateInstance(_ request: TerminateInstanceRequest) async throws -> TerminateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TerminateInstanceHeaders = TerminateInstanceHeaders([:])
        return try await terminateInstanceWithOptions(request as! TerminateInstanceRequest, headers as! TerminateInstanceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferTicketWithOptions(_ tmpReq: TransferTicketRequest, _ tmpHeader: TransferTicketHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TransferTicketResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TransferTicketShrinkRequest = TransferTicketShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: TransferTicketShrinkHeaders = TransferTicketShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notify)) {
            request.notifyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notify, "Notify", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.processorUserIds)) {
            request.processorUserIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.processorUserIds, "ProcessorUserIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ticketMemo)) {
            request.ticketMemoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ticketMemo, "TicketMemo", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.notifyShrink)) {
            body["Notify"] = request.notifyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openTeamId)) {
            body["OpenTeamId"] = request.openTeamId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openTicketId)) {
            body["OpenTicketId"] = request.openTicketId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processorUserIdsShrink)) {
            body["ProcessorUserIds"] = request.processorUserIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ticketMemoShrink)) {
            body["TicketMemo"] = request.ticketMemoShrink ?? "";
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
            "action": "TransferTicket",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ticket/transferTicket",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransferTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferTicket(_ request: TransferTicketRequest) async throws -> TransferTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TransferTicketHeaders = TransferTicketHeaders([:])
        return try await transferTicketWithOptions(request as! TransferTicketRequest, headers as! TransferTicketHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func unsubscribeEventWithOptions(_ tmpReq: UnsubscribeEventRequest, _ tmpHeader: UnsubscribeEventHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnsubscribeEventResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UnsubscribeEventShrinkRequest = UnsubscribeEventShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UnsubscribeEventShrinkHeaders = UnsubscribeEventShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scopeId)) {
            body["ScopeId"] = request.scopeId ?? "";
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
            "action": "UnsubscribeEvent",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/unsubscribeEvent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnsubscribeEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unsubscribeEvent(_ request: UnsubscribeEventRequest) async throws -> UnsubscribeEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UnsubscribeEventHeaders = UnsubscribeEventHeaders([:])
        return try await unsubscribeEventWithOptions(request as! UnsubscribeEventRequest, headers as! UnsubscribeEventHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlidingAssistantWithOptions(_ tmpReq: UpdateAlidingAssistantRequest, _ tmpHeader: UpdateAlidingAssistantHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAlidingAssistantResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAlidingAssistantShrinkRequest = UpdateAlidingAssistantShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateAlidingAssistantShrinkHeaders = UpdateAlidingAssistantShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ext)) {
            request.extShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ext, "Ext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.feature)) {
            request.featureShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.feature, "Feature", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.recommendPrompts)) {
            request.recommendPromptsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.recommendPrompts, "RecommendPrompts", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assistantId)) {
            body["AssistantId"] = request.assistantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extShrink)) {
            body["Ext"] = request.extShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fallbackContent)) {
            body["FallbackContent"] = request.fallbackContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureShrink)) {
            body["Feature"] = request.featureShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.icon)) {
            body["Icon"] = request.icon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instructions)) {
            body["Instructions"] = request.instructions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recommendPromptsShrink)) {
            body["RecommendPrompts"] = request.recommendPromptsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.welcomeContent)) {
            body["WelcomeContent"] = request.welcomeContent ?? "";
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
            "action": "UpdateAlidingAssistant",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/aiagent/updateAlidingAssistant",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAlidingAssistantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlidingAssistant(_ request: UpdateAlidingAssistantRequest) async throws -> UpdateAlidingAssistantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateAlidingAssistantHeaders = UpdateAlidingAssistantHeaders([:])
        return try await updateAlidingAssistantWithOptions(request as! UpdateAlidingAssistantRequest, headers as! UpdateAlidingAssistantHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConvExtensionWithOptions(_ tmpReq: UpdateConvExtensionRequest, _ tmpHeader: UpdateConvExtensionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConvExtensionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateConvExtensionShrinkRequest = UpdateConvExtensionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateConvExtensionShrinkHeaders = UpdateConvExtensionShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.staffIdList)) {
            request.staffIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.staffIdList, "StaffIdList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobileUrl)) {
            body["MobileUrl"] = request.mobileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pcUrl)) {
            body["PcUrl"] = request.pcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.staffIdListShrink)) {
            body["StaffIdList"] = request.staffIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemUid)) {
            body["SystemUid"] = request.systemUid ?? "";
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
            "action": "UpdateConvExtension",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/conversation/updateConvExtension",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConvExtensionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConvExtension(_ request: UpdateConvExtensionRequest) async throws -> UpdateConvExtensionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateConvExtensionHeaders = UpdateConvExtensionHeaders([:])
        return try await updateConvExtensionWithOptions(request as! UpdateConvExtensionRequest, headers as! UpdateConvExtensionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFormDataWithOptions(_ request: UpdateFormDataRequest, _ tmpHeader: UpdateFormDataHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFormDataResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: UpdateFormDataShrinkHeaders = UpdateFormDataShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formInstanceId)) {
            body["FormInstanceId"] = request.formInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateFormDataJson)) {
            body["UpdateFormDataJson"] = request.updateFormDataJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useLatestVersion)) {
            body["UseLatestVersion"] = request.useLatestVersion!;
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
            "action": "UpdateFormData",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/updateFormData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFormDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFormData(_ request: UpdateFormDataRequest) async throws -> UpdateFormDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateFormDataHeaders = UpdateFormDataHeaders([:])
        return try await updateFormDataWithOptions(request as! UpdateFormDataRequest, headers as! UpdateFormDataHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceWithOptions(_ request: UpdateInstanceRequest, _ tmpHeader: UpdateInstanceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: UpdateInstanceShrinkHeaders = UpdateInstanceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processInstanceId)) {
            body["ProcessInstanceId"] = request.processInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateFormDataJson)) {
            body["UpdateFormDataJson"] = request.updateFormDataJson ?? "";
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
            "action": "UpdateInstance",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/updateInstance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstance(_ request: UpdateInstanceRequest) async throws -> UpdateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateInstanceHeaders = UpdateInstanceHeaders([:])
        return try await updateInstanceWithOptions(request as! UpdateInstanceRequest, headers as! UpdateInstanceHeaders, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(tmpReq.reservationAuthority)) {
            request.reservationAuthorityShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.reservationAuthority, "ReservationAuthority", "json")
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
        if (!TeaUtils.Client.isUnset(request.enableCycleReservation)) {
            body["EnableCycleReservation"] = request.enableCycleReservation!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.isvRoomId)) {
            body["IsvRoomId"] = request.isvRoomId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reservationAuthorityShrink)) {
            body["ReservationAuthority"] = request.reservationAuthorityShrink ?? "";
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
    public func updateMultiDimTableWithOptions(_ tmpReq: UpdateMultiDimTableRequest, _ tmpHeader: UpdateMultiDimTableHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMultiDimTableResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateMultiDimTableShrinkRequest = UpdateMultiDimTableShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateMultiDimTableShrinkHeaders = UpdateMultiDimTableShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetIdOrName)) {
            body["SheetIdOrName"] = request.sheetIdOrName ?? "";
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
            "action": "UpdateMultiDimTable",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/updateMultiDimTable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMultiDimTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMultiDimTable(_ request: UpdateMultiDimTableRequest) async throws -> UpdateMultiDimTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateMultiDimTableHeaders = UpdateMultiDimTableHeaders([:])
        return try await updateMultiDimTableWithOptions(request as! UpdateMultiDimTableRequest, headers as! UpdateMultiDimTableHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMultiDimTableFieldWithOptions(_ tmpReq: UpdateMultiDimTableFieldRequest, _ tmpHeader: UpdateMultiDimTableFieldHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMultiDimTableFieldResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateMultiDimTableFieldShrinkRequest = UpdateMultiDimTableFieldShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateMultiDimTableFieldShrinkHeaders = UpdateMultiDimTableFieldShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.property)) {
            request.propertyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.property, "Property", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fieldIdOrName)) {
            body["FieldIdOrName"] = request.fieldIdOrName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.propertyShrink)) {
            body["Property"] = request.propertyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetIdOrName)) {
            body["SheetIdOrName"] = request.sheetIdOrName ?? "";
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
            "action": "UpdateMultiDimTableField",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/updateMultiDimTableField",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMultiDimTableFieldResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMultiDimTableField(_ request: UpdateMultiDimTableFieldRequest) async throws -> UpdateMultiDimTableFieldResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateMultiDimTableFieldHeaders = UpdateMultiDimTableFieldHeaders([:])
        return try await updateMultiDimTableFieldWithOptions(request as! UpdateMultiDimTableFieldRequest, headers as! UpdateMultiDimTableFieldHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMultiDimTableRecordsWithOptions(_ tmpReq: UpdateMultiDimTableRecordsRequest, _ tmpHeader: UpdateMultiDimTableRecordsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMultiDimTableRecordsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateMultiDimTableRecordsShrinkRequest = UpdateMultiDimTableRecordsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateMultiDimTableRecordsShrinkHeaders = UpdateMultiDimTableRecordsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.recordIds)) {
            request.recordIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.recordIds, "RecordIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseId)) {
            body["BaseId"] = request.baseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordIdsShrink)) {
            body["RecordIds"] = request.recordIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetIdOrName)) {
            body["SheetIdOrName"] = request.sheetIdOrName ?? "";
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
            "action": "UpdateMultiDimTableRecords",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/table/updateMultiDimTableRecords",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMultiDimTableRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMultiDimTableRecords(_ request: UpdateMultiDimTableRecordsRequest) async throws -> UpdateMultiDimTableRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateMultiDimTableRecordsHeaders = UpdateMultiDimTableRecordsHeaders([:])
        return try await updateMultiDimTableRecordsWithOptions(request as! UpdateMultiDimTableRecordsRequest, headers as! UpdateMultiDimTableRecordsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePermissionWithOptions(_ tmpReq: UpdatePermissionRequest, _ tmpHeader: UpdatePermissionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePermissionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdatePermissionShrinkRequest = UpdatePermissionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdatePermissionShrinkHeaders = UpdatePermissionShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.option)) {
            request.optionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.option, "Option", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dentryUuid)) {
            body["DentryUuid"] = request.dentryUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionShrink)) {
            body["Option"] = request.optionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            body["RoleId"] = request.roleId ?? "";
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
            "action": "UpdatePermission",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/updatePermission",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePermission(_ request: UpdatePermissionRequest) async throws -> UpdatePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdatePermissionHeaders = UpdatePermissionHeaders([:])
        return try await updatePermissionWithOptions(request as! UpdatePermissionRequest, headers as! UpdatePermissionHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func updateScheduleConfSettingsWithOptions(_ tmpReq: UpdateScheduleConfSettingsRequest, _ tmpHeader: UpdateScheduleConfSettingsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateScheduleConfSettingsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateScheduleConfSettingsShrinkRequest = UpdateScheduleConfSettingsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateScheduleConfSettingsShrinkHeaders = UpdateScheduleConfSettingsShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.scheduleConfSettingModel)) {
            request.scheduleConfSettingModelShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scheduleConfSettingModel, "ScheduleConfSettingModel", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scheduleConfSettingModelShrink)) {
            body["ScheduleConfSettingModel"] = request.scheduleConfSettingModelShrink ?? "";
        }
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
            "action": "UpdateScheduleConfSettings",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/updateScheduleConfSettings",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateScheduleConfSettingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScheduleConfSettings(_ request: UpdateScheduleConfSettingsRequest) async throws -> UpdateScheduleConfSettingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateScheduleConfSettingsHeaders = UpdateScheduleConfSettingsHeaders([:])
        return try await updateScheduleConfSettingsWithOptions(request as! UpdateScheduleConfSettingsRequest, headers as! UpdateScheduleConfSettingsHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func updateStatusWithOptions(_ tmpReq: UpdateStatusRequest, _ tmpHeader: UpdateStatusHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateStatusResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateStatusShrinkRequest = UpdateStatusShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateStatusShrinkHeaders = UpdateStatusShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.errorLines)) {
            request.errorLinesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.errorLines, "ErrorLines", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorLinesShrink)) {
            body["ErrorLines"] = request.errorLinesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.importSequence)) {
            body["ImportSequence"] = request.importSequence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemToken)) {
            body["SystemToken"] = request.systemToken ?? "";
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
            "action": "UpdateStatus",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/yida/updateStatus",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStatus(_ request: UpdateStatusRequest) async throws -> UpdateStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateStatusHeaders = UpdateStatusHeaders([:])
        return try await updateStatusWithOptions(request as! UpdateStatusRequest, headers as! UpdateStatusHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func updateUserAvatarWithOptions(_ request: UpdateUserAvatarRequest, _ tmpHeader: UpdateUserAvatarHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserAvatarResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: UpdateUserAvatarShrinkHeaders = UpdateUserAvatarShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.avatarMediaId)) {
            body["AvatarMediaId"] = request.avatarMediaId ?? "";
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
            "action": "UpdateUserAvatar",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/contact/updateUserAvatar",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserAvatarResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserAvatar(_ request: UpdateUserAvatarRequest) async throws -> UpdateUserAvatarResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateUserAvatarHeaders = UpdateUserAvatarHeaders([:])
        return try await updateUserAvatarWithOptions(request as! UpdateUserAvatarRequest, headers as! UpdateUserAvatarHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVideoConferenceSettingWithOptions(_ tmpReq: UpdateVideoConferenceSettingRequest, _ tmpHeader: UpdateVideoConferenceSettingHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateVideoConferenceSettingResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateVideoConferenceSettingShrinkRequest = UpdateVideoConferenceSettingShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateVideoConferenceSettingShrinkHeaders = UpdateVideoConferenceSettingShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowUnmuteSelf)) {
            body["AllowUnmuteSelf"] = request.allowUnmuteSelf!;
        }
        if (!TeaUtils.Client.isUnset(request.autoTransferHost)) {
            body["AutoTransferHost"] = request.autoTransferHost!;
        }
        if (!TeaUtils.Client.isUnset(request.forbiddenShareScreen)) {
            body["ForbiddenShareScreen"] = request.forbiddenShareScreen!;
        }
        if (!TeaUtils.Client.isUnset(request.lockConference)) {
            body["LockConference"] = request.lockConference!;
        }
        if (!TeaUtils.Client.isUnset(request.muteAll)) {
            body["MuteAll"] = request.muteAll!;
        }
        if (!TeaUtils.Client.isUnset(request.onlyInternalEmployeesJoin)) {
            body["OnlyInternalEmployeesJoin"] = request.onlyInternalEmployeesJoin!;
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
            "action": "UpdateVideoConferenceSetting",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/ysp/updateVideoConferenceSetting",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateVideoConferenceSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVideoConferenceSetting(_ request: UpdateVideoConferenceSettingRequest) async throws -> UpdateVideoConferenceSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateVideoConferenceSettingHeaders = UpdateVideoConferenceSettingHeaders([:])
        return try await updateVideoConferenceSettingWithOptions(request as! UpdateVideoConferenceSettingRequest, headers as! UpdateVideoConferenceSettingHeaders, runtime as! TeaUtils.RuntimeOptions)
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
