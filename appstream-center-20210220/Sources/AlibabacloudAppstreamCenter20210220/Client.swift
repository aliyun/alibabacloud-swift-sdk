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
        self._endpoint = try getEndpoint("appstream-center", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func clientUserLogoutWithOptions(_ request: ClientUserLogoutRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ClientUserLogoutResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginToken)) {
            query["LoginToken"] = request.loginToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileRegion)) {
            query["ProfileRegion"] = request.profileRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["SessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ClientUserLogout",
            "version": "2021-02-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doRPCRequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ClientUserLogoutResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clientUserLogout(_ request: ClientUserLogoutRequest) async throws -> ClientUserLogoutResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await clientUserLogoutWithOptions(request as! ClientUserLogoutRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findIdpListByLoginIdentifierWithOptions(_ tmpReq: FindIdpListByLoginIdentifierRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindIdpListByLoginIdentifierResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FindIdpListByLoginIdentifierShrinkRequest = FindIdpListByLoginIdentifierShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.availableFeatures)) {
            request.availableFeaturesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.availableFeatures, "AvailableFeatures", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.availableFeaturesShrink)) {
            query["AvailableFeatures"] = request.availableFeaturesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientIp)) {
            query["ClientIp"] = request.clientIp ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientChannel)) {
            body["ClientChannel"] = request.clientChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            body["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientOS)) {
            body["ClientOS"] = request.clientOS ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVersion)) {
            body["ClientVersion"] = request.clientVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginIdentifier)) {
            body["LoginIdentifier"] = request.loginIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportTypes)) {
            body["SupportTypes"] = request.supportTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindIdpListByLoginIdentifier",
            "version": "2021-02-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doRPCRequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindIdpListByLoginIdentifierResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findIdpListByLoginIdentifier(_ request: FindIdpListByLoginIdentifierRequest) async throws -> FindIdpListByLoginIdentifierResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findIdpListByLoginIdentifierWithOptions(request as! FindIdpListByLoginIdentifierRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLoginTokenWithOptions(_ tmpReq: GetLoginTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLoginTokenResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetLoginTokenShrinkRequest = GetLoginTokenShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.availableFeatures)) {
            request.availableFeaturesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.availableFeatures, "AvailableFeatures", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.areaSite)) {
            query["AreaSite"] = request.areaSite ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticationCode)) {
            query["AuthenticationCode"] = request.authenticationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.availableFeaturesShrink)) {
            query["AvailableFeatures"] = request.availableFeaturesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientName)) {
            query["ClientName"] = request.clientName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientOS)) {
            query["ClientOS"] = request.clientOS ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            query["ClientType"] = request.clientType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVersion)) {
            query["ClientVersion"] = request.clientVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentStage)) {
            query["CurrentStage"] = request.currentStage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptedFingerPrintData)) {
            query["EncryptedFingerPrintData"] = request.encryptedFingerPrintData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptedKey)) {
            query["EncryptedKey"] = request.encryptedKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptedPassword)) {
            query["EncryptedPassword"] = request.encryptedPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fingerPrintData)) {
            query["FingerPrintData"] = request.fingerPrintData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idpId)) {
            query["IdpId"] = request.idpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keepAlive)) {
            query["KeepAlive"] = request.keepAlive!;
        }
        if (!TeaUtils.Client.isUnset(request.keepAliveToken)) {
            query["KeepAliveToken"] = request.keepAliveToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginIdentifier)) {
            query["LoginIdentifier"] = request.loginIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginName)) {
            query["LoginName"] = request.loginName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mfaType)) {
            query["MfaType"] = request.mfaType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            query["NetworkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newPassword)) {
            query["NewPassword"] = request.newPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oldPassword)) {
            query["OldPassword"] = request.oldPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            query["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneVerifyCode)) {
            query["PhoneVerifyCode"] = request.phoneVerifyCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileRegion)) {
            query["ProfileRegion"] = request.profileRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ssoExtendsCookies)) {
            query["SsoExtendsCookies"] = request.ssoExtendsCookies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ssoSessionToken)) {
            query["SsoSessionToken"] = request.ssoSessionToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenCode)) {
            query["TokenCode"] = request.tokenCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.umidToken)) {
            query["UmidToken"] = request.umidToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLoginToken",
            "version": "2021-02-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doRPCRequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLoginTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLoginToken(_ request: GetLoginTokenRequest) async throws -> GetLoginTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLoginTokenWithOptions(request as! GetLoginTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStsTokenWithOptions(_ request: GetStsTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStsTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authCode)) {
            body["AuthCode"] = request.authCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            body["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientIp)) {
            body["ClientIp"] = request.clientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientOS)) {
            body["ClientOS"] = request.clientOS ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVersion)) {
            body["ClientVersion"] = request.clientVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStsToken",
            "version": "2021-02-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doRPCRequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStsTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStsToken(_ request: GetStsTokenRequest) async throws -> GetStsTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStsTokenWithOptions(request as! GetStsTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshLoginTokenWithOptions(_ request: RefreshLoginTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefreshLoginTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            query["ClientType"] = request.clientType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginIdentifier)) {
            query["LoginIdentifier"] = request.loginIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginToken)) {
            query["LoginToken"] = request.loginToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileRegion)) {
            query["ProfileRegion"] = request.profileRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefreshLoginToken",
            "version": "2021-02-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doRPCRequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefreshLoginTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshLoginToken(_ request: RefreshLoginTokenRequest) async throws -> RefreshLoginTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refreshLoginTokenWithOptions(request as! RefreshLoginTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
