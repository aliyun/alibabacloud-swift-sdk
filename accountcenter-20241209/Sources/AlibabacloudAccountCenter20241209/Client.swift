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
        self._endpoint = try getEndpoint("accountcenter", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func accountContactAddWithOptions(_ request: AccountContactAddRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AccountContactAddResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asyncEmailVerify)) {
            body["AsyncEmailVerify"] = request.asyncEmailVerify!;
        }
        if (!TeaUtils.Client.isUnset(request.asyncMobileVerify)) {
            body["AsyncMobileVerify"] = request.asyncMobileVerify!;
        }
        if (!TeaUtils.Client.isUnset(request.contactEmail)) {
            body["ContactEmail"] = request.contactEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactMobile)) {
            body["ContactMobile"] = request.contactMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            body["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactPosition)) {
            body["ContactPosition"] = request.contactPosition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emailCode)) {
            body["EmailCode"] = request.emailCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileCode)) {
            body["MobileCode"] = request.mobileCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sharedContact)) {
            body["SharedContact"] = request.sharedContact!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AccountContactAdd",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AccountContactAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accountContactAdd(_ request: AccountContactAddRequest) async throws -> AccountContactAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await accountContactAddWithOptions(request as! AccountContactAddRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accountContactDeleteWithOptions(_ request: AccountContactDeleteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AccountContactDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AccountContactDelete",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AccountContactDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accountContactDelete(_ request: AccountContactDeleteRequest) async throws -> AccountContactDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await accountContactDeleteWithOptions(request as! AccountContactDeleteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accountContactEditWithOptions(_ request: AccountContactEditRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AccountContactEditResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asyncEmailVerify)) {
            body["AsyncEmailVerify"] = request.asyncEmailVerify!;
        }
        if (!TeaUtils.Client.isUnset(request.asyncMobileVerify)) {
            body["AsyncMobileVerify"] = request.asyncMobileVerify!;
        }
        if (!TeaUtils.Client.isUnset(request.contactEmail)) {
            body["ContactEmail"] = request.contactEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.contactMobile)) {
            body["ContactMobile"] = request.contactMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            body["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactPosition)) {
            body["ContactPosition"] = request.contactPosition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emailCode)) {
            body["EmailCode"] = request.emailCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileCode)) {
            body["MobileCode"] = request.mobileCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sharedContact)) {
            body["SharedContact"] = request.sharedContact!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AccountContactEdit",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AccountContactEditResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accountContactEdit(_ request: AccountContactEditRequest) async throws -> AccountContactEditResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await accountContactEditWithOptions(request as! AccountContactEditRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accountContactQueryDetailWithOptions(_ request: AccountContactQueryDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AccountContactQueryDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AccountContactQueryDetail",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AccountContactQueryDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accountContactQueryDetail(_ request: AccountContactQueryDetailRequest) async throws -> AccountContactQueryDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await accountContactQueryDetailWithOptions(request as! AccountContactQueryDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accountContactQueryPageListWithOptions(_ request: AccountContactQueryPageListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AccountContactQueryPageListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.showCompleteInfo)) {
            query["ShowCompleteInfo"] = request.showCompleteInfo!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            body["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.privateContact)) {
            body["PrivateContact"] = request.privateContact!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sharedContact)) {
            body["SharedContact"] = request.sharedContact!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AccountContactQueryPageList",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AccountContactQueryPageListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accountContactQueryPageList(_ request: AccountContactQueryPageListRequest) async throws -> AccountContactQueryPageListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await accountContactQueryPageListWithOptions(request as! AccountContactQueryPageListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountChangeLoginPasswordWithOptions(_ request: EnterpriseAccountChangeLoginPasswordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountChangeLoginPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encryptPassword)) {
            query["EncryptPassword"] = request.encryptPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            query["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountChangeLoginPassword",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountChangeLoginPasswordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountChangeLoginPassword(_ request: EnterpriseAccountChangeLoginPasswordRequest) async throws -> EnterpriseAccountChangeLoginPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountChangeLoginPasswordWithOptions(request as! EnterpriseAccountChangeLoginPasswordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountChangeSecurityEmailWithOptions(_ request: EnterpriseAccountChangeSecurityEmailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountChangeSecurityEmailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            query["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityEmail)) {
            query["SecurityEmail"] = request.securityEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyCode)) {
            query["VerifyCode"] = request.verifyCode ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountChangeSecurityEmail",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountChangeSecurityEmailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountChangeSecurityEmail(_ request: EnterpriseAccountChangeSecurityEmailRequest) async throws -> EnterpriseAccountChangeSecurityEmailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountChangeSecurityEmailWithOptions(request as! EnterpriseAccountChangeSecurityEmailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountChangeSecurityMobileWithOptions(_ request: EnterpriseAccountChangeSecurityMobileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountChangeSecurityMobileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newMobile)) {
            query["NewMobile"] = request.newMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            query["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verificationCode)) {
            query["VerificationCode"] = request.verificationCode ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountChangeSecurityMobile",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountChangeSecurityMobileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountChangeSecurityMobile(_ request: EnterpriseAccountChangeSecurityMobileRequest) async throws -> EnterpriseAccountChangeSecurityMobileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountChangeSecurityMobileWithOptions(request as! EnterpriseAccountChangeSecurityMobileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountQueryAccountGrantedRolesWithOptions(_ request: EnterpriseAccountQueryAccountGrantedRolesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountQueryAccountGrantedRolesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isOpenApi)) {
            body["IsOpenApi"] = request.isOpenApi!;
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            body["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showCompleteInfo)) {
            body["ShowCompleteInfo"] = request.showCompleteInfo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountQueryAccountGrantedRoles",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountQueryAccountGrantedRolesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountQueryAccountGrantedRoles(_ request: EnterpriseAccountQueryAccountGrantedRolesRequest) async throws -> EnterpriseAccountQueryAccountGrantedRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountQueryAccountGrantedRolesWithOptions(request as! EnterpriseAccountQueryAccountGrantedRolesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountQueryAccountsInfoWithOptions(_ request: EnterpriseAccountQueryAccountsInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountQueryAccountsInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pksJson)) {
            query["PksJson"] = request.pksJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showCompleteInfo)) {
            body["ShowCompleteInfo"] = request.showCompleteInfo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountQueryAccountsInfo",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountQueryAccountsInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountQueryAccountsInfo(_ request: EnterpriseAccountQueryAccountsInfoRequest) async throws -> EnterpriseAccountQueryAccountsInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountQueryAccountsInfoWithOptions(request as! EnterpriseAccountQueryAccountsInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountQueryLoginSettingsWithOptions(_ request: EnterpriseAccountQueryLoginSettingsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountQueryLoginSettingsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isOpenApi)) {
            body["IsOpenApi"] = request.isOpenApi!;
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            body["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showCompleteInfo)) {
            body["ShowCompleteInfo"] = request.showCompleteInfo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountQueryLoginSettings",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountQueryLoginSettingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountQueryLoginSettings(_ request: EnterpriseAccountQueryLoginSettingsRequest) async throws -> EnterpriseAccountQueryLoginSettingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountQueryLoginSettingsWithOptions(request as! EnterpriseAccountQueryLoginSettingsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountRemoveMfaWithOptions(_ request: EnterpriseAccountRemoveMfaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountRemoveMfaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            query["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountRemoveMfa",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountRemoveMfaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountRemoveMfa(_ request: EnterpriseAccountRemoveMfaRequest) async throws -> EnterpriseAccountRemoveMfaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountRemoveMfaWithOptions(request as! EnterpriseAccountRemoveMfaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountSeparateEaWithOptions(_ request: EnterpriseAccountSeparateEaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountSeparateEaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountSeparateEa",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountSeparateEaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountSeparateEa(_ request: EnterpriseAccountSeparateEaRequest) async throws -> EnterpriseAccountSeparateEaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountSeparateEaWithOptions(request as! EnterpriseAccountSeparateEaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountUpdateAccountAliasWithOptions(_ request: EnterpriseAccountUpdateAccountAliasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountUpdateAccountAliasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            query["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            query["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountUpdateAccountAlias",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountUpdateAccountAliasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountUpdateAccountAlias(_ request: EnterpriseAccountUpdateAccountAliasRequest) async throws -> EnterpriseAccountUpdateAccountAliasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountUpdateAccountAliasWithOptions(request as! EnterpriseAccountUpdateAccountAliasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountUpdateAccountBizRoleGrantWithOptions(_ request: EnterpriseAccountUpdateAccountBizRoleGrantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountUpdateAccountBizRoleGrantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRoleCodeListJson)) {
            query["BizRoleCodeListJson"] = request.bizRoleCodeListJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountUpdateAccountBizRoleGrant",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountUpdateAccountBizRoleGrantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountUpdateAccountBizRoleGrant(_ request: EnterpriseAccountUpdateAccountBizRoleGrantRequest) async throws -> EnterpriseAccountUpdateAccountBizRoleGrantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountUpdateAccountBizRoleGrantWithOptions(request as! EnterpriseAccountUpdateAccountBizRoleGrantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountUpdateIpMaskWithOptions(_ request: EnterpriseAccountUpdateIpMaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountUpdateIpMaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ipMasksJson)) {
            query["IpMasksJson"] = request.ipMasksJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            query["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountUpdateIpMask",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountUpdateIpMaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountUpdateIpMask(_ request: EnterpriseAccountUpdateIpMaskRequest) async throws -> EnterpriseAccountUpdateIpMaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountUpdateIpMaskWithOptions(request as! EnterpriseAccountUpdateIpMaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountUpdateOperateRiskControlWithOptions(_ request: EnterpriseAccountUpdateOperateRiskControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountUpdateOperateRiskControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            query["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productLevel)) {
            query["ProductLevel"] = request.productLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validateType)) {
            query["ValidateType"] = request.validateType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountUpdateOperateRiskControl",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountUpdateOperateRiskControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountUpdateOperateRiskControl(_ request: EnterpriseAccountUpdateOperateRiskControlRequest) async throws -> EnterpriseAccountUpdateOperateRiskControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountUpdateOperateRiskControlWithOptions(request as! EnterpriseAccountUpdateOperateRiskControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountUpdateSecurityMobileLoginStatusWithOptions(_ request: EnterpriseAccountUpdateSecurityMobileLoginStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountUpdateSecurityMobileLoginStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            query["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountUpdateSecurityMobileLoginStatus",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountUpdateSecurityMobileLoginStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountUpdateSecurityMobileLoginStatus(_ request: EnterpriseAccountUpdateSecurityMobileLoginStatusRequest) async throws -> EnterpriseAccountUpdateSecurityMobileLoginStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountUpdateSecurityMobileLoginStatusWithOptions(request as! EnterpriseAccountUpdateSecurityMobileLoginStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountUpdateSessionExpireTimeWithOptions(_ request: EnterpriseAccountUpdateSessionExpireTimeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseAccountUpdateSessionExpireTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            query["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionExpireTime)) {
            query["SessionExpireTime"] = request.sessionExpireTime!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseAccountUpdateSessionExpireTime",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseAccountUpdateSessionExpireTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseAccountUpdateSessionExpireTime(_ request: EnterpriseAccountUpdateSessionExpireTimeRequest) async throws -> EnterpriseAccountUpdateSessionExpireTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseAccountUpdateSessionExpireTimeWithOptions(request as! EnterpriseAccountUpdateSessionExpireTimeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseContactAddWithOptions(_ request: EnterpriseContactAddRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseContactAddResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asyncEmailVerify)) {
            body["AsyncEmailVerify"] = request.asyncEmailVerify!;
        }
        if (!TeaUtils.Client.isUnset(request.asyncMobileVerify)) {
            body["AsyncMobileVerify"] = request.asyncMobileVerify!;
        }
        if (!TeaUtils.Client.isUnset(request.contactEmail)) {
            body["ContactEmail"] = request.contactEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactMobile)) {
            body["ContactMobile"] = request.contactMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            body["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactPosition)) {
            body["ContactPosition"] = request.contactPosition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emailCode)) {
            body["EmailCode"] = request.emailCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileCode)) {
            body["MobileCode"] = request.mobileCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sharedContact)) {
            body["SharedContact"] = request.sharedContact!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseContactAdd",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseContactAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseContactAdd(_ request: EnterpriseContactAddRequest) async throws -> EnterpriseContactAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseContactAddWithOptions(request as! EnterpriseContactAddRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseContactDeleteWithOptions(_ request: EnterpriseContactDeleteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseContactDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseContactDelete",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseContactDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseContactDelete(_ request: EnterpriseContactDeleteRequest) async throws -> EnterpriseContactDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseContactDeleteWithOptions(request as! EnterpriseContactDeleteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseContactEditWithOptions(_ request: EnterpriseContactEditRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseContactEditResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asyncEmailVerify)) {
            body["AsyncEmailVerify"] = request.asyncEmailVerify!;
        }
        if (!TeaUtils.Client.isUnset(request.asyncMobileVerify)) {
            body["AsyncMobileVerify"] = request.asyncMobileVerify!;
        }
        if (!TeaUtils.Client.isUnset(request.contactEmail)) {
            body["ContactEmail"] = request.contactEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.contactMobile)) {
            body["ContactMobile"] = request.contactMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            body["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactPosition)) {
            body["ContactPosition"] = request.contactPosition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emailCode)) {
            body["EmailCode"] = request.emailCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileCode)) {
            body["MobileCode"] = request.mobileCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sharedContact)) {
            body["SharedContact"] = request.sharedContact!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseContactEdit",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseContactEditResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseContactEdit(_ request: EnterpriseContactEditRequest) async throws -> EnterpriseContactEditResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseContactEditWithOptions(request as! EnterpriseContactEditRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseContactQueryDetailWithOptions(_ request: EnterpriseContactQueryDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseContactQueryDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactId)) {
            body["ContactId"] = request.contactId!;
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseContactQueryDetail",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseContactQueryDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseContactQueryDetail(_ request: EnterpriseContactQueryDetailRequest) async throws -> EnterpriseContactQueryDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseContactQueryDetailWithOptions(request as! EnterpriseContactQueryDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseContactQueryPageListWithOptions(_ request: EnterpriseContactQueryPageListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseContactQueryPageListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.showCompleteInfo)) {
            query["ShowCompleteInfo"] = request.showCompleteInfo!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            body["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.privateContact)) {
            body["PrivateContact"] = request.privateContact!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sharedContact)) {
            body["SharedContact"] = request.sharedContact!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseContactQueryPageList",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseContactQueryPageListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseContactQueryPageList(_ request: EnterpriseContactQueryPageListRequest) async throws -> EnterpriseContactQueryPageListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseContactQueryPageListWithOptions(request as! EnterpriseContactQueryPageListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseOrgQueryLoadTreeWithOptions(_ request: EnterpriseOrgQueryLoadTreeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseOrgQueryLoadTreeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadOrgOnly)) {
            query["LoadOrgOnly"] = request.loadOrgOnly!;
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseOrgQueryLoadTree",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseOrgQueryLoadTreeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseOrgQueryLoadTree(_ request: EnterpriseOrgQueryLoadTreeRequest) async throws -> EnterpriseOrgQueryLoadTreeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseOrgQueryLoadTreeWithOptions(request as! EnterpriseOrgQueryLoadTreeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRegisterAccountWithOptions(_ request: EnterpriseRegisterAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseRegisterAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            query["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptPassword)) {
            query["EncryptPassword"] = request.encryptPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginEmail)) {
            query["LoginEmail"] = request.loginEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showCompleteInfo)) {
            query["ShowCompleteInfo"] = request.showCompleteInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.siteNick)) {
            query["SiteNick"] = request.siteNick ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseRegisterAccount",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseRegisterAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRegisterAccount(_ request: EnterpriseRegisterAccountRequest) async throws -> EnterpriseRegisterAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseRegisterAccountWithOptions(request as! EnterpriseRegisterAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRoleCreateBizRoleWithOptions(_ request: EnterpriseRoleCreateBizRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseRoleCreateBizRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizPermissionCodeListJson)) {
            query["BizPermissionCodeListJson"] = request.bizPermissionCodeListJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRoleDesc)) {
            query["BizRoleDesc"] = request.bizRoleDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRoleName)) {
            query["BizRoleName"] = request.bizRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseRoleCreateBizRole",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseRoleCreateBizRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRoleCreateBizRole(_ request: EnterpriseRoleCreateBizRoleRequest) async throws -> EnterpriseRoleCreateBizRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseRoleCreateBizRoleWithOptions(request as! EnterpriseRoleCreateBizRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRoleDeleteBizRoleWithOptions(_ request: EnterpriseRoleDeleteBizRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseRoleDeleteBizRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRoleCode)) {
            query["BizRoleCode"] = request.bizRoleCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseRoleDeleteBizRole",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseRoleDeleteBizRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRoleDeleteBizRole(_ request: EnterpriseRoleDeleteBizRoleRequest) async throws -> EnterpriseRoleDeleteBizRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseRoleDeleteBizRoleWithOptions(request as! EnterpriseRoleDeleteBizRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRoleQueryAccountForRoleGrantByPageWithOptions(_ request: EnterpriseRoleQueryAccountForRoleGrantByPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseRoleQueryAccountForRoleGrantByPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRoleCode)) {
            query["BizRoleCode"] = request.bizRoleCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            query["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showCompleteInfo)) {
            query["ShowCompleteInfo"] = request.showCompleteInfo!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseRoleQueryAccountForRoleGrantByPage",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseRoleQueryAccountForRoleGrantByPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRoleQueryAccountForRoleGrantByPage(_ request: EnterpriseRoleQueryAccountForRoleGrantByPageRequest) async throws -> EnterpriseRoleQueryAccountForRoleGrantByPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseRoleQueryAccountForRoleGrantByPageWithOptions(request as! EnterpriseRoleQueryAccountForRoleGrantByPageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRoleQueryBizRoleByPageWithOptions(_ request: EnterpriseRoleQueryBizRoleByPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseRoleQueryBizRoleByPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            query["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcType)) {
            query["SrcType"] = request.srcType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseRoleQueryBizRoleByPage",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseRoleQueryBizRoleByPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRoleQueryBizRoleByPage(_ request: EnterpriseRoleQueryBizRoleByPageRequest) async throws -> EnterpriseRoleQueryBizRoleByPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseRoleQueryBizRoleByPageWithOptions(request as! EnterpriseRoleQueryBizRoleByPageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRoleQueryBizRoleDetailWithOptions(_ request: EnterpriseRoleQueryBizRoleDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseRoleQueryBizRoleDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRoleCode)) {
            query["BizRoleCode"] = request.bizRoleCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseRoleQueryBizRoleDetail",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseRoleQueryBizRoleDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRoleQueryBizRoleDetail(_ request: EnterpriseRoleQueryBizRoleDetailRequest) async throws -> EnterpriseRoleQueryBizRoleDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseRoleQueryBizRoleDetailWithOptions(request as! EnterpriseRoleQueryBizRoleDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRoleUpdateBizRoleWithOptions(_ request: EnterpriseRoleUpdateBizRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseRoleUpdateBizRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizPermissionCodeListJson)) {
            query["BizPermissionCodeListJson"] = request.bizPermissionCodeListJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRoleCode)) {
            query["BizRoleCode"] = request.bizRoleCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRoleDesc)) {
            query["BizRoleDesc"] = request.bizRoleDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRoleName)) {
            query["BizRoleName"] = request.bizRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseRoleUpdateBizRole",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseRoleUpdateBizRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseRoleUpdateBizRole(_ request: EnterpriseRoleUpdateBizRoleRequest) async throws -> EnterpriseRoleUpdateBizRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseRoleUpdateBizRoleWithOptions(request as! EnterpriseRoleUpdateBizRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseTodoDealAccountTodoWithOptions(_ request: EnterpriseTodoDealAccountTodoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseTodoDealAccountTodoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.todoId)) {
            body["TodoId"] = request.todoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseTodoDealAccountTodo",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseTodoDealAccountTodoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseTodoDealAccountTodo(_ request: EnterpriseTodoDealAccountTodoRequest) async throws -> EnterpriseTodoDealAccountTodoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseTodoDealAccountTodoWithOptions(request as! EnterpriseTodoDealAccountTodoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseTodoQueryAccountTodoListWithOptions(_ request: EnterpriseTodoQueryAccountTodoListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseTodoQueryAccountTodoListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatePk)) {
            body["OperatePk"] = request.operatePk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.showCompleteInfo)) {
            body["ShowCompleteInfo"] = request.showCompleteInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.todoType)) {
            body["TodoType"] = request.todoType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseTodoQueryAccountTodoList",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseTodoQueryAccountTodoListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseTodoQueryAccountTodoList(_ request: EnterpriseTodoQueryAccountTodoListRequest) async throws -> EnterpriseTodoQueryAccountTodoListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseTodoQueryAccountTodoListWithOptions(request as! EnterpriseTodoQueryAccountTodoListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseTodoQueryAccountTodoListByApplicantWithOptions(_ request: EnterpriseTodoQueryAccountTodoListByApplicantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseTodoQueryAccountTodoListByApplicantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatePk)) {
            body["OperatePk"] = request.operatePk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedEcId)) {
            body["OrientedEcId"] = request.orientedEcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedLeId)) {
            body["OrientedLeId"] = request.orientedLeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orientedNbId)) {
            body["OrientedNbId"] = request.orientedNbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.showCompleteInfo)) {
            body["ShowCompleteInfo"] = request.showCompleteInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.todoType)) {
            body["TodoType"] = request.todoType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseTodoQueryAccountTodoListByApplicant",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseTodoQueryAccountTodoListByApplicantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseTodoQueryAccountTodoListByApplicant(_ request: EnterpriseTodoQueryAccountTodoListByApplicantRequest) async throws -> EnterpriseTodoQueryAccountTodoListByApplicantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseTodoQueryAccountTodoListByApplicantWithOptions(request as! EnterpriseTodoQueryAccountTodoListByApplicantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseUninvitedAdminInviteJoinEnterpriseWithOptions(_ request: EnterpriseUninvitedAdminInviteJoinEnterpriseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnterpriseUninvitedAdminInviteJoinEnterpriseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecId)) {
            query["EcId"] = request.ecId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptTicket)) {
            query["EncryptTicket"] = request.encryptTicket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inviteePk)) {
            query["InviteePk"] = request.inviteePk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.leId)) {
            query["LeId"] = request.leId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbId)) {
            query["NbId"] = request.nbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnterpriseUninvitedAdminInviteJoinEnterprise",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnterpriseUninvitedAdminInviteJoinEnterpriseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enterpriseUninvitedAdminInviteJoinEnterprise(_ request: EnterpriseUninvitedAdminInviteJoinEnterpriseRequest) async throws -> EnterpriseUninvitedAdminInviteJoinEnterpriseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enterpriseUninvitedAdminInviteJoinEnterpriseWithOptions(request as! EnterpriseUninvitedAdminInviteJoinEnterpriseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendAsyncEmailCaptchaWithOptions(_ request: SendAsyncEmailCaptchaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendAsyncEmailCaptchaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactInfo)) {
            body["ContactInfo"] = request.contactInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactorId)) {
            body["ContactorId"] = request.contactorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendAsyncEmailCaptcha",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendAsyncEmailCaptchaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendAsyncEmailCaptcha(_ request: SendAsyncEmailCaptchaRequest) async throws -> SendAsyncEmailCaptchaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendAsyncEmailCaptchaWithOptions(request as! SendAsyncEmailCaptchaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendAsyncMobileCaptchaWithOptions(_ request: SendAsyncMobileCaptchaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendAsyncMobileCaptchaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactInfo)) {
            body["ContactInfo"] = request.contactInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactorId)) {
            body["ContactorId"] = request.contactorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendAsyncMobileCaptcha",
            "version": "2024-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendAsyncMobileCaptchaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendAsyncMobileCaptcha(_ request: SendAsyncMobileCaptchaRequest) async throws -> SendAsyncMobileCaptchaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendAsyncMobileCaptchaWithOptions(request as! SendAsyncMobileCaptchaRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
