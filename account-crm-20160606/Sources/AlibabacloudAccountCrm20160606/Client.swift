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
        self._endpoint = try getEndpoint("account-crm", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func accountOneKeyDeleteWithOptions(_ request: AccountOneKeyDeleteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AccountOneKeyDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AccountOneKeyDelete",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AccountOneKeyDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accountOneKeyDelete(_ request: AccountOneKeyDeleteRequest) async throws -> AccountOneKeyDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await accountOneKeyDeleteWithOptions(request as! AccountOneKeyDeleteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addCustomerLabelWithOptions(_ request: AddCustomerLabelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddCustomerLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endtime)) {
            query["Endtime"] = request.endtime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelSeries)) {
            query["LabelSeries"] = request.labelSeries ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelTypes)) {
            query["LabelTypes"] = request.labelTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.organization)) {
            query["Organization"] = request.organization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddCustomerLabel",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddCustomerLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addCustomerLabel(_ request: AddCustomerLabelRequest) async throws -> AddCustomerLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addCustomerLabelWithOptions(request as! AddCustomerLabelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allowAgAccountLoginWithOptions(_ request: AllowAgAccountLoginRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AllowAgAccountLoginResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agAccountType)) {
            query["AgAccountType"] = request.agAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AllowAgAccountLogin",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AllowAgAccountLoginResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allowAgAccountLogin(_ request: AllowAgAccountLoginRequest) async throws -> AllowAgAccountLoginResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await allowAgAccountLoginWithOptions(request as! AllowAgAccountLoginRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyAgOneKeyDeleteTaskWithOptions(_ request: ApplyAgOneKeyDeleteTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyAgOneKeyDeleteTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.abandonedDependency)) {
            query["AbandonedDependency"] = request.abandonedDependency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agAccountType)) {
            query["AgAccountType"] = request.agAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyAgOneKeyDeleteTask",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyAgOneKeyDeleteTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyAgOneKeyDeleteTask(_ request: ApplyAgOneKeyDeleteTaskRequest) async throws -> ApplyAgOneKeyDeleteTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyAgOneKeyDeleteTaskWithOptions(request as! ApplyAgOneKeyDeleteTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyAgOneKeyOnlyCheckerTaskWithOptions(_ request: ApplyAgOneKeyOnlyCheckerTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyAgOneKeyOnlyCheckerTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agAccountType)) {
            query["AgAccountType"] = request.agAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyAgOneKeyOnlyCheckerTask",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyAgOneKeyOnlyCheckerTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyAgOneKeyOnlyCheckerTask(_ request: ApplyAgOneKeyOnlyCheckerTaskRequest) async throws -> ApplyAgOneKeyOnlyCheckerTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyAgOneKeyOnlyCheckerTaskWithOptions(request as! ApplyAgOneKeyOnlyCheckerTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyIdentityRegistrationWithOptions(_ request: ApplyIdentityRegistrationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyIdentityRegistrationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType!;
        }
        if (!TeaUtils.Client.isUnset(request.customerId)) {
            query["CustomerId"] = request.customerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docBackPic)) {
            query["DocBackPic"] = request.docBackPic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docFrontPic)) {
            query["DocFrontPic"] = request.docFrontPic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docNum)) {
            query["DocNum"] = request.docNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docType)) {
            query["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fullName)) {
            query["FullName"] = request.fullName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registeredAddress)) {
            query["RegisteredAddress"] = request.registeredAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registeredCountry)) {
            query["RegisteredCountry"] = request.registeredCountry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registeredNum)) {
            query["RegisteredNum"] = request.registeredNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tel)) {
            query["Tel"] = request.tel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyIdentityRegistration",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyIdentityRegistrationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyIdentityRegistration(_ request: ApplyIdentityRegistrationRequest) async throws -> ApplyIdentityRegistrationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyIdentityRegistrationWithOptions(request as! ApplyIdentityRegistrationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func asyncCreateAgAccountWithOptions(_ request: AsyncCreateAgAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AsyncCreateAgAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.loginEmail)) {
            query["LoginEmail"] = request.loginEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maserAccountInfo)) {
            query["MaserAccountInfo"] = request.maserAccountInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AsyncCreateAgAccount",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AsyncCreateAgAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func asyncCreateAgAccount(_ request: AsyncCreateAgAccountRequest) async throws -> AsyncCreateAgAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await asyncCreateAgAccountWithOptions(request as! AsyncCreateAgAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func asyncModifyAgLoginEmailWithOptions(_ request: AsyncModifyAgLoginEmailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AsyncModifyAgLoginEmailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newLoginEmail)) {
            query["NewLoginEmail"] = request.newLoginEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AsyncModifyAgLoginEmail",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AsyncModifyAgLoginEmailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func asyncModifyAgLoginEmail(_ request: AsyncModifyAgLoginEmailRequest) async throws -> AsyncModifyAgLoginEmailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await asyncModifyAgLoginEmailWithOptions(request as! AsyncModifyAgLoginEmailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authAndActiveWithHidWithOptions(_ request: AuthAndActiveWithHidRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthAndActiveWithHidResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.havanaId)) {
            query["HavanaId"] = request.havanaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["SessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthAndActiveWithHid",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthAndActiveWithHidResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authAndActiveWithHid(_ request: AuthAndActiveWithHidRequest) async throws -> AuthAndActiveWithHidResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authAndActiveWithHidWithOptions(request as! AuthAndActiveWithHidRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authAndRefreshLoginTicketWithOptions(_ request: AuthAndRefreshLoginTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthAndRefreshLoginTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.havanaId)) {
            query["HavanaId"] = request.havanaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["SessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthAndRefreshLoginTicket",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthAndRefreshLoginTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authAndRefreshLoginTicket(_ request: AuthAndRefreshLoginTicketRequest) async throws -> AuthAndRefreshLoginTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authAndRefreshLoginTicketWithOptions(request as! AuthAndRefreshLoginTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authLoginTicketWithOptions(_ request: AuthLoginTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthLoginTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authCode)) {
            query["AuthCode"] = request.authCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minorAuthCode)) {
            query["MinorAuthCode"] = request.minorAuthCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            query["Scene"] = request.scene ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthLoginTicket",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthLoginTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authLoginTicket(_ request: AuthLoginTicketRequest) async throws -> AuthLoginTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authLoginTicketWithOptions(request as! AuthLoginTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchQueryAgAccountWithOptions(_ request: BatchQueryAgAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchQueryAgAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pkList)) {
            query["PkList"] = request.pkList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchQueryAgAccount",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchQueryAgAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchQueryAgAccount(_ request: BatchQueryAgAccountRequest) async throws -> BatchQueryAgAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchQueryAgAccountWithOptions(request as! BatchQueryAgAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchQueryCreateAccountTraceWithOptions(_ request: BatchQueryCreateAccountTraceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchQueryCreateAccountTraceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceNoList)) {
            query["TraceNoList"] = request.traceNoList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchQueryCreateAccountTrace",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchQueryCreateAccountTraceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchQueryCreateAccountTrace(_ request: BatchQueryCreateAccountTraceRequest) async throws -> BatchQueryCreateAccountTraceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchQueryCreateAccountTraceWithOptions(request as! BatchQueryCreateAccountTraceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchQueryModifyLoginEmailTraceWithOptions(_ request: BatchQueryModifyLoginEmailTraceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchQueryModifyLoginEmailTraceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceNoList)) {
            query["TraceNoList"] = request.traceNoList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchQueryModifyLoginEmailTrace",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchQueryModifyLoginEmailTraceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchQueryModifyLoginEmailTrace(_ request: BatchQueryModifyLoginEmailTraceRequest) async throws -> BatchQueryModifyLoginEmailTraceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchQueryModifyLoginEmailTraceWithOptions(request as! BatchQueryModifyLoginEmailTraceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelAsyncCreateAgAccountWithOptions(_ request: CancelAsyncCreateAgAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelAsyncCreateAgAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceNo)) {
            query["TraceNo"] = request.traceNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelAsyncCreateAgAccount",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelAsyncCreateAgAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelAsyncCreateAgAccount(_ request: CancelAsyncCreateAgAccountRequest) async throws -> CancelAsyncCreateAgAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelAsyncCreateAgAccountWithOptions(request as! CancelAsyncCreateAgAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelAsyncModifyLoginEmailWithOptions(_ request: CancelAsyncModifyLoginEmailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelAsyncModifyLoginEmailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceNo)) {
            query["TraceNo"] = request.traceNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelAsyncModifyLoginEmail",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelAsyncModifyLoginEmailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelAsyncModifyLoginEmail(_ request: CancelAsyncModifyLoginEmailRequest) async throws -> CancelAsyncModifyLoginEmailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelAsyncModifyLoginEmailWithOptions(request as! CancelAsyncModifyLoginEmailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeAgAccountNationalityCodeWithOptions(_ request: ChangeAgAccountNationalityCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeAgAccountNationalityCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nationalityCode)) {
            query["NationalityCode"] = request.nationalityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeAgAccountNationalityCode",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeAgAccountNationalityCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeAgAccountNationalityCode(_ request: ChangeAgAccountNationalityCodeRequest) async throws -> ChangeAgAccountNationalityCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeAgAccountNationalityCodeWithOptions(request as! ChangeAgAccountNationalityCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeAgSecurityEmailWithOptions(_ request: ChangeAgSecurityEmailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeAgSecurityEmailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityEmail)) {
            query["SecurityEmail"] = request.securityEmail ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeAgSecurityEmail",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeAgSecurityEmailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeAgSecurityEmail(_ request: ChangeAgSecurityEmailRequest) async throws -> ChangeAgSecurityEmailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeAgSecurityEmailWithOptions(request as! ChangeAgSecurityEmailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeAgSecurityMobileWithOptions(_ request: ChangeAgSecurityMobileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeAgSecurityMobileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityMobile)) {
            query["SecurityMobile"] = request.securityMobile ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeAgSecurityMobile",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeAgSecurityMobileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeAgSecurityMobile(_ request: ChangeAgSecurityMobileRequest) async throws -> ChangeAgSecurityMobileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeAgSecurityMobileWithOptions(request as! ChangeAgSecurityMobileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAccountProfileInfoWithOptions(_ request: CreateAccountProfileInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAccountProfileInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountJson)) {
            query["AccountJson"] = request.accountJson ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAccountProfileInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAccountProfileInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAccountProfileInfo(_ request: CreateAccountProfileInfoRequest) async throws -> CreateAccountProfileInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAccountProfileInfoWithOptions(request as! CreateAccountProfileInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAgAccountWithOptions(_ request: CreateAgAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAgAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.loginEmail)) {
            query["LoginEmail"] = request.loginEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nationCode)) {
            query["NationCode"] = request.nationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.own)) {
            query["Own"] = request.own ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realParentPk)) {
            query["RealParentPk"] = request.realParentPk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityMobile)) {
            query["SecurityMobile"] = request.securityMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showNickName)) {
            query["ShowNickName"] = request.showNickName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.siteNick)) {
            query["SiteNick"] = request.siteNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcAccountInfo)) {
            query["srcAccountInfo"] = request.srcAccountInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAgAccount",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAgAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAgAccount(_ request: CreateAgAccountRequest) async throws -> CreateAgAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAgAccountWithOptions(request as! CreateAgAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createContacterWithOptions(_ request: CreateContacterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateContacterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contacterAddress)) {
            query["ContacterAddress"] = request.contacterAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterDingding)) {
            query["ContacterDingding"] = request.contacterDingding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterEmail)) {
            query["ContacterEmail"] = request.contacterEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterMobile)) {
            query["ContacterMobile"] = request.contacterMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterName)) {
            query["ContacterName"] = request.contacterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterPosition)) {
            query["ContacterPosition"] = request.contacterPosition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterStaffNo)) {
            query["ContacterStaffNo"] = request.contacterStaffNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterType)) {
            query["ContacterType"] = request.contacterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterWangwang)) {
            query["ContacterWangwang"] = request.contacterWangwang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emailConfirmed)) {
            query["EmailConfirmed"] = request.emailConfirmed!;
        }
        if (!TeaUtils.Client.isUnset(request.mobileConfirmed)) {
            query["MobileConfirmed"] = request.mobileConfirmed!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateContacter",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateContacterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createContacter(_ request: CreateContacterRequest) async throws -> CreateContacterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createContacterWithOptions(request as! CreateContacterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRealNameCertificationWithOptions(_ request: CreateRealNameCertificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRealNameCertificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountCertifyType)) {
            query["AccountCertifyType"] = request.accountCertifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corporateLicenseNumber)) {
            query["CorporateLicenseNumber"] = request.corporateLicenseNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corporateName)) {
            query["CorporateName"] = request.corporateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.licenseNumber)) {
            query["LicenseNumber"] = request.licenseNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.licenseType)) {
            query["LicenseType"] = request.licenseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRealNameCertification",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRealNameCertificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRealNameCertification(_ request: CreateRealNameCertificationRequest) async throws -> CreateRealNameCertificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRealNameCertificationWithOptions(request as! CreateRealNameCertificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func customerSensitiveInfoLogicalDeleteWithOptions(_ request: CustomerSensitiveInfoLogicalDeleteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CustomerSensitiveInfoLogicalDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CustomerSensitiveInfoLogicalDelete",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CustomerSensitiveInfoLogicalDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func customerSensitiveInfoLogicalDelete(_ request: CustomerSensitiveInfoLogicalDeleteRequest) async throws -> CustomerSensitiveInfoLogicalDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await customerSensitiveInfoLogicalDeleteWithOptions(request as! CustomerSensitiveInfoLogicalDeleteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func customerSensitiveInfoPhysicalDeleteWithOptions(_ request: CustomerSensitiveInfoPhysicalDeleteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CustomerSensitiveInfoPhysicalDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CustomerSensitiveInfoPhysicalDelete",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CustomerSensitiveInfoPhysicalDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func customerSensitiveInfoPhysicalDelete(_ request: CustomerSensitiveInfoPhysicalDeleteRequest) async throws -> CustomerSensitiveInfoPhysicalDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await customerSensitiveInfoPhysicalDeleteWithOptions(request as! CustomerSensitiveInfoPhysicalDeleteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func delCacheOperateSyncWithOptions(_ request: DelCacheOperateSyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DelCacheOperateSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DelCacheOperateSync",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DelCacheOperateSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func delCacheOperateSync(_ request: DelCacheOperateSyncRequest) async throws -> DelCacheOperateSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await delCacheOperateSyncWithOptions(request as! DelCacheOperateSyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteContacterWithOptions(_ request: DeleteContacterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteContacterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contacterId)) {
            query["ContacterId"] = request.contacterId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteContacter",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteContacterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteContacter(_ request: DeleteContacterRequest) async throws -> DeleteContacterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteContacterWithOptions(request as! DeleteContacterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomerLabelWithOptions(_ request: DeleteCustomerLabelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCustomerLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelSeries)) {
            query["LabelSeries"] = request.labelSeries ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelTypes)) {
            query["LabelTypes"] = request.labelTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.organization)) {
            query["Organization"] = request.organization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK!;
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCustomerLabel",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCustomerLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomerLabel(_ request: DeleteCustomerLabelRequest) async throws -> DeleteCustomerLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCustomerLabelWithOptions(request as! DeleteCustomerLabelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func existBindsByOuterIdWithOptions(_ request: ExistBindsByOuterIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExistBindsByOuterIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExistBindsByOuterId",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExistBindsByOuterIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func existBindsByOuterId(_ request: ExistBindsByOuterIdRequest) async throws -> ExistBindsByOuterIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await existBindsByOuterIdWithOptions(request as! ExistBindsByOuterIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findAllContacterWithOptions(_ request: FindAllContacterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindAllContacterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localeString)) {
            query["LocaleString"] = request.localeString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindAllContacter",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindAllContacterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findAllContacter(_ request: FindAllContacterRequest) async throws -> FindAllContacterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findAllContacterWithOptions(request as! FindAllContacterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findBizCategoryConfigWithOptions(_ request: FindBizCategoryConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindBizCategoryConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.localeString)) {
            query["LocaleString"] = request.localeString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindBizCategoryConfig",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindBizCategoryConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findBizCategoryConfig(_ request: FindBizCategoryConfigRequest) async throws -> FindBizCategoryConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findBizCategoryConfigWithOptions(request as! FindBizCategoryConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findContacterWithOptions(_ request: FindContacterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindContacterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contacterId)) {
            query["ContacterId"] = request.contacterId!;
        }
        if (!TeaUtils.Client.isUnset(request.localeString)) {
            query["LocaleString"] = request.localeString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindContacter",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindContacterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findContacter(_ request: FindContacterRequest) async throws -> FindContacterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findContacterWithOptions(request as! FindContacterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findCustomerInfoWithOptions(_ request: FindCustomerInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindCustomerInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindCustomerInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindCustomerInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findCustomerInfo(_ request: FindCustomerInfoRequest) async throws -> FindCustomerInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findCustomerInfoWithOptions(request as! FindCustomerInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findCustomerSnapshotWithOptions(_ request: FindCustomerSnapshotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindCustomerSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.infoType)) {
            query["InfoType"] = request.infoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk!;
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindCustomerSnapshot",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindCustomerSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findCustomerSnapshot(_ request: FindCustomerSnapshotRequest) async throws -> FindCustomerSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findCustomerSnapshotWithOptions(request as! FindCustomerSnapshotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findFinanceTaxWithOptions(_ request: FindFinanceTaxRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindFinanceTaxResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.HId)) {
            query["HId"] = request.HId!;
        }
        if (!TeaUtils.Client.isUnset(request.taxVersion)) {
            query["TaxVersion"] = request.taxVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindFinanceTax",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindFinanceTaxResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findFinanceTax(_ request: FindFinanceTaxRequest) async throws -> FindFinanceTaxResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findFinanceTaxWithOptions(request as! FindFinanceTaxRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findFinanceTaxDetailWithOptions(_ request: FindFinanceTaxDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindFinanceTaxDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.kpId)) {
            query["KpId"] = request.kpId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindFinanceTaxDetail",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindFinanceTaxDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findFinanceTaxDetail(_ request: FindFinanceTaxDetailRequest) async throws -> FindFinanceTaxDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findFinanceTaxDetailWithOptions(request as! FindFinanceTaxDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findPkByHidForLoginWithLegacyWithOptions(_ request: FindPkByHidForLoginWithLegacyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindPkByHidForLoginWithLegacyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindPkByHidForLoginWithLegacy",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindPkByHidForLoginWithLegacyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findPkByHidForLoginWithLegacy(_ request: FindPkByHidForLoginWithLegacyRequest) async throws -> FindPkByHidForLoginWithLegacyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findPkByHidForLoginWithLegacyWithOptions(request as! FindPkByHidForLoginWithLegacyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func forbiddenAgAccountLoginWithOptions(_ request: ForbiddenAgAccountLoginRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ForbiddenAgAccountLoginResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agAccountType)) {
            query["AgAccountType"] = request.agAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ForbiddenAgAccountLogin",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ForbiddenAgAccountLoginResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func forbiddenAgAccountLogin(_ request: ForbiddenAgAccountLoginRequest) async throws -> ForbiddenAgAccountLoginResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await forbiddenAgAccountLoginWithOptions(request as! ForbiddenAgAccountLoginRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateAliyunCertUrlWithOptions(_ request: GenerateAliyunCertUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateAliyunCertUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunPk)) {
            query["AliyunPk"] = request.aliyunPk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applyChannel)) {
            query["ApplyChannel"] = request.applyChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applyType)) {
            query["ApplyType"] = request.applyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callback)) {
            query["Callback"] = request.callback ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certWay)) {
            query["CertWay"] = request.certWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreAlreadyCert)) {
            query["IgnoreAlreadyCert"] = request.ignoreAlreadyCert!;
        }
        if (!TeaUtils.Client.isUnset(request.isMobile)) {
            query["IsMobile"] = request.isMobile!;
        }
        if (!TeaUtils.Client.isUnset(request.isOpenApp)) {
            query["IsOpenApp"] = request.isOpenApp!;
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            query["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subjectType)) {
            query["SubjectType"] = request.subjectType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateAliyunCertUrl",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateAliyunCertUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateAliyunCertUrl(_ request: GenerateAliyunCertUrlRequest) async throws -> GenerateAliyunCertUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateAliyunCertUrlWithOptions(request as! GenerateAliyunCertUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgAccountAkWithOptions(_ request: GetAgAccountAkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAgAccountAkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agAccountType)) {
            query["AgAccountType"] = request.agAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAgAccountAk",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAgAccountAkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgAccountAk(_ request: GetAgAccountAkRequest) async throws -> GetAgAccountAkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAgAccountAkWithOptions(request as! GetAgAccountAkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgOneKeyDeleteTaskWithOptions(_ request: GetAgOneKeyDeleteTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAgOneKeyDeleteTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agAccountType)) {
            query["AgAccountType"] = request.agAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAgOneKeyDeleteTask",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAgOneKeyDeleteTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgOneKeyDeleteTask(_ request: GetAgOneKeyDeleteTaskRequest) async throws -> GetAgOneKeyDeleteTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAgOneKeyDeleteTaskWithOptions(request as! GetAgOneKeyDeleteTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgRelationWithOptions(_ request: GetAgRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAgRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agAccountType)) {
            query["AgAccountType"] = request.agAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAgRelation",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAgRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgRelation(_ request: GetAgRelationRequest) async throws -> GetAgRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAgRelationWithOptions(request as! GetAgRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAliyunIdByPkWithOptions(_ request: GetAliyunIdByPkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAliyunIdByPkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAliyunIdByPk",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAliyunIdByPkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAliyunIdByPk(_ request: GetAliyunIdByPkRequest) async throws -> GetAliyunIdByPkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAliyunIdByPkWithOptions(request as! GetAliyunIdByPkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAliyunPKByAliyunIDWithOptions(_ request: GetAliyunPKByAliyunIDRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAliyunPKByAliyunIDResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunId)) {
            query["AliyunId"] = request.aliyunId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.havanaId)) {
            query["HavanaId"] = request.havanaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAliyunPKByAliyunID",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAliyunPKByAliyunIDResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAliyunPKByAliyunID(_ request: GetAliyunPKByAliyunIDRequest) async throws -> GetAliyunPKByAliyunIDResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAliyunPKByAliyunIDWithOptions(request as! GetAliyunPKByAliyunIDRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerCategoryWithOptions(_ request: GetCustomerCategoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomerCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.localeString)) {
            query["LocaleString"] = request.localeString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomerCategory",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomerCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerCategory(_ request: GetCustomerCategoryRequest) async throws -> GetCustomerCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCustomerCategoryWithOptions(request as! GetCustomerCategoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerCategoryDictionaryWithOptions(_ request: GetCustomerCategoryDictionaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomerCategoryDictionaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomerCategoryDictionary",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomerCategoryDictionaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerCategoryDictionary(_ request: GetCustomerCategoryDictionaryRequest) async throws -> GetCustomerCategoryDictionaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCustomerCategoryDictionaryWithOptions(request as! GetCustomerCategoryDictionaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerInformationWithOptions(_ request: GetCustomerInformationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomerInformationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomerInformation",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomerInformationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerInformation(_ request: GetCustomerInformationRequest) async throws -> GetCustomerInformationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCustomerInformationWithOptions(request as! GetCustomerInformationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDingTalkUserOrgByAliyunTmpCodeWithOptions(_ request: GetDingTalkUserOrgByAliyunTmpCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDingTalkUserOrgByAliyunTmpCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDingTalkUserOrgByAliyunTmpCode",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDingTalkUserOrgByAliyunTmpCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDingTalkUserOrgByAliyunTmpCode(_ request: GetDingTalkUserOrgByAliyunTmpCodeRequest) async throws -> GetDingTalkUserOrgByAliyunTmpCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDingTalkUserOrgByAliyunTmpCodeWithOptions(request as! GetDingTalkUserOrgByAliyunTmpCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIdentityRegistrationByCustomerWithOptions(_ request: GetIdentityRegistrationByCustomerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIdentityRegistrationByCustomerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customerId)) {
            query["CustomerId"] = request.customerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIdentityRegistrationByCustomer",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIdentityRegistrationByCustomerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIdentityRegistrationByCustomer(_ request: GetIdentityRegistrationByCustomerRequest) async throws -> GetIdentityRegistrationByCustomerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getIdentityRegistrationByCustomerWithOptions(request as! GetIdentityRegistrationByCustomerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProfileTypeByPkWithOptions(_ request: GetProfileTypeByPkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProfileTypeByPkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProfileTypeByPk",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProfileTypeByPkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProfileTypeByPk(_ request: GetProfileTypeByPkRequest) async throws -> GetProfileTypeByPkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProfileTypeByPkWithOptions(request as! GetProfileTypeByPkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUploadIdentityRegistrationDocConfigWithOptions(_ request: GetUploadIdentityRegistrationDocConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUploadIdentityRegistrationDocConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customerId)) {
            query["CustomerId"] = request.customerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            query["FilePath"] = request.filePath ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUploadIdentityRegistrationDocConfig",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUploadIdentityRegistrationDocConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUploadIdentityRegistrationDocConfig(_ request: GetUploadIdentityRegistrationDocConfigRequest) async throws -> GetUploadIdentityRegistrationDocConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUploadIdentityRegistrationDocConfigWithOptions(request as! GetUploadIdentityRegistrationDocConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func incrByCacheOperateSyncWithOptions(_ request: IncrByCacheOperateSyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> IncrByCacheOperateSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defaultValue)) {
            query["DefaultValue"] = request.defaultValue!;
        }
        if (!TeaUtils.Client.isUnset(request.expireSeconds)) {
            query["ExpireSeconds"] = request.expireSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.step)) {
            query["Step"] = request.step!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IncrByCacheOperateSync",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IncrByCacheOperateSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func incrByCacheOperateSync(_ request: IncrByCacheOperateSyncRequest) async throws -> IncrByCacheOperateSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await incrByCacheOperateSyncWithOptions(request as! IncrByCacheOperateSyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func judgeAgExistQuietPeriodWithOptions(_ request: JudgeAgExistQuietPeriodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> JudgeAgExistQuietPeriodResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agAccountType)) {
            query["AgAccountType"] = request.agAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "JudgeAgExistQuietPeriod",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(JudgeAgExistQuietPeriodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func judgeAgExistQuietPeriod(_ request: JudgeAgExistQuietPeriodRequest) async throws -> JudgeAgExistQuietPeriodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await judgeAgExistQuietPeriodWithOptions(request as! JudgeAgExistQuietPeriodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func loadRealNameInfoByPkWithOptions(_ request: LoadRealNameInfoByPkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LoadRealNameInfoByPkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LoadRealNameInfoByPk",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LoadRealNameInfoByPkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func loadRealNameInfoByPk(_ request: LoadRealNameInfoByPkRequest) async throws -> LoadRealNameInfoByPkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await loadRealNameInfoByPkWithOptions(request as! LoadRealNameInfoByPkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mapFromHavanaBindIdWithOptions(_ tmpReq: MapFromHavanaBindIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MapFromHavanaBindIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: MapFromHavanaBindIdShrinkRequest = MapFromHavanaBindIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.havanaBindStations)) {
            request.havanaBindStationsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.havanaBindStations, "HavanaBindStations", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.havanaBindId)) {
            query["HavanaBindId"] = request.havanaBindId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.havanaBindStationsShrink)) {
            query["HavanaBindStations"] = request.havanaBindStationsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MapFromHavanaBindId",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MapFromHavanaBindIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mapFromHavanaBindId(_ request: MapFromHavanaBindIdRequest) async throws -> MapFromHavanaBindIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mapFromHavanaBindIdWithOptions(request as! MapFromHavanaBindIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mapPkFromHidWithOptions(_ request: MapPkFromHidRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MapPkFromHidResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hid)) {
            query["Hid"] = request.hid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mappingScenes)) {
            query["MappingScenes"] = request.mappingScenes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MapPkFromHid",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MapPkFromHidResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mapPkFromHid(_ request: MapPkFromHidRequest) async throws -> MapPkFromHidResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mapPkFromHidWithOptions(request as! MapPkFromHidRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mapPkToHidWithOptions(_ request: MapPkToHidRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MapPkToHidResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mappingScenes)) {
            query["MappingScenes"] = request.mappingScenes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MapPkToHid",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MapPkToHidResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mapPkToHid(_ request: MapPkToHidRequest) async throws -> MapPkToHidResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mapPkToHidWithOptions(request as! MapPkToHidRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mapToHavanaBindIdWithOptions(_ tmpReq: MapToHavanaBindIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MapToHavanaBindIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: MapToHavanaBindIdShrinkRequest = MapToHavanaBindIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.havanaBindStations)) {
            request.havanaBindStationsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.havanaBindStations, "HavanaBindStations", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.havanaBindStationsShrink)) {
            query["HavanaBindStations"] = request.havanaBindStationsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MapToHavanaBindId",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MapToHavanaBindIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mapToHavanaBindId(_ request: MapToHavanaBindIdRequest) async throws -> MapToHavanaBindIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mapToHavanaBindIdWithOptions(request as! MapToHavanaBindIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBizCategoryWithOptions(_ request: ModifyBizCategoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBizCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.paramList)) {
            query["ParamList"] = request.paramList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBizCategory",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBizCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBizCategory(_ request: ModifyBizCategoryRequest) async throws -> ModifyBizCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBizCategoryWithOptions(request as! ModifyBizCategoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyContacterWithOptions(_ request: ModifyContacterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyContacterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contacterAddress)) {
            query["ContacterAddress"] = request.contacterAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterDingding)) {
            query["ContacterDingding"] = request.contacterDingding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterEmail)) {
            query["ContacterEmail"] = request.contacterEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterId)) {
            query["ContacterId"] = request.contacterId!;
        }
        if (!TeaUtils.Client.isUnset(request.contacterMobile)) {
            query["ContacterMobile"] = request.contacterMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterName)) {
            query["ContacterName"] = request.contacterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterPosition)) {
            query["ContacterPosition"] = request.contacterPosition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterStaffNo)) {
            query["ContacterStaffNo"] = request.contacterStaffNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterType)) {
            query["ContacterType"] = request.contacterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contacterWangwang)) {
            query["ContacterWangwang"] = request.contacterWangwang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emailConfirmed)) {
            query["EmailConfirmed"] = request.emailConfirmed!;
        }
        if (!TeaUtils.Client.isUnset(request.mobileConfirmed)) {
            query["MobileConfirmed"] = request.mobileConfirmed!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyContacter",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyContacterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyContacter(_ request: ModifyContacterRequest) async throws -> ModifyContacterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyContacterWithOptions(request as! ModifyContacterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCustomerInfoWithOptions(_ request: ModifyCustomerInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCustomerInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.biz)) {
            query["Biz"] = request.biz ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerCategory)) {
            query["CustomerCategory"] = request.customerCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerSubCategory)) {
            query["CustomerSubCategory"] = request.customerSubCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        if (!TeaUtils.Client.isUnset(request.website)) {
            query["Website"] = request.website ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCustomerInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCustomerInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCustomerInfo(_ request: ModifyCustomerInfoRequest) async throws -> ModifyCustomerInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCustomerInfoWithOptions(request as! ModifyCustomerInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateFinanceTaxWithOptions(_ request: OperateFinanceTaxRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateFinanceTaxResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.financeTax)) {
            query["FinanceTax"] = request.financeTax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.financeTaxCertificateImgName)) {
            query["FinanceTaxCertificateImgName"] = request.financeTaxCertificateImgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.HId)) {
            query["HId"] = request.HId!;
        }
        if (!TeaUtils.Client.isUnset(request.secondFinanceTax)) {
            query["SecondFinanceTax"] = request.secondFinanceTax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondFinanceTaxCertificateImgName)) {
            query["SecondFinanceTaxCertificateImgName"] = request.secondFinanceTaxCertificateImgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondFinanceTaxCertificateImgUrl)) {
            query["SecondFinanceTaxCertificateImgUrl"] = request.secondFinanceTaxCertificateImgUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.financeTaxCertificateImgUrl)) {
            query["financeTaxCertificateImgUrl"] = request.financeTaxCertificateImgUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateFinanceTax",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateFinanceTaxResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateFinanceTax(_ request: OperateFinanceTaxRequest) async throws -> OperateFinanceTaxResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await operateFinanceTaxWithOptions(request as! OperateFinanceTaxRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountAddressInfoWithOptions(_ request: QueryAccountAddressInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccountAddressInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressVersion)) {
            query["AddressVersion"] = request.addressVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.havanaId)) {
            query["HavanaId"] = request.havanaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccountAddressInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccountAddressInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountAddressInfo(_ request: QueryAccountAddressInfoRequest) async throws -> QueryAccountAddressInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccountAddressInfoWithOptions(request as! QueryAccountAddressInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountAddressInfoWithoutHavanaWithOptions(_ request: QueryAccountAddressInfoWithoutHavanaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccountAddressInfoWithoutHavanaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressVersion)) {
            query["AddressVersion"] = request.addressVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.havanaId)) {
            query["HavanaId"] = request.havanaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccountAddressInfoWithoutHavana",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccountAddressInfoWithoutHavanaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountAddressInfoWithoutHavana(_ request: QueryAccountAddressInfoWithoutHavanaRequest) async throws -> QueryAccountAddressInfoWithoutHavanaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccountAddressInfoWithoutHavanaWithOptions(request as! QueryAccountAddressInfoWithoutHavanaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountDeliveryAddressInfoWithOptions(_ request: QueryAccountDeliveryAddressInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccountDeliveryAddressInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccountDeliveryAddressInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccountDeliveryAddressInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountDeliveryAddressInfo(_ request: QueryAccountDeliveryAddressInfoRequest) async throws -> QueryAccountDeliveryAddressInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccountDeliveryAddressInfoWithOptions(request as! QueryAccountDeliveryAddressInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountProfileInfoWithOptions(_ request: QueryAccountProfileInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccountProfileInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.havanaId)) {
            query["HavanaId"] = request.havanaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccountProfileInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccountProfileInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountProfileInfo(_ request: QueryAccountProfileInfoRequest) async throws -> QueryAccountProfileInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccountProfileInfoWithOptions(request as! QueryAccountProfileInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountRealNameInfoWithOptions(_ request: QueryAccountRealNameInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccountRealNameInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccountRealNameInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccountRealNameInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountRealNameInfo(_ request: QueryAccountRealNameInfoRequest) async throws -> QueryAccountRealNameInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccountRealNameInfoWithOptions(request as! QueryAccountRealNameInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountSiteWithOptions(_ request: QueryAccountSiteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccountSiteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccountSite",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccountSiteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountSite(_ request: QueryAccountSiteRequest) async throws -> QueryAccountSiteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccountSiteWithOptions(request as! QueryAccountSiteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountTrueNameWithOptions(_ request: QueryAccountTrueNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccountTrueNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.havanaId)) {
            query["HavanaId"] = request.havanaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccountTrueName",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccountTrueNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountTrueName(_ request: QueryAccountTrueNameRequest) async throws -> QueryAccountTrueNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccountTrueNameWithOptions(request as! QueryAccountTrueNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAgAccountLoginPermissionWithOptions(_ request: QueryAgAccountLoginPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAgAccountLoginPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agAccountType)) {
            query["AgAccountType"] = request.agAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAgAccountLoginPermission",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAgAccountLoginPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAgAccountLoginPermission(_ request: QueryAgAccountLoginPermissionRequest) async throws -> QueryAgAccountLoginPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAgAccountLoginPermissionWithOptions(request as! QueryAgAccountLoginPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAgRelationCountAndQuotaWithOptions(_ request: QueryAgRelationCountAndQuotaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAgRelationCountAndQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerBid)) {
            body["CallerBid"] = request.callerBid!;
        }
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            body["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.callerType)) {
            body["CallerType"] = request.callerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerUid)) {
            body["CallerUid"] = request.callerUid!;
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            body["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nullObject)) {
            body["NullObject"] = request.nullObject!;
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            body["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            body["SourceIp"] = request.sourceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stsTokenCallerBid)) {
            body["StsTokenCallerBid"] = request.stsTokenCallerBid!;
        }
        if (!TeaUtils.Client.isUnset(request.stsTokenCallerUid)) {
            body["StsTokenCallerUid"] = request.stsTokenCallerUid!;
        }
        if (!TeaUtils.Client.isUnset(request.stsTokenRoleId)) {
            body["StsTokenRoleId"] = request.stsTokenRoleId!;
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["Version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAgRelationCountAndQuota",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAgRelationCountAndQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAgRelationCountAndQuota(_ request: QueryAgRelationCountAndQuotaRequest) async throws -> QueryAgRelationCountAndQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAgRelationCountAndQuotaWithOptions(request as! QueryAgRelationCountAndQuotaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAgSecurityMobileWithOptions(_ request: QueryAgSecurityMobileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAgSecurityMobileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agAccountType)) {
            query["AgAccountType"] = request.agAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAgSecurityMobile",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAgSecurityMobileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAgSecurityMobile(_ request: QueryAgSecurityMobileRequest) async throws -> QueryAgSecurityMobileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAgSecurityMobileWithOptions(request as! QueryAgSecurityMobileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBindsByOuterIdWithOptions(_ request: QueryBindsByOuterIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBindsByOuterIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minorOuterId)) {
            query["MinorOuterId"] = request.minorOuterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerId)) {
            query["OuterId"] = request.outerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBindsByOuterId",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBindsByOuterIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBindsByOuterId(_ request: QueryBindsByOuterIdRequest) async throws -> QueryBindsByOuterIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBindsByOuterIdWithOptions(request as! QueryBindsByOuterIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBindsByPkWithOptions(_ tmpReq: QueryBindsByPkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBindsByPkResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryBindsByPkShrinkRequest = QueryBindsByPkShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tenantIds)) {
            request.tenantIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantIds, "TenantIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantIdsShrink)) {
            query["TenantIds"] = request.tenantIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBindsByPk",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBindsByPkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBindsByPk(_ request: QueryBindsByPkRequest) async throws -> QueryBindsByPkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBindsByPkWithOptions(request as! QueryBindsByPkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCustomerLabelWithOptions(_ request: QueryCustomerLabelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCustomerLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelSeries)) {
            query["LabelSeries"] = request.labelSeries ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK!;
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCustomerLabel",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCustomerLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCustomerLabel(_ request: QueryCustomerLabelRequest) async throws -> QueryCustomerLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCustomerLabelWithOptions(request as! QueryCustomerLabelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeleteTaskCheckDataWithOptions(_ request: QueryDeleteTaskCheckDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDeleteTaskCheckDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agAccountType)) {
            query["AgAccountType"] = request.agAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.longLang)) {
            query["LongLang"] = request.longLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDeleteTaskCheckData",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDeleteTaskCheckDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeleteTaskCheckData(_ request: QueryDeleteTaskCheckDataRequest) async throws -> QueryDeleteTaskCheckDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDeleteTaskCheckDataWithOptions(request as! QueryDeleteTaskCheckDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEncryptedAccountProfileInfoWithOptions(_ request: QueryEncryptedAccountProfileInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEncryptedAccountProfileInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.havanaId)) {
            query["HavanaId"] = request.havanaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEncryptedAccountProfileInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEncryptedAccountProfileInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEncryptedAccountProfileInfo(_ request: QueryEncryptedAccountProfileInfoRequest) async throws -> QueryEncryptedAccountProfileInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEncryptedAccountProfileInfoWithOptions(request as! QueryEncryptedAccountProfileInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEnterpriseInfoWithOptions(_ request: QueryEnterpriseInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEnterpriseInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enterpriseVersion)) {
            query["EnterpriseVersion"] = request.enterpriseVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.havanaId)) {
            query["HavanaId"] = request.havanaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEnterpriseInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEnterpriseInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEnterpriseInfo(_ request: QueryEnterpriseInfoRequest) async throws -> QueryEnterpriseInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEnterpriseInfoWithOptions(request as! QueryEnterpriseInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEnumConfigByTypeWithOptions(_ request: QueryEnumConfigByTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEnumConfigByTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEnumConfigByType",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEnumConfigByTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEnumConfigByType(_ request: QueryEnumConfigByTypeRequest) async throws -> QueryEnumConfigByTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEnumConfigByTypeWithOptions(request as! QueryEnumConfigByTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOneKeyDeleteBlockListWithOptions(_ request: QueryOneKeyDeleteBlockListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOneKeyDeleteBlockListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOneKeyDeleteBlockList",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOneKeyDeleteBlockListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOneKeyDeleteBlockList(_ request: QueryOneKeyDeleteBlockListRequest) async throws -> QueryOneKeyDeleteBlockListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOneKeyDeleteBlockListWithOptions(request as! QueryOneKeyDeleteBlockListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecurityInfoWithOptions(_ request: QuerySecurityInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySecurityInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySecurityInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySecurityInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecurityInfo(_ request: QuerySecurityInfoRequest) async throws -> QuerySecurityInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySecurityInfoWithOptions(request as! QuerySecurityInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerInternalAccountForBucWithOptions(_ request: RegisterInternalAccountForBucRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterInternalAccountForBucResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isEmailConfirmed)) {
            query["IsEmailConfirmed"] = request.isEmailConfirmed!;
        }
        if (!TeaUtils.Client.isUnset(request.isMobileConfirmed)) {
            query["IsMobileConfirmed"] = request.isMobileConfirmed!;
        }
        if (!TeaUtils.Client.isUnset(request.isMobileLogin)) {
            query["IsMobileLogin"] = request.isMobileLogin!;
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nationalityCode)) {
            query["NationalityCode"] = request.nationalityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.plainPassword)) {
            query["PlainPassword"] = request.plainPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferredLanguage)) {
            query["PreferredLanguage"] = request.preferredLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountTypeCode)) {
            query["accountTypeCode"] = request.accountTypeCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterInternalAccountForBuc",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterInternalAccountForBucResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerInternalAccountForBuc(_ request: RegisterInternalAccountForBucRequest) async throws -> RegisterInternalAccountForBucResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registerInternalAccountForBucWithOptions(request as! RegisterInternalAccountForBucRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseAgAccountWithOptions(_ request: ReleaseAgAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseAgAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseReason)) {
            query["ReleaseReason"] = request.releaseReason ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseAgAccount",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseAgAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseAgAccount(_ request: ReleaseAgAccountRequest) async throws -> ReleaseAgAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseAgAccountWithOptions(request as! ReleaseAgAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resendAsyncCreateAgAccountWithOptions(_ request: ResendAsyncCreateAgAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResendAsyncCreateAgAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceNo)) {
            query["TraceNo"] = request.traceNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResendAsyncCreateAgAccount",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResendAsyncCreateAgAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resendAsyncCreateAgAccount(_ request: ResendAsyncCreateAgAccountRequest) async throws -> ResendAsyncCreateAgAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resendAsyncCreateAgAccountWithOptions(request as! ResendAsyncCreateAgAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resendAsyncModifyLoginEmailWithOptions(_ request: ResendAsyncModifyLoginEmailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResendAsyncModifyLoginEmailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceNo)) {
            query["TraceNo"] = request.traceNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResendAsyncModifyLoginEmail",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResendAsyncModifyLoginEmailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resendAsyncModifyLoginEmail(_ request: ResendAsyncModifyLoginEmailRequest) async throws -> ResendAsyncModifyLoginEmailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resendAsyncModifyLoginEmailWithOptions(request as! ResendAsyncModifyLoginEmailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func separateAgRelationWithOptions(_ request: SeparateAgRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SeparateAgRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SeparateAgRelation",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SeparateAgRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func separateAgRelation(_ request: SeparateAgRelationRequest) async throws -> SeparateAgRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await separateAgRelationWithOptions(request as! SeparateAgRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setCacheOperateSyncWithOptions(_ request: SetCacheOperateSyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetCacheOperateSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.exceptVersion)) {
            query["ExceptVersion"] = request.exceptVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.expireSeconds)) {
            query["ExpireSeconds"] = request.expireSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setType)) {
            query["SetType"] = request.setType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.valueClazz)) {
            query["ValueClazz"] = request.valueClazz ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.valueString)) {
            query["ValueString"] = request.valueString ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetCacheOperateSync",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetCacheOperateSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setCacheOperateSync(_ request: SetCacheOperateSyncRequest) async throws -> SetCacheOperateSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setCacheOperateSyncWithOptions(request as! SetCacheOperateSyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAccountAddressInfoWithOptions(_ tmpReq: UpdateAccountAddressInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAccountAddressInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAccountAddressInfoShrinkRequest = UpdateAccountAddressInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cityJsonString)) {
            request.cityJsonStringShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cityJsonString, "CityJsonString", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.districtJsonString)) {
            request.districtJsonStringShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.districtJsonString, "DistrictJsonString", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.provinceJsonString)) {
            request.provinceJsonStringShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.provinceJsonString, "ProvinceJsonString", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.address2)) {
            query["Address2"] = request.address2 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityJsonStringShrink)) {
            query["CityJsonString"] = request.cityJsonStringShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.districtJsonStringShrink)) {
            query["DistrictJsonString"] = request.districtJsonStringShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postCode)) {
            query["PostCode"] = request.postCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.provinceJsonStringShrink)) {
            query["ProvinceJsonString"] = request.provinceJsonStringShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAccountAddressInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAccountAddressInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAccountAddressInfo(_ request: UpdateAccountAddressInfoRequest) async throws -> UpdateAccountAddressInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAccountAddressInfoWithOptions(request as! UpdateAccountAddressInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAccountProfileInfoWithOptions(_ tmpReq: UpdateAccountProfileInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAccountProfileInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAccountProfileInfoShrinkRequest = UpdateAccountProfileInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cityJsonString)) {
            request.cityJsonStringShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cityJsonString, "CityJsonString", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.districtJsonString)) {
            request.districtJsonStringShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.districtJsonString, "DistrictJsonString", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.provinceJsonString)) {
            request.provinceJsonStringShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.provinceJsonString, "ProvinceJsonString", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountAttribute)) {
            query["AccountAttribute"] = request.accountAttribute ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.address2)) {
            query["Address2"] = request.address2 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bindAlipayNo)) {
            query["BindAlipayNo"] = request.bindAlipayNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certType)) {
            query["CertType"] = request.certType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityJsonStringShrink)) {
            query["CityJsonString"] = request.cityJsonStringShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactMethod)) {
            query["ContactMethod"] = request.contactMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.districtJsonStringShrink)) {
            query["DistrictJsonString"] = request.districtJsonStringShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fax)) {
            query["Fax"] = request.fax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.firstName)) {
            query["FirstName"] = request.firstName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.head)) {
            query["Head"] = request.head ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.headColor)) {
            query["HeadColor"] = request.headColor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lastName)) {
            query["LastName"] = request.lastName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            query["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postCode)) {
            query["PostCode"] = request.postCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.provinceJsonStringShrink)) {
            query["ProvinceJsonString"] = request.provinceJsonStringShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selfServicingBusinessRegNum)) {
            query["SelfServicingBusinessRegNum"] = request.selfServicingBusinessRegNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selfServicingIdentificationNum)) {
            query["SelfServicingIdentificationNum"] = request.selfServicingIdentificationNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trueName)) {
            query["TrueName"] = request.trueName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAccountProfileInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAccountProfileInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAccountProfileInfo(_ request: UpdateAccountProfileInfoRequest) async throws -> UpdateAccountProfileInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAccountProfileInfoWithOptions(request as! UpdateAccountProfileInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgAccountAddressInfoWithOptions(_ request: UpdateAgAccountAddressInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAgAccountAddressInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.address2)) {
            query["Address2"] = request.address2 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postCode)) {
            query["PostCode"] = request.postCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAgAccountAddressInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAgAccountAddressInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgAccountAddressInfo(_ request: UpdateAgAccountAddressInfoRequest) async throws -> UpdateAgAccountAddressInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAgAccountAddressInfoWithOptions(request as! UpdateAgAccountAddressInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgServiceStatusWithOptions(_ request: UpdateAgServiceStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAgServiceStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agAccountType)) {
            query["AgAccountType"] = request.agAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mpk)) {
            query["Mpk"] = request.mpk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAgServiceStatus",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAgServiceStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgServiceStatus(_ request: UpdateAgServiceStatusRequest) async throws -> UpdateAgServiceStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAgServiceStatusWithOptions(request as! UpdateAgServiceStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCustomerCategoryWithOptions(_ request: UpdateCustomerCategoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCustomerCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.paramList)) {
            query["ParamList"] = request.paramList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCustomerCategory",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCustomerCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCustomerCategory(_ request: UpdateCustomerCategoryRequest) async throws -> UpdateCustomerCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateCustomerCategoryWithOptions(request as! UpdateCustomerCategoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCustomerInformationWithOptions(_ request: UpdateCustomerInformationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCustomerInformationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.biz)) {
            query["Biz"] = request.biz ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerCategory)) {
            query["CustomerCategory"] = request.customerCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerSubCategory)) {
            query["CustomerSubCategory"] = request.customerSubCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        if (!TeaUtils.Client.isUnset(request.website)) {
            query["Website"] = request.website ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCustomerInformation",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCustomerInformationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCustomerInformation(_ request: UpdateCustomerInformationRequest) async throws -> UpdateCustomerInformationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateCustomerInformationWithOptions(request as! UpdateCustomerInformationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOrInsertEnterpriseInfoWithOptions(_ tmpReq: UpdateOrInsertEnterpriseInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateOrInsertEnterpriseInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateOrInsertEnterpriseInfoShrinkRequest = UpdateOrInsertEnterpriseInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cityJsonString)) {
            request.cityJsonStringShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cityJsonString, "CityJsonString", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.provinceJsonString)) {
            request.provinceJsonStringShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.provinceJsonString, "ProvinceJsonString", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alias)) {
            query["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityJsonStringShrink)) {
            query["CityJsonString"] = request.cityJsonStringShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseSize)) {
            query["EnterpriseSize"] = request.enterpriseSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fax)) {
            query["Fax"] = request.fax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            query["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.provinceJsonStringShrink)) {
            query["ProvinceJsonString"] = request.provinceJsonStringShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.years)) {
            query["Years"] = request.years ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateOrInsertEnterpriseInfo",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateOrInsertEnterpriseInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOrInsertEnterpriseInfo(_ request: UpdateOrInsertEnterpriseInfoRequest) async throws -> UpdateOrInsertEnterpriseInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateOrInsertEnterpriseInfoWithOptions(request as! UpdateOrInsertEnterpriseInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func doLogicalDeleteResourceWithOptions(_ request: DoLogicalDeleteResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DoLogicalDeleteResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtWakeup)) {
            query["GmtWakeup"] = request.gmtWakeup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hid)) {
            query["Hid"] = request.hid!;
        }
        if (!TeaUtils.Client.isUnset(request.interrupt)) {
            query["Interrupt"] = request.interrupt!;
        }
        if (!TeaUtils.Client.isUnset(request.invoker)) {
            query["Invoker"] = request.invoker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            query["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.success)) {
            query["Success"] = request.success!;
        }
        if (!TeaUtils.Client.isUnset(request.taskExtraData)) {
            query["TaskExtraData"] = request.taskExtraData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskIdentifier)) {
            query["TaskIdentifier"] = request.taskIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "doLogicalDeleteResource",
            "version": "2016-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DoLogicalDeleteResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func doLogicalDeleteResource(_ request: DoLogicalDeleteResourceRequest) async throws -> DoLogicalDeleteResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await doLogicalDeleteResourceWithOptions(request as! DoLogicalDeleteResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
