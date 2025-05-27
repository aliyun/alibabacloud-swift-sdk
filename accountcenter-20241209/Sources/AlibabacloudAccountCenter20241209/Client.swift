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
}
