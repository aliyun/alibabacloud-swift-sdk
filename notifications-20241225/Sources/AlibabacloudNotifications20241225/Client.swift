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
            "ap-southeast-1": "notifications-intl.aliyuncs.com",
            "cn-zhangjiakou": "notifications.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("notifications", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createWebhookContactWithOptions(_ request: CreateWebhookContactRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWebhookContactResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.botSecurityToken)) {
            body["BotSecurityToken"] = request.botSecurityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            body["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            body["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverUrl)) {
            body["ServerUrl"] = request.serverUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            body["TemplateCode"] = request.templateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verificationCode)) {
            body["VerificationCode"] = request.verificationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webhookType)) {
            body["WebhookType"] = request.webhookType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWebhookContact",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWebhookContactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWebhookContact(_ request: CreateWebhookContactRequest) async throws -> CreateWebhookContactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWebhookContactWithOptions(request as! CreateWebhookContactRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func delMessageWithOptions(_ request: DelMessageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DelMessageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.msgId)) {
            body["MsgId"] = request.msgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DelMessage",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DelMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func delMessage(_ request: DelMessageRequest) async throws -> DelMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await delMessageWithOptions(request as! DelMessageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAllMessageWithOptions(_ request: DeleteAllMessageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAllMessageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classId)) {
            body["ClassId"] = request.classId!;
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupCode)) {
            body["GroupCode"] = request.groupCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAllMessage",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAllMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAllMessage(_ request: DeleteAllMessageRequest) async throws -> DeleteAllMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAllMessageWithOptions(request as! DeleteAllMessageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWebhookContactWithOptions(_ request: DeleteWebhookContactRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWebhookContactResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWebhookContact",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWebhookContactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWebhookContact(_ request: DeleteWebhookContactRequest) async throws -> DeleteWebhookContactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteWebhookContactWithOptions(request as! DeleteWebhookContactRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readAllCommonContactsWithOptions(_ request: ReadAllCommonContactsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadAllCommonContactsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadAllCommonContacts",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadAllCommonContactsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readAllCommonContacts(_ request: ReadAllCommonContactsRequest) async throws -> ReadAllCommonContactsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readAllCommonContactsWithOptions(request as! ReadAllCommonContactsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readAllMarketingPreferencesWithOptions(_ request: ReadAllMarketingPreferencesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadAllMarketingPreferencesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadAllMarketingPreferences",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadAllMarketingPreferencesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readAllMarketingPreferences(_ request: ReadAllMarketingPreferencesRequest) async throws -> ReadAllMarketingPreferencesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readAllMarketingPreferencesWithOptions(request as! ReadAllMarketingPreferencesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readAllMessageWithOptions(_ request: ReadAllMessageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadAllMessageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classId)) {
            body["ClassId"] = request.classId!;
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupCode)) {
            body["GroupCode"] = request.groupCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadAllMessage",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadAllMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readAllMessage(_ request: ReadAllMessageRequest) async throws -> ReadAllMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readAllMessageWithOptions(request as! ReadAllMessageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readAllWebhookContactsWithOptions(_ request: ReadAllWebhookContactsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadAllWebhookContactsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadAllWebhookContacts",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadAllWebhookContactsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readAllWebhookContacts(_ request: ReadAllWebhookContactsRequest) async throws -> ReadAllWebhookContactsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readAllWebhookContactsWithOptions(request as! ReadAllWebhookContactsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readCategoryGroupListWithOptions(_ request: ReadCategoryGroupListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadCategoryGroupListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelGroupCode)) {
            body["ChannelGroupCode"] = request.channelGroupCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadCategoryGroupList",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadCategoryGroupListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readCategoryGroupList(_ request: ReadCategoryGroupListRequest) async throws -> ReadCategoryGroupListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readCategoryGroupListWithOptions(request as! ReadCategoryGroupListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readClassNameWithOptions(_ request: ReadClassNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadClassNameResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadClassName",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadClassNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readClassName(_ request: ReadClassNameRequest) async throws -> ReadClassNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readClassNameWithOptions(request as! ReadClassNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readCommonContactWithOptions(_ request: ReadCommonContactRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadCommonContactResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadCommonContact",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadCommonContactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readCommonContact(_ request: ReadCommonContactRequest) async throws -> ReadCommonContactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readCommonContactWithOptions(request as! ReadCommonContactRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMarketingPreferenceWithOptions(_ request: ReadMarketingPreferenceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadMarketingPreferenceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadMarketingPreference",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadMarketingPreferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMarketingPreference(_ request: ReadMarketingPreferenceRequest) async throws -> ReadMarketingPreferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readMarketingPreferenceWithOptions(request as! ReadMarketingPreferenceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMessageWithOptions(_ request: ReadMessageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadMessageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.msgId)) {
            body["MsgId"] = request.msgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadMessage",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMessage(_ request: ReadMessageRequest) async throws -> ReadMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readMessageWithOptions(request as! ReadMessageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMessageContentWithOptions(_ request: ReadMessageContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadMessageContentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classId)) {
            body["ClassId"] = request.classId!;
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupCode)) {
            body["GroupCode"] = request.groupCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.history)) {
            body["History"] = request.history!;
        }
        if (!TeaUtils.Client.isUnset(request.msgId)) {
            body["MsgId"] = request.msgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadMessageContent",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadMessageContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMessageContent(_ request: ReadMessageContentRequest) async throws -> ReadMessageContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readMessageContentWithOptions(request as! ReadMessageContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMessageLanguageWithOptions(_ request: ReadMessageLanguageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadMessageLanguageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnDefaultLang)) {
            body["ReturnDefaultLang"] = request.returnDefaultLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadMessageLanguage",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadMessageLanguageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMessageLanguage(_ request: ReadMessageLanguageRequest) async throws -> ReadMessageLanguageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readMessageLanguageWithOptions(request as! ReadMessageLanguageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMessageListWithOptions(_ request: ReadMessageListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadMessageListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classId)) {
            body["ClassId"] = request.classId!;
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupCode)) {
            body["GroupCode"] = request.groupCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.history)) {
            body["History"] = request.history ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loc)) {
            body["Loc"] = request.loc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadMessageList",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadMessageListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMessageList(_ request: ReadMessageListRequest) async throws -> ReadMessageListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readMessageListWithOptions(request as! ReadMessageListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMessageNewTotalWithOptions(_ request: ReadMessageNewTotalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadMessageNewTotalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadMessageNewTotal",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadMessageNewTotalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMessageNewTotal(_ request: ReadMessageNewTotalRequest) async throws -> ReadMessageNewTotalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readMessageNewTotalWithOptions(request as! ReadMessageNewTotalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMetaConfigWithOptions(_ request: ReadMetaConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadMetaConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadMetaConfig",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadMetaConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readMetaConfig(_ request: ReadMetaConfigRequest) async throws -> ReadMetaConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readMetaConfigWithOptions(request as! ReadMetaConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readNumGroupByClassWithOptions(_ request: ReadNumGroupByClassRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadNumGroupByClassResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadNumGroupByClass",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadNumGroupByClassResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readNumGroupByClass(_ request: ReadNumGroupByClassRequest) async throws -> ReadNumGroupByClassResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readNumGroupByClassWithOptions(request as! ReadNumGroupByClassRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readNumGroupTotalWithOptions(_ request: ReadNumGroupTotalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadNumGroupTotalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadNumGroupTotal",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadNumGroupTotalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readNumGroupTotal(_ request: ReadNumGroupTotalRequest) async throws -> ReadNumGroupTotalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readNumGroupTotalWithOptions(request as! ReadNumGroupTotalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readRevisionHistoryListWithOptions(_ tmpReq: ReadRevisionHistoryListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadRevisionHistoryListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ReadRevisionHistoryListShrinkRequest = ReadRevisionHistoryListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.pageInfo)) {
            request.pageInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.pageInfo, "PageInfo", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.categoryCode)) {
            body["CategoryCode"] = request.categoryCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelGroupCode)) {
            body["ChannelGroupCode"] = request.channelGroupCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageInfoShrink)) {
            body["PageInfo"] = request.pageInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadRevisionHistoryList",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadRevisionHistoryListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readRevisionHistoryList(_ request: ReadRevisionHistoryListRequest) async throws -> ReadRevisionHistoryListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readRevisionHistoryListWithOptions(request as! ReadRevisionHistoryListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readUserSubscriptionListWithOptions(_ request: ReadUserSubscriptionListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadUserSubscriptionListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.categoryGroupCode)) {
            body["CategoryGroupCode"] = request.categoryGroupCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelGroupCode)) {
            body["ChannelGroupCode"] = request.channelGroupCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadUserSubscriptionList",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadUserSubscriptionListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readUserSubscriptionList(_ request: ReadUserSubscriptionListRequest) async throws -> ReadUserSubscriptionListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readUserSubscriptionListWithOptions(request as! ReadUserSubscriptionListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readWebhookContactWithOptions(_ request: ReadWebhookContactRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadWebhookContactResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadWebhookContact",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadWebhookContactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readWebhookContact(_ request: ReadWebhookContactRequest) async throws -> ReadWebhookContactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readWebhookContactWithOptions(request as! ReadWebhookContactRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readWebhookContactSendTemplateListWithOptions(_ request: ReadWebhookContactSendTemplateListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReadWebhookContactSendTemplateListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            body["TemplateCode"] = request.templateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReadWebhookContactSendTemplateList",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReadWebhookContactSendTemplateListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func readWebhookContactSendTemplateList(_ request: ReadWebhookContactSendTemplateListRequest) async throws -> ReadWebhookContactSendTemplateListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await readWebhookContactSendTemplateListWithOptions(request as! ReadWebhookContactSendTemplateListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetUserSubscriptionWithOptions(_ tmpReq: ResetUserSubscriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetUserSubscriptionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ResetUserSubscriptionShrinkRequest = ResetUserSubscriptionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.categoryCodes)) {
            request.categoryCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.categoryCodes, "CategoryCodes", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.categoryCodesShrink)) {
            body["CategoryCodes"] = request.categoryCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelGroupCode)) {
            body["ChannelGroupCode"] = request.channelGroupCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarks)) {
            body["Remarks"] = request.remarks ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetUserSubscription",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetUserSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetUserSubscription(_ request: ResetUserSubscriptionRequest) async throws -> ResetUserSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetUserSubscriptionWithOptions(request as! ResetUserSubscriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func testWebhookContactWithOptions(_ request: TestWebhookContactRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TestWebhookContactResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.botSecurityToken)) {
            body["BotSecurityToken"] = request.botSecurityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            body["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverUrl)) {
            body["ServerUrl"] = request.serverUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            body["TemplateCode"] = request.templateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webhookType)) {
            body["WebhookType"] = request.webhookType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TestWebhookContact",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TestWebhookContactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func testWebhookContact(_ request: TestWebhookContactRequest) async throws -> TestWebhookContactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await testWebhookContactWithOptions(request as! TestWebhookContactRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMarketingPreferenceWithOptions(_ request: UpdateMarketingPreferenceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMarketingPreferenceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.allowMarketing)) {
            body["AllowMarketing"] = request.allowMarketing!;
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMarketingPreference",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMarketingPreferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMarketingPreference(_ request: UpdateMarketingPreferenceRequest) async throws -> UpdateMarketingPreferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMarketingPreferenceWithOptions(request as! UpdateMarketingPreferenceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMessageLanguageWithOptions(_ request: UpdateMessageLanguageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMessageLanguageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferLang)) {
            body["PreferLang"] = request.preferLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMessageLanguage",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMessageLanguageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMessageLanguage(_ request: UpdateMessageLanguageRequest) async throws -> UpdateMessageLanguageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMessageLanguageWithOptions(request as! UpdateMessageLanguageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserSubscriptionWithOptions(_ tmpReq: UpdateUserSubscriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserSubscriptionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateUserSubscriptionShrinkRequest = UpdateUserSubscriptionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.categoryCodes)) {
            request.categoryCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.categoryCodes, "CategoryCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.channelConfigs)) {
            request.channelConfigsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.channelConfigs, "ChannelConfigs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.commonContacts)) {
            request.commonContactsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.commonContacts, "CommonContacts", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.receiveTimeList)) {
            request.receiveTimeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.receiveTimeList, "ReceiveTimeList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.webhookContacts)) {
            request.webhookContactsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.webhookContacts, "WebhookContacts", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.categoryCodesShrink)) {
            body["CategoryCodes"] = request.categoryCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelConfigsShrink)) {
            body["ChannelConfigs"] = request.channelConfigsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelGroupCode)) {
            body["ChannelGroupCode"] = request.channelGroupCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commonContactsShrink)) {
            body["CommonContacts"] = request.commonContactsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationItemCode)) {
            body["OperationItemCode"] = request.operationItemCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receiveTimeListShrink)) {
            body["ReceiveTimeList"] = request.receiveTimeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarks)) {
            body["Remarks"] = request.remarks ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webhookContactsShrink)) {
            body["WebhookContacts"] = request.webhookContactsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserSubscription",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserSubscription(_ request: UpdateUserSubscriptionRequest) async throws -> UpdateUserSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUserSubscriptionWithOptions(request as! UpdateUserSubscriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWebhookContactWithOptions(_ request: UpdateWebhookContactRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWebhookContactResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.botSecurityToken)) {
            body["BotSecurityToken"] = request.botSecurityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerProtocol)) {
            body["CallerProtocol"] = request.callerProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSource)) {
            body["ClientSource"] = request.clientSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            body["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cookies)) {
            body["Cookies"] = request.cookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            body["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverUrl)) {
            body["ServerUrl"] = request.serverUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUrl)) {
            body["SrcUrl"] = request.srcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            body["TemplateCode"] = request.templateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantCode)) {
            body["TenantCode"] = request.tenantCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uidType)) {
            body["UidType"] = request.uidType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verificationCode)) {
            body["VerificationCode"] = request.verificationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webhookType)) {
            body["WebhookType"] = request.webhookType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWebhookContact",
            "version": "2024-12-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWebhookContactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWebhookContact(_ request: UpdateWebhookContactRequest) async throws -> UpdateWebhookContactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWebhookContactWithOptions(request as! UpdateWebhookContactRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
