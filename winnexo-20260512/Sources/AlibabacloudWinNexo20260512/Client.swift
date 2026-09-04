import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("winnexo", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func _postOSSObject(_ bucketName: String, _ data: [String: Any], _ runtime: TeaUtils.RuntimeOptions) async throws -> [String: Any] {
        try runtime.validate()
        var _runtime: [String: Any] = [
            "timeouted": "retry",
            "key": TeaUtils.Client.defaultString(runtime.key, self._key),
            "cert": TeaUtils.Client.defaultString(runtime.cert, self._cert),
            "ca": TeaUtils.Client.defaultString(runtime.ca, self._ca),
            "readTimeout": TeaUtils.Client.defaultNumber(runtime.readTimeout, self._readTimeout),
            "connectTimeout": TeaUtils.Client.defaultNumber(runtime.connectTimeout, self._connectTimeout),
            "httpProxy": TeaUtils.Client.defaultString(runtime.httpProxy, self._httpProxy),
            "httpsProxy": TeaUtils.Client.defaultString(runtime.httpsProxy, self._httpsProxy),
            "noProxy": TeaUtils.Client.defaultString(runtime.noProxy, self._noProxy),
            "socks5Proxy": TeaUtils.Client.defaultString(runtime.socks5Proxy, self._socks5Proxy),
            "socks5NetWork": TeaUtils.Client.defaultString(runtime.socks5NetWork, self._socks5NetWork),
            "maxIdleConns": TeaUtils.Client.defaultNumber(runtime.maxIdleConns, self._maxIdleConns),
            "retry": [
                "retryable": runtime.autoretry!,
                "maxAttempts": TeaUtils.Client.defaultNumber(runtime.maxAttempts, 3)
            ],
            "backoff": [
                "policy": TeaUtils.Client.defaultString(runtime.backoffPolicy, "no"),
                "period": TeaUtils.Client.defaultNumber(runtime.backoffPeriod, 1)
            ],
            "ignoreSSL": AlibabacloudOpenApi.Client.defaultAny(runtime.ignoreSSL, false),
            "tlsMinVersion": self._tlsMinVersion ?? ""
        ]
        var _lastRequest: Tea.TeaRequest? = nil
        var _lastException: Tea.TeaError? = nil
        var _now: Int32 = Tea.TeaCore.timeNow()
        var _retryTimes: Int32 = 0
        while (Tea.TeaCore.allowRetry(_runtime["retry"], _retryTimes, _now)) {
            if (_retryTimes > 0) {
                var _backoffTime: Int32 = Tea.TeaCore.getBackoffTime(_runtime["backoff"], _retryTimes)
                if (_backoffTime > 0) {
                    Tea.TeaCore.sleep(_backoffTime)
                }
            }
            _retryTimes = _retryTimes + 1
            do {
                var _request: Tea.TeaRequest = Tea.TeaRequest()
                var form: [String: Any] = try TeaUtils.Client.assertAsMap(data)
                var boundary: String = TeaFileForm.Client.getBoundary()
                var tmp: String = try TeaUtils.Client.assertAsString(form["host"])
                var host: String = (bucketName as! String) + "." + (tmp as! String)
                _request.protocol_ = "HTTPS"
                _request.method = "POST"
                _request.pathname = "/"
                _request.headers = [
                    "host": host as! String,
                    "date": TeaUtils.Client.getDateUTCString(),
                    "user-agent": TeaUtils.Client.getUserAgent("")
                ]
                _request.headers["content-type"] = "multipart/form-data; boundary=" + (boundary as! String);
                _request.body = TeaFileForm.Client.toFileForm(form, boundary)
                _lastRequest = _request
                var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request, _runtime)
                var respMap: [String: Any]? = nil
                var bodyStr: String = try await TeaUtils.Client.readAsString(_response.body)
                if (TeaUtils.Client.is4xx(_response.statusCode) || TeaUtils.Client.is5xx(_response.statusCode)) {
                    respMap = DarabonbaXML.Client.parseXml(bodyStr, nil)
                    var err: [String: Any] = try TeaUtils.Client.assertAsMap(respMap["Error"])
                    throw Tea.ReuqestError([
                        "code": err["Code"]!,
                        "message": err["Message"]!,
                        "data": [
                            "httpCode": _response.statusCode,
                            "requestId": err["RequestId"]!,
                            "hostId": err["HostId"]!
                        ]
                    ])
                }
                respMap = DarabonbaXML.Client.parseXml(bodyStr, nil)
                return Tea.TeaConverter.merge([:], respMap)
            }
            catch {
                if (Tea.TeaCore.isRetryable(error)) {
                    _lastException = error as! Tea.RetryableError
                    continue
                }
                throw error
            }
        }
        throw Tea.UnretryableError(_lastRequest, _lastException)
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
    public func addUserGroupMembersWithOptions(_ tmpReq: AddUserGroupMembersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUserGroupMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddUserGroupMembersShrinkRequest = AddUserGroupMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.userIds)) {
            request.userIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIds, "userIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            body["userGroupId"] = request.userGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdsShrink)) {
            body["userIds"] = request.userIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUserGroupMembers",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/addUserGroupMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddUserGroupMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserGroupMembers(_ request: AddUserGroupMembersRequest) async throws -> AddUserGroupMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addUserGroupMembersWithOptions(request as! AddUserGroupMembersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchRemoveOperatingObjectFavoritesWithOptions(_ tmpReq: BatchRemoveOperatingObjectFavoritesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchRemoveOperatingObjectFavoritesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchRemoveOperatingObjectFavoritesShrinkRequest = BatchRemoveOperatingObjectFavoritesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.objectIds)) {
            request.objectIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.objectIds, "objectIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.graphName)) {
            body["graphName"] = request.graphName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectIdsShrink)) {
            body["objectIds"] = request.objectIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            body["objectType"] = request.objectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchRemoveOperatingObjectFavorites",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/batchRemoveOperatingObjectFavorites",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchRemoveOperatingObjectFavoritesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchRemoveOperatingObjectFavorites(_ request: BatchRemoveOperatingObjectFavoritesRequest) async throws -> BatchRemoveOperatingObjectFavoritesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchRemoveOperatingObjectFavoritesWithOptions(request as! BatchRemoveOperatingObjectFavoritesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkHealthWithOptions(_ request: CheckHealthRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckHealthResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckHealth",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/checkHealth",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckHealthResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkHealth(_ request: CheckHealthRequest) async throws -> CheckHealthResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await checkHealthWithOptions(request as! CheckHealthRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clearOperatingObjectFavoritesWithOptions(_ request: ClearOperatingObjectFavoritesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ClearOperatingObjectFavoritesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.graphName)) {
            body["graphName"] = request.graphName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            body["objectType"] = request.objectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ClearOperatingObjectFavorites",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/clearOperatingObjectFavorites",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ClearOperatingObjectFavoritesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clearOperatingObjectFavorites(_ request: ClearOperatingObjectFavoritesRequest) async throws -> ClearOperatingObjectFavoritesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await clearOperatingObjectFavoritesWithOptions(request as! ClearOperatingObjectFavoritesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAnnouncementWithOptions(_ tmpReq: CreateAnnouncementRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAnnouncementResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAnnouncementShrinkRequest = CreateAnnouncementShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.targetRoleCodes)) {
            request.targetRoleCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.targetRoleCodes, "targetRoleCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.targetTenantIds)) {
            request.targetTenantIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.targetTenantIds, "targetTenantIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayPage)) {
            body["displayPage"] = request.displayPage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayType)) {
            body["displayType"] = request.displayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectiveEnd)) {
            body["effectiveEnd"] = request.effectiveEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectiveStart)) {
            body["effectiveStart"] = request.effectiveStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["priority"] = request.priority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publishNow)) {
            body["publishNow"] = request.publishNow!;
        }
        if (!TeaUtils.Client.isUnset(request.targetRoleCodesShrink)) {
            body["targetRoleCodes"] = request.targetRoleCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetRoleMode)) {
            body["targetRoleMode"] = request.targetRoleMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetTenantIdsShrink)) {
            body["targetTenantIds"] = request.targetTenantIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetTenantMode)) {
            body["targetTenantMode"] = request.targetTenantMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAnnouncement",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createAnnouncement",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAnnouncementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAnnouncement(_ request: CreateAnnouncementRequest) async throws -> CreateAnnouncementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAnnouncementWithOptions(request as! CreateAnnouncementRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConversationWithOptions(_ tmpReq: CreateConversationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConversationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateConversationShrinkRequest = CreateConversationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.operatingObjectName)) {
            request.operatingObjectNameShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.operatingObjectName, "operatingObjectName", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.metadata)) {
            body["metadata"] = request.metadata ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            body["objectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectNameShrink)) {
            body["operatingObjectName"] = request.operatingObjectNameShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConversation",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createConversation",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConversationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConversation(_ request: CreateConversationRequest) async throws -> CreateConversationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createConversationWithOptions(request as! CreateConversationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomOrgWithOptions(_ request: CreateCustomOrgRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCustomOrgResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["corpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpName)) {
            body["corpName"] = request.corpName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCustomOrg",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createCustomOrg",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCustomOrgResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomOrg(_ request: CreateCustomOrgRequest) async throws -> CreateCustomOrgResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createCustomOrgWithOptions(request as! CreateCustomOrgRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupAliDingChatWithOptions(_ tmpReq: CreateGroupAliDingChatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGroupAliDingChatResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateGroupAliDingChatShrinkRequest = CreateGroupAliDingChatShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateFrequency)) {
            request.updateFrequencyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateFrequency, "updateFrequency", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chatId)) {
            body["chatId"] = request.chatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chatName)) {
            body["chatName"] = request.chatName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["groupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyStartTime)) {
            body["historyStartTime"] = request.historyStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notes)) {
            body["notes"] = request.notes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTags)) {
            body["sourceTags"] = request.sourceTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateFrequencyShrink)) {
            body["updateFrequency"] = request.updateFrequencyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGroupAliDingChat",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createGroupAliDingChat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGroupAliDingChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupAliDingChat(_ request: CreateGroupAliDingChatRequest) async throws -> CreateGroupAliDingChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createGroupAliDingChatWithOptions(request as! CreateGroupAliDingChatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupDingtalkChatWithOptions(_ tmpReq: CreateGroupDingtalkChatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGroupDingtalkChatResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateGroupDingtalkChatShrinkRequest = CreateGroupDingtalkChatShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateFrequency)) {
            request.updateFrequencyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateFrequency, "updateFrequency", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chatId)) {
            body["chatId"] = request.chatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chatName)) {
            body["chatName"] = request.chatName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["groupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyStartTime)) {
            body["historyStartTime"] = request.historyStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notes)) {
            body["notes"] = request.notes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTags)) {
            body["sourceTags"] = request.sourceTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateFrequencyShrink)) {
            body["updateFrequency"] = request.updateFrequencyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGroupDingtalkChat",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createGroupDingtalkChat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGroupDingtalkChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupDingtalkChat(_ request: CreateGroupDingtalkChatRequest) async throws -> CreateGroupDingtalkChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createGroupDingtalkChatWithOptions(request as! CreateGroupDingtalkChatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupFeishuDocWithOptions(_ tmpReq: CreateGroupFeishuDocRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGroupFeishuDocResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateGroupFeishuDocShrinkRequest = CreateGroupFeishuDocShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.objectBindings)) {
            request.objectBindingsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.objectBindings, "objectBindings", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.syncConfig)) {
            request.syncConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.syncConfig, "syncConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docUrl)) {
            body["docUrl"] = request.docUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["groupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notes)) {
            body["notes"] = request.notes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectBindingsShrink)) {
            body["objectBindings"] = request.objectBindingsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTags)) {
            body["sourceTags"] = request.sourceTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncConfigShrink)) {
            body["syncConfig"] = request.syncConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGroupFeishuDoc",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createGroupFeishuDoc",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGroupFeishuDocResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupFeishuDoc(_ request: CreateGroupFeishuDocRequest) async throws -> CreateGroupFeishuDocResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createGroupFeishuDocWithOptions(request as! CreateGroupFeishuDocRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseAliDingDocWithOptions(_ request: CreateKnowledgeBaseAliDingDocRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateKnowledgeBaseAliDingDocResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePublicUrl)) {
            body["filePublicUrl"] = request.filePublicUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.knowledgeId)) {
            body["knowledgeId"] = request.knowledgeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTags)) {
            body["sourceTags"] = request.sourceTags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateKnowledgeBaseAliDingDoc",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createKnowledgeBaseAlidingDoc",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateKnowledgeBaseAliDingDocResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseAliDingDoc(_ request: CreateKnowledgeBaseAliDingDocRequest) async throws -> CreateKnowledgeBaseAliDingDocResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createKnowledgeBaseAliDingDocWithOptions(request as! CreateKnowledgeBaseAliDingDocRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseDirectoryWithOptions(_ request: CreateKnowledgeBaseDirectoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateKnowledgeBaseDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentDirectoryId)) {
            body["parentDirectoryId"] = request.parentDirectoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateKnowledgeBaseDirectory",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createKnowledgeBaseDirectory",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateKnowledgeBaseDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseDirectory(_ request: CreateKnowledgeBaseDirectoryRequest) async throws -> CreateKnowledgeBaseDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createKnowledgeBaseDirectoryWithOptions(request as! CreateKnowledgeBaseDirectoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseFeishuDocWithOptions(_ tmpReq: CreateKnowledgeBaseFeishuDocRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateKnowledgeBaseFeishuDocResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateKnowledgeBaseFeishuDocShrinkRequest = CreateKnowledgeBaseFeishuDocShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.objectBindings)) {
            request.objectBindingsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.objectBindings, "objectBindings", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.syncConfig)) {
            request.syncConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.syncConfig, "syncConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docUrl)) {
            body["docUrl"] = request.docUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notes)) {
            body["notes"] = request.notes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectBindingsShrink)) {
            body["objectBindings"] = request.objectBindingsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTags)) {
            body["sourceTags"] = request.sourceTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncConfigShrink)) {
            body["syncConfig"] = request.syncConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateKnowledgeBaseFeishuDoc",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createKnowledgeBaseFeishuDoc",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateKnowledgeBaseFeishuDocResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseFeishuDoc(_ request: CreateKnowledgeBaseFeishuDocRequest) async throws -> CreateKnowledgeBaseFeishuDocResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createKnowledgeBaseFeishuDocWithOptions(request as! CreateKnowledgeBaseFeishuDocRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseFileWithOptions(_ request: CreateKnowledgeBaseFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateKnowledgeBaseFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileExt)) {
            body["fileExt"] = request.fileExt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["filePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePublicUrl)) {
            body["filePublicUrl"] = request.filePublicUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileRecordId)) {
            body["fileRecordId"] = request.fileRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.knowledgeId)) {
            body["knowledgeId"] = request.knowledgeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTags)) {
            body["sourceTags"] = request.sourceTags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateKnowledgeBaseFile",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createKnowledgeBaseFile",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateKnowledgeBaseFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseFile(_ request: CreateKnowledgeBaseFileRequest) async throws -> CreateKnowledgeBaseFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createKnowledgeBaseFileWithOptions(request as! CreateKnowledgeBaseFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseTextWithOptions(_ request: CreateKnowledgeBaseTextRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateKnowledgeBaseTextResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.knowledgeId)) {
            body["knowledgeId"] = request.knowledgeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTags)) {
            body["sourceTags"] = request.sourceTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textContent)) {
            body["textContent"] = request.textContent ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateKnowledgeBaseText",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createKnowledgeBaseText",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateKnowledgeBaseTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseText(_ request: CreateKnowledgeBaseTextRequest) async throws -> CreateKnowledgeBaseTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createKnowledgeBaseTextWithOptions(request as! CreateKnowledgeBaseTextRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalAliDingChatWithOptions(_ tmpReq: CreatePersonalAliDingChatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalAliDingChatResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePersonalAliDingChatShrinkRequest = CreatePersonalAliDingChatShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateFrequency)) {
            request.updateFrequencyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateFrequency, "updateFrequency", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chatId)) {
            body["chatId"] = request.chatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chatName)) {
            body["chatName"] = request.chatName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyStartTime)) {
            body["historyStartTime"] = request.historyStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notes)) {
            body["notes"] = request.notes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTags)) {
            body["sourceTags"] = request.sourceTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateFrequencyShrink)) {
            body["updateFrequency"] = request.updateFrequencyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalAliDingChat",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalAliDingChat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalAliDingChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalAliDingChat(_ request: CreatePersonalAliDingChatRequest) async throws -> CreatePersonalAliDingChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalAliDingChatWithOptions(request as! CreatePersonalAliDingChatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalAliDingMeetingWithOptions(_ request: CreatePersonalAliDingMeetingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalAliDingMeetingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notes)) {
            body["notes"] = request.notes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shanjiUrl)) {
            body["shanjiUrl"] = request.shanjiUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalAliDingMeeting",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalAliDingMeeting",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalAliDingMeetingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalAliDingMeeting(_ request: CreatePersonalAliDingMeetingRequest) async throws -> CreatePersonalAliDingMeetingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalAliDingMeetingWithOptions(request as! CreatePersonalAliDingMeetingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalAlidingDocWithOptions(_ request: CreatePersonalAlidingDocRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalAlidingDocResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePublicUrl)) {
            body["filePublicUrl"] = request.filePublicUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalAlidingDoc",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalAliDingDoc",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalAlidingDocResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalAlidingDoc(_ request: CreatePersonalAlidingDocRequest) async throws -> CreatePersonalAlidingDocResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalAlidingDocWithOptions(request as! CreatePersonalAlidingDocRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalAlidingKnowledgeBaseWithOptions(_ tmpReq: CreatePersonalAlidingKnowledgeBaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalAlidingKnowledgeBaseResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePersonalAlidingKnowledgeBaseShrinkRequest = CreatePersonalAlidingKnowledgeBaseShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.objectBindings)) {
            request.objectBindingsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.objectBindings, "objectBindings", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.syncConfig)) {
            request.syncConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.syncConfig, "syncConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kbName)) {
            body["kbName"] = request.kbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kbUrl)) {
            body["kbUrl"] = request.kbUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectBindingsShrink)) {
            body["objectBindings"] = request.objectBindingsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncConfigShrink)) {
            body["syncConfig"] = request.syncConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalAlidingKnowledgeBase",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalAliDingKnowledgeBase",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalAlidingKnowledgeBaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalAlidingKnowledgeBase(_ request: CreatePersonalAlidingKnowledgeBaseRequest) async throws -> CreatePersonalAlidingKnowledgeBaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalAlidingKnowledgeBaseWithOptions(request as! CreatePersonalAlidingKnowledgeBaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalDingtalkChatWithOptions(_ tmpReq: CreatePersonalDingtalkChatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalDingtalkChatResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePersonalDingtalkChatShrinkRequest = CreatePersonalDingtalkChatShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateFrequency)) {
            request.updateFrequencyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateFrequency, "updateFrequency", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chatId)) {
            body["chatId"] = request.chatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chatName)) {
            body["chatName"] = request.chatName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyStartTime)) {
            body["historyStartTime"] = request.historyStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notes)) {
            body["notes"] = request.notes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTags)) {
            body["sourceTags"] = request.sourceTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateFrequencyShrink)) {
            body["updateFrequency"] = request.updateFrequencyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalDingtalkChat",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalDingtalkChat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalDingtalkChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalDingtalkChat(_ request: CreatePersonalDingtalkChatRequest) async throws -> CreatePersonalDingtalkChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalDingtalkChatWithOptions(request as! CreatePersonalDingtalkChatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalDingtalkMeetingWithOptions(_ request: CreatePersonalDingtalkMeetingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalDingtalkMeetingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialId)) {
            body["credentialId"] = request.credentialId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notes)) {
            body["notes"] = request.notes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCode)) {
            body["roomCode"] = request.roomCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalDingtalkMeeting",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalDingtalkMeeting",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalDingtalkMeetingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalDingtalkMeeting(_ request: CreatePersonalDingtalkMeetingRequest) async throws -> CreatePersonalDingtalkMeetingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalDingtalkMeetingWithOptions(request as! CreatePersonalDingtalkMeetingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalDingtalkMinutesWithOptions(_ request: CreatePersonalDingtalkMinutesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalDingtalkMinutesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notes)) {
            body["notes"] = request.notes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shanjiUrl)) {
            body["shanjiUrl"] = request.shanjiUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalDingtalkMinutes",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalDingtalkMinutes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalDingtalkMinutesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalDingtalkMinutes(_ request: CreatePersonalDingtalkMinutesRequest) async throws -> CreatePersonalDingtalkMinutesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalDingtalkMinutesWithOptions(request as! CreatePersonalDingtalkMinutesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalDirectoryWithOptions(_ request: CreatePersonalDirectoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentDirectoryId)) {
            body["parentDirectoryId"] = request.parentDirectoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalDirectory",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalDirectory",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalDirectory(_ request: CreatePersonalDirectoryRequest) async throws -> CreatePersonalDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalDirectoryWithOptions(request as! CreatePersonalDirectoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalFeishuChatWithOptions(_ tmpReq: CreatePersonalFeishuChatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalFeishuChatResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePersonalFeishuChatShrinkRequest = CreatePersonalFeishuChatShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateFrequency)) {
            request.updateFrequencyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateFrequency, "updateFrequency", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chatId)) {
            body["chatId"] = request.chatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyStartTime)) {
            body["historyStartTime"] = request.historyStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notes)) {
            body["notes"] = request.notes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTags)) {
            body["sourceTags"] = request.sourceTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateFrequencyShrink)) {
            body["updateFrequency"] = request.updateFrequencyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalFeishuChat",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalFeishuChat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalFeishuChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalFeishuChat(_ request: CreatePersonalFeishuChatRequest) async throws -> CreatePersonalFeishuChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalFeishuChatWithOptions(request as! CreatePersonalFeishuChatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalFeishuDocWithOptions(_ tmpReq: CreatePersonalFeishuDocRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalFeishuDocResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePersonalFeishuDocShrinkRequest = CreatePersonalFeishuDocShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.objectBindings)) {
            request.objectBindingsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.objectBindings, "objectBindings", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.syncConfig)) {
            request.syncConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.syncConfig, "syncConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docUrl)) {
            body["docUrl"] = request.docUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notes)) {
            body["notes"] = request.notes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectBindingsShrink)) {
            body["objectBindings"] = request.objectBindingsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTags)) {
            body["sourceTags"] = request.sourceTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncConfigShrink)) {
            body["syncConfig"] = request.syncConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalFeishuDoc",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalFeishuDoc",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalFeishuDocResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalFeishuDoc(_ request: CreatePersonalFeishuDocRequest) async throws -> CreatePersonalFeishuDocResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalFeishuDocWithOptions(request as! CreatePersonalFeishuDocRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalFeishuMinuteWithOptions(_ request: CreatePersonalFeishuMinuteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalFeishuMinuteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialId)) {
            body["credentialId"] = request.credentialId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minuteToken)) {
            body["minuteToken"] = request.minuteToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalFeishuMinute",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalFeishuMinute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalFeishuMinuteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalFeishuMinute(_ request: CreatePersonalFeishuMinuteRequest) async throws -> CreatePersonalFeishuMinuteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalFeishuMinuteWithOptions(request as! CreatePersonalFeishuMinuteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalFileWithOptions(_ request: CreatePersonalFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileExt)) {
            body["fileExt"] = request.fileExt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["filePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePublicUrl)) {
            body["filePublicUrl"] = request.filePublicUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileRecordId)) {
            body["fileRecordId"] = request.fileRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalFile",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalFile",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalFile(_ request: CreatePersonalFileRequest) async throws -> CreatePersonalFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalFileWithOptions(request as! CreatePersonalFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalTextWithOptions(_ request: CreatePersonalTextRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalTextResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textContent)) {
            body["textContent"] = request.textContent ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalText",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalText",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalText(_ request: CreatePersonalTextRequest) async throws -> CreatePersonalTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPersonalTextWithOptions(request as! CreatePersonalTextRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalVoiceMeetingWithOptions(_ request: CreatePersonalVoiceMeetingRequest, _ headers: CreatePersonalVoiceMeetingHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePersonalVoiceMeetingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            body["fileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.requestId)) {
            realHeaders["requestId"] = TeaUtils.Client.toJSONString(headers.requestId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePersonalVoiceMeeting",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createPersonalVoiceMeeting",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePersonalVoiceMeetingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPersonalVoiceMeeting(_ request: CreatePersonalVoiceMeetingRequest) async throws -> CreatePersonalVoiceMeetingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreatePersonalVoiceMeetingHeaders = CreatePersonalVoiceMeetingHeaders([:])
        return try await createPersonalVoiceMeetingWithOptions(request as! CreatePersonalVoiceMeetingRequest, headers as! CreatePersonalVoiceMeetingHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScheduledTaskWithOptions(_ tmpReq: CreateScheduledTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScheduledTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateScheduledTaskShrinkRequest = CreateScheduledTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.description_)) {
            request.descriptionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.description_, "description", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.digitalEmployeeName)) {
            request.digitalEmployeeNameShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.digitalEmployeeName, "digitalEmployeeName", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.segments)) {
            request.segmentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.segments, "segments", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.taskDetail)) {
            request.taskDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.taskDetail, "taskDetail", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.triggerConfig)) {
            request.triggerConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.triggerConfig, "triggerConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.visibleMemberUserIds)) {
            request.visibleMemberUserIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.visibleMemberUserIds, "visibleMemberUserIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.collaborationGroupId)) {
            body["collaborationGroupId"] = request.collaborationGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.descriptionShrink)) {
            body["description"] = request.descriptionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digitalEmployeeNameShrink)) {
            body["digitalEmployeeName"] = request.digitalEmployeeNameShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isOpen)) {
            body["isOpen"] = request.isOpen!;
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.segmentsShrink)) {
            body["segments"] = request.segmentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDetailShrink)) {
            body["taskDetail"] = request.taskDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerConfigShrink)) {
            body["triggerConfig"] = request.triggerConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibility)) {
            body["visibility"] = request.visibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibleMemberUserIdsShrink)) {
            body["visibleMemberUserIds"] = request.visibleMemberUserIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScheduledTask",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createScheduledTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScheduledTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScheduledTask(_ request: CreateScheduledTaskRequest) async throws -> CreateScheduledTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createScheduledTaskWithOptions(request as! CreateScheduledTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTenantDirectoryWithOptions(_ request: CreateTenantDirectoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTenantDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["parentId"] = request.parentId!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            body["path"] = request.path ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTenantDirectory",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createTenantDirectory",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTenantDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTenantDirectory(_ request: CreateTenantDirectoryRequest) async throws -> CreateTenantDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTenantDirectoryWithOptions(request as! CreateTenantDirectoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserWithOptions(_ tmpReq: CreateUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateUserShrinkRequest = CreateUserShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.roleCodes)) {
            request.roleCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.roleCodes, "roleCodes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passwordEncrypted)) {
            body["passwordEncrypted"] = request.passwordEncrypted ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleCodesShrink)) {
            body["roleCodes"] = request.roleCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ssoProvider)) {
            body["ssoProvider"] = request.ssoProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wnAccountId)) {
            body["wnAccountId"] = request.wnAccountId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUser",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createUser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUser(_ request: CreateUserRequest) async throws -> CreateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createUserWithOptions(request as! CreateUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserGroupWithOptions(_ request: CreateUserGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["parentId"] = request.parentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupName)) {
            body["userGroupName"] = request.userGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserGroup",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createUserGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserGroup(_ request: CreateUserGroupRequest) async throws -> CreateUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createUserGroupWithOptions(request as! CreateUserGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserWithGroupsWithOptions(_ tmpReq: CreateUserWithGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserWithGroupsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateUserWithGroupsShrinkRequest = CreateUserWithGroupsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.roleCodes)) {
            request.roleCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.roleCodes, "roleCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userGroupIds)) {
            request.userGroupIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userGroupIds, "userGroupIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passwordEncrypted)) {
            body["passwordEncrypted"] = request.passwordEncrypted ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleCodesShrink)) {
            body["roleCodes"] = request.roleCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIdsShrink)) {
            body["userGroupIds"] = request.userGroupIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wnAccountId)) {
            body["wnAccountId"] = request.wnAccountId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserWithGroups",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/createUserWithGroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserWithGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserWithGroups(_ request: CreateUserWithGroupsRequest) async throws -> CreateUserWithGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createUserWithGroupsWithOptions(request as! CreateUserWithGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChatSessionWithOptions(_ request: DeleteChatSessionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteChatSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteChatSession",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/deleteChatSession",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteChatSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChatSession(_ request: DeleteChatSessionRequest) async throws -> DeleteChatSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteChatSessionWithOptions(request as! DeleteChatSessionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSourceWithOptions(_ request: DeleteSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/deleteSource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSource(_ request: DeleteSourceRequest) async throws -> DeleteSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSourceWithOptions(request as! DeleteSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTenantDirectoryWithOptions(_ request: DeleteTenantDirectoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTenantDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteMode)) {
            body["deleteMode"] = request.deleteMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTenantDirectory",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/deleteTenantDirectory",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTenantDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTenantDirectory(_ request: DeleteTenantDirectoryRequest) async throws -> DeleteTenantDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTenantDirectoryWithOptions(request as! DeleteTenantDirectoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableTokenWithOptions(_ request: DisableTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.wnUserId)) {
            body["wnUserId"] = request.wnUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableToken",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/disableToken",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableToken(_ request: DisableTokenRequest) async throws -> DisableTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableTokenWithOptions(request as! DisableTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableTokenWithOptions(_ request: EnableTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.wnUserId)) {
            body["wnUserId"] = request.wnUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableToken",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/enableToken",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableToken(_ request: EnableTokenRequest) async throws -> EnableTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableTokenWithOptions(request as! EnableTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatSessionWithOptions(_ request: GetChatSessionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChatSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChatSession",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getChatSession",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChatSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatSession(_ request: GetChatSessionRequest) async throws -> GetChatSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getChatSessionWithOptions(request as! GetChatSessionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGraphSchemaWithOptions(_ request: GetGraphSchemaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGraphSchemaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.graphName)) {
            body["graphName"] = request.graphName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGraphSchema",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getGraphSchema",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGraphSchemaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGraphSchema(_ request: GetGraphSchemaRequest) async throws -> GetGraphSchemaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGraphSchemaWithOptions(request as! GetGraphSchemaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceExpireTimeWithOptions(_ request: GetInstanceExpireTimeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceExpireTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceExpireTime",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getInstanceExpireTime",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceExpireTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceExpireTime(_ request: GetInstanceExpireTimeRequest) async throws -> GetInstanceExpireTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceExpireTimeWithOptions(request as! GetInstanceExpireTimeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKnowledgeBaseSourceWithOptions(_ request: GetKnowledgeBaseSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetKnowledgeBaseSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetKnowledgeBaseSource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getKnowledgeBaseSource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetKnowledgeBaseSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKnowledgeBaseSource(_ request: GetKnowledgeBaseSourceRequest) async throws -> GetKnowledgeBaseSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getKnowledgeBaseSourceWithOptions(request as! GetKnowledgeBaseSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScheduledTaskExecutionDetailWithOptions(_ request: GetScheduledTaskExecutionDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetScheduledTaskExecutionDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.executionId)) {
            query["executionId"] = request.executionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetScheduledTaskExecutionDetail",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getScheduledTaskExecutionDetail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetScheduledTaskExecutionDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScheduledTaskExecutionDetail(_ request: GetScheduledTaskExecutionDetailRequest) async throws -> GetScheduledTaskExecutionDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getScheduledTaskExecutionDetailWithOptions(request as! GetScheduledTaskExecutionDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScheduledTaskExecutionRecordsWithOptions(_ request: GetScheduledTaskExecutionRecordsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetScheduledTaskExecutionRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.collaborationGroupId)) {
            query["collaborationGroupId"] = request.collaborationGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initiatorUserId)) {
            query["initiatorUserId"] = request.initiatorUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetScheduledTaskExecutionRecords",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getScheduledTaskExecutionRecords",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetScheduledTaskExecutionRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScheduledTaskExecutionRecords(_ request: GetScheduledTaskExecutionRecordsRequest) async throws -> GetScheduledTaskExecutionRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getScheduledTaskExecutionRecordsWithOptions(request as! GetScheduledTaskExecutionRecordsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScheduledTaskPushOptionsWithOptions(_ request: GetScheduledTaskPushOptionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetScheduledTaskPushOptionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.collaborationGroupId)) {
            body["collaborationGroupId"] = request.collaborationGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digitalEmployeeName)) {
            body["digitalEmployeeName"] = request.digitalEmployeeName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetScheduledTaskPushOptions",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getScheduledTaskPushOptions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetScheduledTaskPushOptionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScheduledTaskPushOptions(_ request: GetScheduledTaskPushOptionsRequest) async throws -> GetScheduledTaskPushOptionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getScheduledTaskPushOptionsWithOptions(request as! GetScheduledTaskPushOptionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScheduledTaskUnderstandDetailWithOptions(_ tmpReq: GetScheduledTaskUnderstandDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetScheduledTaskUnderstandDetailResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetScheduledTaskUnderstandDetailShrinkRequest = GetScheduledTaskUnderstandDetailShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.digitalEmployeeName)) {
            request.digitalEmployeeNameShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.digitalEmployeeName, "digitalEmployeeName", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.segments)) {
            request.segmentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.segments, "segments", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.collaborationGroupId)) {
            query["collaborationGroupId"] = request.collaborationGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digitalEmployeeNameShrink)) {
            query["digitalEmployeeName"] = request.digitalEmployeeNameShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.segmentsShrink)) {
            query["segments"] = request.segmentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userInput)) {
            query["userInput"] = request.userInput ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetScheduledTaskUnderstandDetail",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getScheduledTaskUnderstandDetail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetScheduledTaskUnderstandDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScheduledTaskUnderstandDetail(_ request: GetScheduledTaskUnderstandDetailRequest) async throws -> GetScheduledTaskUnderstandDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getScheduledTaskUnderstandDetailWithOptions(request as! GetScheduledTaskUnderstandDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSkillWithOptions(_ request: GetSkillRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSkillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.includeSkillFiles)) {
            body["includeSkillFiles"] = request.includeSkillFiles!;
        }
        if (!TeaUtils.Client.isUnset(request.skillCode)) {
            body["skillCode"] = request.skillCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            body["skillName"] = request.skillName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.viewMode)) {
            body["viewMode"] = request.viewMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSkill",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getSkill",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSkill(_ request: GetSkillRequest) async throws -> GetSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSkillWithOptions(request as! GetSkillRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSkillRunWithOptions(_ request: GetSkillRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSkillRunResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.includeLogs)) {
            body["includeLogs"] = request.includeLogs!;
        }
        if (!TeaUtils.Client.isUnset(request.runId)) {
            body["runId"] = request.runId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSkillRun",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getSkillRun",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSkillRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSkillRun(_ request: GetSkillRunRequest) async throws -> GetSkillRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSkillRunWithOptions(request as! GetSkillRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSourceWithOptions(_ request: GetSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.includeDetails)) {
            body["includeDetails"] = request.includeDetails!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getSource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSource(_ request: GetSourceRequest) async throws -> GetSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSourceWithOptions(request as! GetSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSourceUploadSignatureWithOptions(_ request: GetSourceUploadSignatureRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSourceUploadSignatureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentType)) {
            body["contentType"] = request.contentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expires)) {
            body["expires"] = request.expires!;
        }
        if (!TeaUtils.Client.isUnset(request.filename)) {
            body["filename"] = request.filename ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSourceUploadSignature",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getSourceUploadSignature",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSourceUploadSignatureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSourceUploadSignature(_ request: GetSourceUploadSignatureRequest) async throws -> GetSourceUploadSignatureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSourceUploadSignatureWithOptions(request as! GetSourceUploadSignatureRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenEnsureEnableWithOptions(_ request: GetTokenEnsureEnableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTokenEnsureEnableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.wnUserId)) {
            body["wnUserId"] = request.wnUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTokenEnsureEnable",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getTokenEnsureEnable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTokenEnsureEnableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenEnsureEnable(_ request: GetTokenEnsureEnableRequest) async throws -> GetTokenEnsureEnableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTokenEnsureEnableWithOptions(request as! GetTokenEnsureEnableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenInfoWithOptions(_ request: GetTokenInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTokenInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.wnUserId)) {
            body["wnUserId"] = request.wnUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTokenInfo",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getTokenInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTokenInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenInfo(_ request: GetTokenInfoRequest) async throws -> GetTokenInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTokenInfoWithOptions(request as! GetTokenInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserWithOptions(_ request: GetUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wnAccountId)) {
            query["wnAccountId"] = request.wnAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wnUserId)) {
            query["wnUserId"] = request.wnUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUser",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getUser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUser(_ request: GetUserRequest) async throws -> GetUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserWithOptions(request as! GetUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserCreditUsageWithOptions(_ request: GetUserCreditUsageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserCreditUsageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserCreditUsage",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getUserCreditUsage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserCreditUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserCreditUsage(_ request: GetUserCreditUsageRequest) async throws -> GetUserCreditUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserCreditUsageWithOptions(request as! GetUserCreditUsageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserGroupWithOptions(_ request: GetUserGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            body["userGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserGroup",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getUserGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserGroup(_ request: GetUserGroupRequest) async throws -> GetUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserGroupWithOptions(request as! GetUserGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserInfoWithOptions(_ request: GetUserInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserInfo",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/getUserInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserInfo(_ request: GetUserInfoRequest) async throws -> GetUserInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserInfoWithOptions(request as! GetUserInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantAgentUsersWithOptions(_ tmpReq: GrantAgentUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantAgentUsersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GrantAgentUsersShrinkRequest = GrantAgentUsersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.permissions)) {
            request.permissionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.permissions, "permissions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userGroupIds)) {
            request.userGroupIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userGroupIds, "userGroupIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userIds)) {
            request.userIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIds, "userIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expireDate)) {
            body["expireDate"] = request.expireDate!;
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.permissionsShrink)) {
            body["permissions"] = request.permissionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIdsShrink)) {
            body["userGroupIds"] = request.userGroupIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdsShrink)) {
            body["userIds"] = request.userIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantAgentUsers",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/grantAgentUsers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantAgentUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantAgentUsers(_ request: GrantAgentUsersRequest) async throws -> GrantAgentUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await grantAgentUsersWithOptions(request as! GrantAgentUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listActiveAnnouncementsWithOptions(_ request: ListActiveAnnouncementsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListActiveAnnouncementsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListActiveAnnouncements",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listActiveAnnouncements",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListActiveAnnouncementsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listActiveAnnouncements(_ request: ListActiveAnnouncementsRequest) async throws -> ListActiveAnnouncementsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listActiveAnnouncementsWithOptions(request as! ListActiveAnnouncementsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAdminKnowledgeBasesWithOptions(_ tmpReq: ListAdminKnowledgeBasesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAdminKnowledgeBasesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAdminKnowledgeBasesShrinkRequest = ListAdminKnowledgeBasesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sourceTypes)) {
            request.sourceTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceTypes, "sourceTypes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortField)) {
            body["sortField"] = request.sortField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            body["sortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypesShrink)) {
            body["sourceTypes"] = request.sourceTypesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAdminKnowledgeBases",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listAdminKnowledgeBases",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAdminKnowledgeBasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAdminKnowledgeBases(_ request: ListAdminKnowledgeBasesRequest) async throws -> ListAdminKnowledgeBasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAdminKnowledgeBasesWithOptions(request as! ListAdminKnowledgeBasesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAgentsWithOptions(_ request: ListAgentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAgentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAgents",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listAgents",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAgentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAgents(_ request: ListAgentsRequest) async throws -> ListAgentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAgentsWithOptions(request as! ListAgentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorizedAgentsWithOptions(_ request: ListAuthorizedAgentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAuthorizedAgentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.permission)) {
            body["permission"] = request.permission ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUserId)) {
            body["targetUserId"] = request.targetUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAuthorizedAgents",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listAuthorizedAgents",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAuthorizedAgentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorizedAgents(_ request: ListAuthorizedAgentsRequest) async throws -> ListAuthorizedAgentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAuthorizedAgentsWithOptions(request as! ListAuthorizedAgentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorizedUsersWithOptions(_ request: ListAuthorizedUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAuthorizedUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.granteeType)) {
            body["granteeType"] = request.granteeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.permission)) {
            body["permission"] = request.permission ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAuthorizedUsers",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listAuthorizedUsers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAuthorizedUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorizedUsers(_ request: ListAuthorizedUsersRequest) async throws -> ListAuthorizedUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAuthorizedUsersWithOptions(request as! ListAuthorizedUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAvailableConfigsWithOptions(_ request: ListAvailableConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAvailableConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAvailableConfigs",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listAvailableConfigs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAvailableConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAvailableConfigs(_ request: ListAvailableConfigsRequest) async throws -> ListAvailableConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAvailableConfigsWithOptions(request as! ListAvailableConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBillingWithOptions(_ request: ListBillingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBillingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["bizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["bizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreZero)) {
            body["ignoreZero"] = request.ignoreZero!;
        }
        if (!TeaUtils.Client.isUnset(request.operation)) {
            body["operation"] = request.operation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wnUserId)) {
            body["wnUserId"] = request.wnUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBilling",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listBilling",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBillingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBilling(_ request: ListBillingRequest) async throws -> ListBillingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listBillingWithOptions(request as! ListBillingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChatSessionsWithOptions(_ request: ListChatSessionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChatSessionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.digitalEmployeeName)) {
            query["digitalEmployeeName"] = request.digitalEmployeeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChatSessions",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listChatSessions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChatSessionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChatSessions(_ request: ListChatSessionsRequest) async throws -> ListChatSessionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listChatSessionsWithOptions(request as! ListChatSessionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGraphsWithOptions(_ request: ListGraphsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGraphsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGraphs",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listGraphs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGraphsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGraphs(_ request: ListGraphsRequest) async throws -> ListGraphsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGraphsWithOptions(request as! ListGraphsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listKnowledgeBaseDirectoriesWithOptions(_ request: ListKnowledgeBaseDirectoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListKnowledgeBaseDirectoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortField)) {
            body["sortField"] = request.sortField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            body["sortOrder"] = request.sortOrder ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListKnowledgeBaseDirectories",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listKnowledgeBaseDirectories",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListKnowledgeBaseDirectoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listKnowledgeBaseDirectories(_ request: ListKnowledgeBaseDirectoriesRequest) async throws -> ListKnowledgeBaseDirectoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listKnowledgeBaseDirectoriesWithOptions(request as! ListKnowledgeBaseDirectoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperatingObjectFavoritesWithOptions(_ request: ListOperatingObjectFavoritesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOperatingObjectFavoritesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.graphName)) {
            body["graphName"] = request.graphName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            body["objectType"] = request.objectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOperatingObjectFavorites",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listOperatingObjectFavorites",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOperatingObjectFavoritesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperatingObjectFavorites(_ request: ListOperatingObjectFavoritesRequest) async throws -> ListOperatingObjectFavoritesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOperatingObjectFavoritesWithOptions(request as! ListOperatingObjectFavoritesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOutputFilesWithOptions(_ request: ListOutputFilesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOutputFilesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.itemType)) {
            body["itemType"] = request.itemType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sharedOnly)) {
            body["sharedOnly"] = request.sharedOnly!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOutputFiles",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listOutputFiles",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOutputFilesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOutputFiles(_ request: ListOutputFilesRequest) async throws -> ListOutputFilesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOutputFilesWithOptions(request as! ListOutputFilesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPersonalDirectoryContentsWithOptions(_ tmpReq: ListPersonalDirectoryContentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPersonalDirectoryContentsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListPersonalDirectoryContentsShrinkRequest = ListPersonalDirectoryContentsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sourceTypes)) {
            request.sourceTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceTypes, "sourceTypes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortField)) {
            body["sortField"] = request.sortField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            body["sortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypesShrink)) {
            body["sourceTypes"] = request.sourceTypesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPersonalDirectoryContents",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listPersonalDirectoryContents",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPersonalDirectoryContentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPersonalDirectoryContents(_ request: ListPersonalDirectoryContentsRequest) async throws -> ListPersonalDirectoryContentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPersonalDirectoryContentsWithOptions(request as! ListPersonalDirectoryContentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRolesWithOptions(_ request: ListRolesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRolesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRoles",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listRoles",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRolesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRoles(_ request: ListRolesRequest) async throws -> ListRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRolesWithOptions(request as! ListRolesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScheduledTasksWithOptions(_ tmpReq: ListScheduledTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListScheduledTasksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListScheduledTasksShrinkRequest = ListScheduledTasksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.visibilities)) {
            request.visibilitiesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.visibilities, "visibilities", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.collaborationGroupId)) {
            query["collaborationGroupId"] = request.collaborationGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creatorOnly)) {
            query["creatorOnly"] = request.creatorOnly!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibilitiesShrink)) {
            query["visibilities"] = request.visibilitiesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListScheduledTasks",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listScheduledTasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListScheduledTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScheduledTasks(_ request: ListScheduledTasksRequest) async throws -> ListScheduledTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listScheduledTasksWithOptions(request as! ListScheduledTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkillsWithOptions(_ tmpReq: ListSkillsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSkillsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListSkillsShrinkRequest = ListSkillsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bindStatus)) {
            body["bindStatus"] = request.bindStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterType)) {
            body["filterType"] = request.filterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            body["tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSkills",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listSkills",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSkillsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkills(_ request: ListSkillsRequest) async throws -> ListSkillsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSkillsWithOptions(request as! ListSkillsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTenantDirectoryWithOptions(_ request: ListTenantDirectoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTenantDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortField)) {
            body["sortField"] = request.sortField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            body["sortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypes)) {
            body["sourceTypes"] = request.sourceTypes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTenantDirectory",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listTenantDirectory",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTenantDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTenantDirectory(_ request: ListTenantDirectoryRequest) async throws -> ListTenantDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTenantDirectoryWithOptions(request as! ListTenantDirectoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroupsWithOptions(_ request: ListUserGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserGroups",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listUserGroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroups(_ request: ListUserGroupsRequest) async throws -> ListUserGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserGroupsWithOptions(request as! ListUserGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserVisibleKnowledgeBaseContentsWithOptions(_ request: ListUserVisibleKnowledgeBaseContentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserVisibleKnowledgeBaseContentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortField)) {
            body["sortField"] = request.sortField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            body["sortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypes)) {
            body["sourceTypes"] = request.sourceTypes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserVisibleKnowledgeBaseContents",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listUserVisibleKnowledgeBaseContents",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserVisibleKnowledgeBaseContentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserVisibleKnowledgeBaseContents(_ request: ListUserVisibleKnowledgeBaseContentsRequest) async throws -> ListUserVisibleKnowledgeBaseContentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserVisibleKnowledgeBaseContentsWithOptions(request as! ListUserVisibleKnowledgeBaseContentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserVisibleKnowledgeBasesWithOptions(_ request: ListUserVisibleKnowledgeBasesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserVisibleKnowledgeBasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["keyword"] = request.keyword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserVisibleKnowledgeBases",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listUserVisibleKnowledgeBases",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserVisibleKnowledgeBasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserVisibleKnowledgeBases(_ request: ListUserVisibleKnowledgeBasesRequest) async throws -> ListUserVisibleKnowledgeBasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserVisibleKnowledgeBasesWithOptions(request as! ListUserVisibleKnowledgeBasesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersWithOptions(_ tmpReq: ListUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListUsersShrinkRequest = ListUsersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.accountIds)) {
            request.accountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.accountIds, "accountIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.roleCodes)) {
            request.roleCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.roleCodes, "roleCodes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountIdsShrink)) {
            body["accountIds"] = request.accountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isActive)) {
            body["isActive"] = request.isActive!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.roleCodesShrink)) {
            body["roleCodes"] = request.roleCodesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsers",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listUsers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsers(_ request: ListUsersRequest) async throws -> ListUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUsersWithOptions(request as! ListUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVisibleKnowledgeBaseContentsWithOptions(_ tmpReq: ListVisibleKnowledgeBaseContentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVisibleKnowledgeBaseContentsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListVisibleKnowledgeBaseContentsShrinkRequest = ListVisibleKnowledgeBaseContentsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sourceTypes)) {
            request.sourceTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceTypes, "sourceTypes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortField)) {
            body["sortField"] = request.sortField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            body["sortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypesShrink)) {
            body["sourceTypes"] = request.sourceTypesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVisibleKnowledgeBaseContents",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listVisibleKnowledgeBaseContents",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVisibleKnowledgeBaseContentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVisibleKnowledgeBaseContents(_ request: ListVisibleKnowledgeBaseContentsRequest) async throws -> ListVisibleKnowledgeBaseContentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listVisibleKnowledgeBaseContentsWithOptions(request as! ListVisibleKnowledgeBaseContentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVisibleKnowledgeBasesWithOptions(_ request: ListVisibleKnowledgeBasesRequest, _ headers: ListVisibleKnowledgeBasesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVisibleKnowledgeBasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.requestId)) {
            realHeaders["requestId"] = TeaUtils.Client.toJSONString(headers.requestId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVisibleKnowledgeBases",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/listVisibleKnowledgeBases",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVisibleKnowledgeBasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVisibleKnowledgeBases(_ request: ListVisibleKnowledgeBasesRequest) async throws -> ListVisibleKnowledgeBasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListVisibleKnowledgeBasesHeaders = ListVisibleKnowledgeBasesHeaders([:])
        return try await listVisibleKnowledgeBasesWithOptions(request as! ListVisibleKnowledgeBasesRequest, headers as! ListVisibleKnowledgeBasesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveKnowledgeBaseResourceWithOptions(_ request: MoveKnowledgeBaseResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> MoveKnowledgeBaseResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.knowledgeId)) {
            body["knowledgeId"] = request.knowledgeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDirectoryId)) {
            body["sourceDirectoryId"] = request.sourceDirectoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDirectoryId)) {
            body["targetDirectoryId"] = request.targetDirectoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MoveKnowledgeBaseResource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/moveKnowledgeBaseResource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MoveKnowledgeBaseResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveKnowledgeBaseResource(_ request: MoveKnowledgeBaseResourceRequest) async throws -> MoveKnowledgeBaseResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await moveKnowledgeBaseResourceWithOptions(request as! MoveKnowledgeBaseResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveResourceWithOptions(_ request: MoveResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> MoveResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceDirectoryId)) {
            body["sourceDirectoryId"] = request.sourceDirectoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDirectoryId)) {
            body["targetDirectoryId"] = request.targetDirectoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MoveResource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/moveResource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MoveResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveResource(_ request: MoveResourceRequest) async throws -> MoveResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await moveResourceWithOptions(request as! MoveResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineAnnouncementWithOptions(_ request: OfflineAnnouncementRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineAnnouncementResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.announcementId)) {
            body["announcementId"] = request.announcementId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineAnnouncement",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/offlineAnnouncement",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineAnnouncementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineAnnouncement(_ request: OfflineAnnouncementRequest) async throws -> OfflineAnnouncementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await offlineAnnouncementWithOptions(request as! OfflineAnnouncementRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func previewKnowledgeBaseSourceWithOptions(_ request: PreviewKnowledgeBaseSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PreviewKnowledgeBaseSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PreviewKnowledgeBaseSource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/previewKnowledgeBaseSource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PreviewKnowledgeBaseSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func previewKnowledgeBaseSource(_ request: PreviewKnowledgeBaseSourceRequest) async throws -> PreviewKnowledgeBaseSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await previewKnowledgeBaseSourceWithOptions(request as! PreviewKnowledgeBaseSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func previewPersonalSourceWithOptions(_ request: PreviewPersonalSourceRequest, _ headers: PreviewPersonalSourceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PreviewPersonalSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.requestId)) {
            realHeaders["requestId"] = TeaUtils.Client.toJSONString(headers.requestId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PreviewPersonalSource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/previewPersonalSource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PreviewPersonalSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func previewPersonalSource(_ request: PreviewPersonalSourceRequest) async throws -> PreviewPersonalSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PreviewPersonalSourceHeaders = PreviewPersonalSourceHeaders([:])
        return try await previewPersonalSourceWithOptions(request as! PreviewPersonalSourceRequest, headers as! PreviewPersonalSourceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPrimaryObjectDataWithOptions(_ request: QueryPrimaryObjectDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPrimaryObjectDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onlyFavorites)) {
            body["onlyFavorites"] = request.onlyFavorites!;
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPrimaryObjectData",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/queryPrimaryObjectData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPrimaryObjectDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPrimaryObjectData(_ request: QueryPrimaryObjectDataRequest) async throws -> QueryPrimaryObjectDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryPrimaryObjectDataWithOptions(request as! QueryPrimaryObjectDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySemanticKnowledgeWithOptions(_ request: QuerySemanticKnowledgeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySemanticKnowledgeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentName)) {
            body["agentName"] = request.agentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.graphName)) {
            body["graphName"] = request.graphName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySemanticKnowledge",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/querySemanticKnowledge",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySemanticKnowledgeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySemanticKnowledge(_ request: QuerySemanticKnowledgeRequest) async throws -> QuerySemanticKnowledgeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await querySemanticKnowledgeWithOptions(request as! QuerySemanticKnowledgeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySyncResultWithOptions(_ request: QuerySyncResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySyncResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySyncResult",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/querySyncResult",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySyncResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySyncResult(_ request: QuerySyncResultRequest) async throws -> QuerySyncResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await querySyncResultWithOptions(request as! QuerySyncResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recommendNextActionsWithOptions(_ request: RecommendNextActionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RecommendNextActionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customPrompt)) {
            body["customPrompt"] = request.customPrompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputType)) {
            body["outputType"] = request.outputType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recentMessageCount)) {
            body["recentMessageCount"] = request.recentMessageCount!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecommendNextActions",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/recommendNextActions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecommendNextActionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recommendNextActions(_ request: RecommendNextActionsRequest) async throws -> RecommendNextActionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await recommendNextActionsWithOptions(request as! RecommendNextActionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUserWithOptions(_ request: RemoveUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wnUserId)) {
            query["wnUserId"] = request.wnUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveUser",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/removeUser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUser(_ request: RemoveUserRequest) async throws -> RemoveUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeUserWithOptions(request as! RemoveUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUserGroupMembersWithOptions(_ tmpReq: RemoveUserGroupMembersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveUserGroupMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveUserGroupMembersShrinkRequest = RemoveUserGroupMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.userIds)) {
            request.userIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIds, "userIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            body["userGroupId"] = request.userGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdsShrink)) {
            body["userIds"] = request.userIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveUserGroupMembers",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/removeUserGroupMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveUserGroupMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUserGroupMembers(_ request: RemoveUserGroupMembersRequest) async throws -> RemoveUserGroupMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeUserGroupMembersWithOptions(request as! RemoveUserGroupMembersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renameKnowledgeBaseSourceWithOptions(_ request: RenameKnowledgeBaseSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RenameKnowledgeBaseSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newName)) {
            body["newName"] = request.newName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenameKnowledgeBaseSource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/renameKnowledgeBaseSource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenameKnowledgeBaseSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renameKnowledgeBaseSource(_ request: RenameKnowledgeBaseSourceRequest) async throws -> RenameKnowledgeBaseSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await renameKnowledgeBaseSourceWithOptions(request as! RenameKnowledgeBaseSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renameSourceWithOptions(_ request: RenameSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RenameSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newName)) {
            body["newName"] = request.newName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenameSource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/renameSource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenameSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renameSource(_ request: RenameSourceRequest) async throws -> RenameSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await renameSourceWithOptions(request as! RenameSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reparseSourceWithOptions(_ request: ReparseSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReparseSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forceSync)) {
            body["forceSync"] = request.forceSync!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReparseSource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/reparseSource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReparseSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reparseSource(_ request: ReparseSourceRequest) async throws -> ReparseSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await reparseSourceWithOptions(request as! ReparseSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replaceKnowledgeBaseSourceFileWithOptions(_ request: ReplaceKnowledgeBaseSourceFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReplaceKnowledgeBaseSourceFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["filePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePublicUrl)) {
            body["filePublicUrl"] = request.filePublicUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileRecordId)) {
            body["fileRecordId"] = request.fileRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceSync)) {
            body["forceSync"] = request.forceSync!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReplaceKnowledgeBaseSourceFile",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/replaceKnowledgeBaseSourceFile",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReplaceKnowledgeBaseSourceFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replaceKnowledgeBaseSourceFile(_ request: ReplaceKnowledgeBaseSourceFileRequest) async throws -> ReplaceKnowledgeBaseSourceFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await replaceKnowledgeBaseSourceFileWithOptions(request as! ReplaceKnowledgeBaseSourceFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replaceObjectBindingsWithOptions(_ tmpReq: ReplaceObjectBindingsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReplaceObjectBindingsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ReplaceObjectBindingsShrinkRequest = ReplaceObjectBindingsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.objectBindings)) {
            request.objectBindingsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.objectBindings, "objectBindings", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.objectBindingsShrink)) {
            body["objectBindings"] = request.objectBindingsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReplaceObjectBindings",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/replaceObjectBindings",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReplaceObjectBindingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replaceObjectBindings(_ request: ReplaceObjectBindingsRequest) async throws -> ReplaceObjectBindingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await replaceObjectBindingsWithOptions(request as! ReplaceObjectBindingsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replaceSourceFileWithOptions(_ request: ReplaceSourceFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReplaceSourceFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["filePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePublicUrl)) {
            body["filePublicUrl"] = request.filePublicUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileRecordId)) {
            body["fileRecordId"] = request.fileRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceSync)) {
            body["forceSync"] = request.forceSync!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReplaceSourceFile",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/replaceSourceFile",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReplaceSourceFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replaceSourceFile(_ request: ReplaceSourceFileRequest) async throws -> ReplaceSourceFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await replaceSourceFileWithOptions(request as! ReplaceSourceFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetPasswordWithOptions(_ request: ResetPasswordRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.passwordEncrypted)) {
            body["passwordEncrypted"] = request.passwordEncrypted ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wnUserId)) {
            body["wnUserId"] = request.wnUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetPassword",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/resetPassword",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetPasswordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetPassword(_ request: ResetPasswordRequest) async throws -> ResetPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resetPasswordWithOptions(request as! ResetPasswordRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetTokenWithOptions(_ request: ResetTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.wnUserId)) {
            body["wnUserId"] = request.wnUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetToken",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/resetToken",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetToken(_ request: ResetTokenRequest) async throws -> ResetTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resetTokenWithOptions(request as! ResetTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryDirectoryFailedSourcesWithOptions(_ request: RetryDirectoryFailedSourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RetryDirectoryFailedSourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RetryDirectoryFailedSources",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/retryDirectoryFailedSources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetryDirectoryFailedSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryDirectoryFailedSources(_ request: RetryDirectoryFailedSourcesRequest) async throws -> RetryDirectoryFailedSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await retryDirectoryFailedSourcesWithOptions(request as! RetryDirectoryFailedSourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryKnowledgeBaseFailedSourcesWithOptions(_ request: RetryKnowledgeBaseFailedSourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RetryKnowledgeBaseFailedSourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RetryKnowledgeBaseFailedSources",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/retryKnowledgeBaseFailedSources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetryKnowledgeBaseFailedSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryKnowledgeBaseFailedSources(_ request: RetryKnowledgeBaseFailedSourcesRequest) async throws -> RetryKnowledgeBaseFailedSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await retryKnowledgeBaseFailedSourcesWithOptions(request as! RetryKnowledgeBaseFailedSourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeAgentUsersWithOptions(_ tmpReq: RevokeAgentUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeAgentUsersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RevokeAgentUsersShrinkRequest = RevokeAgentUsersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.userGroupIds)) {
            request.userGroupIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userGroupIds, "userGroupIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userIds)) {
            request.userIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIds, "userIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIdsShrink)) {
            body["userGroupIds"] = request.userGroupIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdsShrink)) {
            body["userIds"] = request.userIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeAgentUsers",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/revokeAgentUsers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeAgentUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeAgentUsers(_ request: RevokeAgentUsersRequest) async throws -> RevokeAgentUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await revokeAgentUsersWithOptions(request as! RevokeAgentUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runSkillWithOptions(_ tmpReq: RunSkillRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunSkillResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunSkillShrinkRequest = RunSkillShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.arguments)) {
            request.argumentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.arguments, "arguments", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.argumentsShrink)) {
            body["arguments"] = request.argumentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillCode)) {
            body["skillCode"] = request.skillCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            body["skillName"] = request.skillName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunSkill",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/runSkill",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runSkill(_ request: RunSkillRequest) async throws -> RunSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runSkillWithOptions(request as! RunSkillRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveGroupOutputFileToGroupResourceWithOptions(_ tmpReq: SaveGroupOutputFileToGroupResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveGroupOutputFileToGroupResourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SaveGroupOutputFileToGroupResourceShrinkRequest = SaveGroupOutputFileToGroupResourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemIds)) {
            request.itemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemIds, "itemIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["groupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemIdsShrink)) {
            body["itemIds"] = request.itemIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["mode"] = request.mode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveGroupOutputFileToGroupResource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/saveGroupOutputFileToGroupResource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveGroupOutputFileToGroupResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveGroupOutputFileToGroupResource(_ request: SaveGroupOutputFileToGroupResourceRequest) async throws -> SaveGroupOutputFileToGroupResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await saveGroupOutputFileToGroupResourceWithOptions(request as! SaveGroupOutputFileToGroupResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveGroupOutputFileToPersonalResourceWithOptions(_ tmpReq: SaveGroupOutputFileToPersonalResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveGroupOutputFileToPersonalResourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SaveGroupOutputFileToPersonalResourceShrinkRequest = SaveGroupOutputFileToPersonalResourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemIds)) {
            request.itemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemIds, "itemIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["groupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemIdsShrink)) {
            body["itemIds"] = request.itemIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["mode"] = request.mode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveGroupOutputFileToPersonalResource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/saveGroupOutputFileToPersonalResource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveGroupOutputFileToPersonalResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveGroupOutputFileToPersonalResource(_ request: SaveGroupOutputFileToPersonalResourceRequest) async throws -> SaveGroupOutputFileToPersonalResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await saveGroupOutputFileToPersonalResourceWithOptions(request as! SaveGroupOutputFileToPersonalResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveOutputFileToResourceWithOptions(_ tmpReq: SaveOutputFileToResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveOutputFileToResourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SaveOutputFileToResourceShrinkRequest = SaveOutputFileToResourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemIds)) {
            request.itemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemIds, "itemIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemIdsShrink)) {
            body["itemIds"] = request.itemIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["mode"] = request.mode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveOutputFileToResource",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/saveOutputFileToResource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveOutputFileToResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveOutputFileToResource(_ request: SaveOutputFileToResourceRequest) async throws -> SaveOutputFileToResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await saveOutputFileToResourceWithOptions(request as! SaveOutputFileToResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendAsyncChatMessageWithOptions(_ tmpReq: SendAsyncChatMessageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendAsyncChatMessageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendAsyncChatMessageShrinkRequest = SendAsyncChatMessageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.digitalEmployeeName)) {
            request.digitalEmployeeNameShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.digitalEmployeeName, "digitalEmployeeName", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.files)) {
            request.filesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.files, "files", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.taskExecution)) {
            request.taskExecutionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.taskExecution, "taskExecution", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentType)) {
            body["contentType"] = request.contentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digitalEmployeeNameShrink)) {
            body["digitalEmployeeName"] = request.digitalEmployeeNameShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directChat)) {
            body["directChat"] = request.directChat!;
        }
        if (!TeaUtils.Client.isUnset(request.filesShrink)) {
            body["files"] = request.filesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reuseLastSession)) {
            body["reuseLastSession"] = request.reuseLastSession!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.taskExecutionShrink)) {
            body["taskExecution"] = request.taskExecutionShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendAsyncChatMessage",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/sendAsyncChatMessage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendAsyncChatMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendAsyncChatMessage(_ request: SendAsyncChatMessageRequest) async throws -> SendAsyncChatMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendAsyncChatMessageWithOptions(request as! SendAsyncChatMessageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendChatMessageWithOptions(_ tmpReq: SendChatMessageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendChatMessageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendChatMessageShrinkRequest = SendChatMessageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.digitalEmployeeName)) {
            request.digitalEmployeeNameShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.digitalEmployeeName, "digitalEmployeeName", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.files)) {
            request.filesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.files, "files", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.taskExecution)) {
            request.taskExecutionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.taskExecution, "taskExecution", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentType)) {
            body["contentType"] = request.contentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digitalEmployeeNameShrink)) {
            body["digitalEmployeeName"] = request.digitalEmployeeNameShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directChat)) {
            body["directChat"] = request.directChat!;
        }
        if (!TeaUtils.Client.isUnset(request.filesShrink)) {
            body["files"] = request.filesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reuseLastSession)) {
            body["reuseLastSession"] = request.reuseLastSession!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.taskExecutionShrink)) {
            body["taskExecution"] = request.taskExecutionShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendChatMessage",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/sendChatMessage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendChatMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendChatMessage(_ request: SendChatMessageRequest) async throws -> SendChatMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendChatMessageWithOptions(request as! SendChatMessageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopChatMessageWithOptions(_ request: StopChatMessageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopChatMessageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopChatMessage",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/stopChatMessage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopChatMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopChatMessage(_ request: StopChatMessageRequest) async throws -> StopChatMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopChatMessageWithOptions(request as! StopChatMessageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func streamChatMessageWithOptions(_ messageId: String, _ request: StreamChatMessageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StreamChatMessageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lastEventId)) {
            query["lastEventId"] = request.lastEventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StreamChatMessage",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/streamChatMessage/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(messageId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StreamChatMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func streamChatMessage(_ messageId: String, _ request: StreamChatMessageRequest) async throws -> StreamChatMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await streamChatMessageWithOptions(messageId as! String, request as! StreamChatMessageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncOrgStructureWithOptions(_ tmpReq: SyncOrgStructureRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncOrgStructureResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SyncOrgStructureShrinkRequest = SyncOrgStructureShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.departments)) {
            request.departmentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.departments, "departments", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "members", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["corpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.departmentsShrink)) {
            body["departments"] = request.departmentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platformType)) {
            body["platformType"] = request.platformType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ssoSettingsId)) {
            body["ssoSettingsId"] = request.ssoSettingsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncMembers)) {
            body["syncMembers"] = request.syncMembers!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncOrgStructure",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/syncOrgStructure",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncOrgStructureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncOrgStructure(_ request: SyncOrgStructureRequest) async throws -> SyncOrgStructureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await syncOrgStructureWithOptions(request as! SyncOrgStructureRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func togglePrimaryObjectFavoriteWithOptions(_ tmpReq: TogglePrimaryObjectFavoriteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TogglePrimaryObjectFavoriteResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TogglePrimaryObjectFavoriteShrinkRequest = TogglePrimaryObjectFavoriteShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.objectIds)) {
            request.objectIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.objectIds, "objectIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.action)) {
            body["action"] = request.action ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectIdsShrink)) {
            body["objectIds"] = request.objectIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            body["objectType"] = request.objectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TogglePrimaryObjectFavorite",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/togglePrimaryObjectFavorite",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TogglePrimaryObjectFavoriteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func togglePrimaryObjectFavorite(_ request: TogglePrimaryObjectFavoriteRequest) async throws -> TogglePrimaryObjectFavoriteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await togglePrimaryObjectFavoriteWithOptions(request as! TogglePrimaryObjectFavoriteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgentAuthModeWithOptions(_ request: UpdateAgentAuthModeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAgentAuthModeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMode)) {
            body["authMode"] = request.authMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAgentAuthMode",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/updateAgentAuthMode",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAgentAuthModeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgentAuthMode(_ request: UpdateAgentAuthModeRequest) async throws -> UpdateAgentAuthModeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAgentAuthModeWithOptions(request as! UpdateAgentAuthModeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateChatSessionWithOptions(_ request: UpdateChatSessionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateChatSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateChatSession",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/updateChatSession",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateChatSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateChatSession(_ request: UpdateChatSessionRequest) async throws -> UpdateChatSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateChatSessionWithOptions(request as! UpdateChatSessionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDirectoryWithOptions(_ request: UpdateDirectoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["parentId"] = request.parentId!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            body["path"] = request.path ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDirectory",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/updateDirectory",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDirectory(_ request: UpdateDirectoryRequest) async throws -> UpdateDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDirectoryWithOptions(request as! UpdateDirectoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateKnowledgeBaseDirectoryWithOptions(_ request: UpdateKnowledgeBaseDirectoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateKnowledgeBaseDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentDirectoryId)) {
            body["parentDirectoryId"] = request.parentDirectoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateKnowledgeBaseDirectory",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/updateKnowledgeBaseDirectory",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateKnowledgeBaseDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateKnowledgeBaseDirectory(_ request: UpdateKnowledgeBaseDirectoryRequest) async throws -> UpdateKnowledgeBaseDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateKnowledgeBaseDirectoryWithOptions(request as! UpdateKnowledgeBaseDirectoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateKnowledgeBaseSourceContentWithOptions(_ request: UpdateKnowledgeBaseSourceContentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateKnowledgeBaseSourceContentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceSync)) {
            body["forceSync"] = request.forceSync!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateKnowledgeBaseSourceContent",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/updateKnowledgeBaseSourceContent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateKnowledgeBaseSourceContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateKnowledgeBaseSourceContent(_ request: UpdateKnowledgeBaseSourceContentRequest) async throws -> UpdateKnowledgeBaseSourceContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateKnowledgeBaseSourceContentWithOptions(request as! UpdateKnowledgeBaseSourceContentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateKnowledgeBaseSourceTagsWithOptions(_ request: UpdateKnowledgeBaseSourceTagsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateKnowledgeBaseSourceTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTags)) {
            body["sourceTags"] = request.sourceTags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateKnowledgeBaseSourceTags",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/updateKnowledgeBaseSourceTags",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateKnowledgeBaseSourceTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateKnowledgeBaseSourceTags(_ request: UpdateKnowledgeBaseSourceTagsRequest) async throws -> UpdateKnowledgeBaseSourceTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateKnowledgeBaseSourceTagsWithOptions(request as! UpdateKnowledgeBaseSourceTagsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScheduledTaskWithOptions(_ tmpReq: UpdateScheduledTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateScheduledTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateScheduledTaskShrinkRequest = UpdateScheduledTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.description_)) {
            request.descriptionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.description_, "description", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.digitalEmployeeName)) {
            request.digitalEmployeeNameShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.digitalEmployeeName, "digitalEmployeeName", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.segments)) {
            request.segmentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.segments, "segments", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.taskDetail)) {
            request.taskDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.taskDetail, "taskDetail", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.triggerConfig)) {
            request.triggerConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.triggerConfig, "triggerConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.visibleMemberUserIds)) {
            request.visibleMemberUserIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.visibleMemberUserIds, "visibleMemberUserIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.descriptionShrink)) {
            body["description"] = request.descriptionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digitalEmployeeNameShrink)) {
            body["digitalEmployeeName"] = request.digitalEmployeeNameShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isOpen)) {
            body["isOpen"] = request.isOpen!;
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.segmentsShrink)) {
            body["segments"] = request.segmentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDetailShrink)) {
            body["taskDetail"] = request.taskDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerConfigShrink)) {
            body["triggerConfig"] = request.triggerConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibility)) {
            body["visibility"] = request.visibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibleMemberUserIdsShrink)) {
            body["visibleMemberUserIds"] = request.visibleMemberUserIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateScheduledTask",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/updateScheduledTask",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateScheduledTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScheduledTask(_ request: UpdateScheduledTaskRequest) async throws -> UpdateScheduledTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateScheduledTaskWithOptions(request as! UpdateScheduledTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSourceContentWithOptions(_ request: UpdateSourceContentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSourceContentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceSync)) {
            body["forceSync"] = request.forceSync!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSourceContent",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/updateSourceContent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSourceContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSourceContent(_ request: UpdateSourceContentRequest) async throws -> UpdateSourceContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSourceContentWithOptions(request as! UpdateSourceContentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTenantDirectoryWithOptions(_ request: UpdateTenantDirectoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTenantDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["parentId"] = request.parentId!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            body["path"] = request.path ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTenantDirectory",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/updateTenantDirectory",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTenantDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTenantDirectory(_ request: UpdateTenantDirectoryRequest) async throws -> UpdateTenantDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTenantDirectoryWithOptions(request as! UpdateTenantDirectoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserWithOptions(_ tmpReq: UpdateUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateUserShrinkRequest = UpdateUserShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.roleCodes)) {
            request.roleCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.roleCodes, "roleCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userGroupIds)) {
            request.userGroupIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userGroupIds, "userGroupIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isActive)) {
            body["isActive"] = request.isActive!;
        }
        if (!TeaUtils.Client.isUnset(request.roleCodesShrink)) {
            body["roleCodes"] = request.roleCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIdsShrink)) {
            body["userGroupIds"] = request.userGroupIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wnUserId)) {
            body["wnUserId"] = request.wnUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUser",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/updateUser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUser(_ request: UpdateUserRequest) async throws -> UpdateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateUserWithOptions(request as! UpdateUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserGroupWithOptions(_ request: UpdateUserGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moveToRoot)) {
            body["moveToRoot"] = request.moveToRoot!;
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["parentId"] = request.parentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            body["userGroupId"] = request.userGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupName)) {
            body["userGroupName"] = request.userGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserGroup",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/updateUserGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserGroup(_ request: UpdateUserGroupRequest) async throws -> UpdateUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateUserGroupWithOptions(request as! UpdateUserGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserInfoWithOptions(_ request: UpdateUserInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.avatar)) {
            body["avatar"] = request.avatar ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.languagePreference)) {
            body["languagePreference"] = request.languagePreference ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offering)) {
            body["offering"] = request.offering ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileRoleInfo)) {
            body["profileRoleInfo"] = request.profileRoleInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selfIntroduction)) {
            body["selfIntroduction"] = request.selfIntroduction ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserInfo",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/updateUserInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserInfo(_ request: UpdateUserInfoRequest) async throws -> UpdateUserInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateUserInfoWithOptions(request as! UpdateUserInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadChatFileWithOptions(_ request: UploadChatFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadChatFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentType)) {
            body["contentType"] = request.contentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            body["fileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatingObjectName)) {
            body["operatingObjectName"] = request.operatingObjectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadChatFile",
            "version": "2026-05-12",
            "protocol": "HTTPS",
            "pathname": "/openapi/uploadChatFile",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadChatFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadChatFile(_ request: UploadChatFileRequest) async throws -> UploadChatFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await uploadChatFileWithOptions(request as! UploadChatFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadChatFileAdvance(_ request: UploadChatFileAdvanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadChatFileResponse {
        var credentialModel: AlibabaCloudCredentials.CredentialModel? = nil
        if (TeaUtils.Client.isUnset(self._credential)) {
            throw Tea.ReuqestError([
                "code": "InvalidCredentials",
                "message": "Please set up the credentials correctly. If you are setting them through environment variables, please ensure that ALIBABA_CLOUD_ACCESS_KEY_ID and ALIBABA_CLOUD_ACCESS_KEY_SECRET are set correctly. See https://help.aliyun.com/zh/sdk/developer-reference/configure-the-alibaba-cloud-accesskey-environment-variable-on-linux-macos-and-windows-systems for more details."
            ])
        }
        credentialModel = try await self._credential!.getCredential()
        var accessKeyId: String = credentialModel.accessKeyId ?? ""
        var accessKeySecret: String = credentialModel.accessKeySecret ?? ""
        var securityToken: String = credentialModel.securityToken ?? ""
        var credentialType: String = credentialModel.type ?? ""
        var openPlatformEndpoint: String = self._openPlatformEndpoint ?? ""
        if (TeaUtils.Client.empty(openPlatformEndpoint)) {
            openPlatformEndpoint = "openplatform.aliyuncs.com"
        }
        if (TeaUtils.Client.isUnset(credentialType)) {
            credentialType = "access_key"
        }
        var authConfig: AlibabacloudOpenApi.Config = AlibabacloudOpenApi.Config([
            "accessKeyId": accessKeyId as! String,
            "accessKeySecret": accessKeySecret as! String,
            "securityToken": securityToken as! String,
            "type": credentialType as! String,
            "endpoint": openPlatformEndpoint as! String,
            "protocol": self._protocol ?? "",
            "regionId": self._regionId ?? ""
        ])
        var authClient: AlibabacloudOpenApi.Client = try AlibabacloudOpenApi.Client(authConfig)
        var authRequest: [String: String] = [
            "Product": "WinNexo",
            "RegionId": self._regionId ?? ""
        ]
        var authReq: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(authRequest)
        ])
        var authParams: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeFileUpload",
            "version": "2019-12-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var authResponse: [String: Any] = [:]
        var fileObj: TeaFileForm.FileField = TeaFileForm.FileField([:])
        var ossHeader: [String: Any] = [:]
        var tmpBody: [String: Any] = [:]
        var useAccelerate: Bool = false
        var authResponseBody: [String: String] = [:]
        var uploadChatFileReq: UploadChatFileRequest = UploadChatFileRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, uploadChatFileReq)
        if (!TeaUtils.Client.isUnset(request.fileUrlObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.fileUrlObject!,
                "contentType": ""
            ])
            ossHeader = [
                "host": AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponseBody["Endpoint"], useAccelerate, self._endpointType),
                "OSSAccessKeyId": authResponseBody["AccessKeyId"] ?? "",
                "policy": authResponseBody["EncodedPolicy"] ?? "",
                "Signature": authResponseBody["Signature"] ?? "",
                "key": authResponseBody["ObjectKey"] ?? "",
                "file": fileObj as! TeaFileForm.FileField,
                "success_action_status": "201"
            ]
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            uploadChatFileReq.fileUrl = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var uploadChatFileResp: UploadChatFileResponse = try await uploadChatFileWithOptions(uploadChatFileReq as! UploadChatFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
        return uploadChatFileResp as! UploadChatFileResponse
    }
}
