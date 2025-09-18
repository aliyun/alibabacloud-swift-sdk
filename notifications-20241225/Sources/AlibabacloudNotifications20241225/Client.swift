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
}
