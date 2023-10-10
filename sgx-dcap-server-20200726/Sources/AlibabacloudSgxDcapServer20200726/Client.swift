import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._signatureAlgorithm = "v2"
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("sgx-dcap-server", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func getQeIdentityWithOptions(_ request: GetQeIdentityRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQeIdentityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acsHost)) {
            query["AcsHost"] = request.acsHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVpcId)) {
            query["ClientVpcId"] = request.clientVpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQeIdentity",
            "version": "2020-07-26",
            "protocol": "HTTPS",
            "pathname": "/sgx/certification/v3/qe/identity",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQeIdentityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQeIdentity(_ request: GetQeIdentityRequest) async throws -> GetQeIdentityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQeIdentityWithOptions(request as! GetQeIdentityRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQveIdentityWithOptions(_ request: GetQveIdentityRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQveIdentityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acsHost)) {
            query["AcsHost"] = request.acsHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVpcId)) {
            query["ClientVpcId"] = request.clientVpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQveIdentity",
            "version": "2020-07-26",
            "protocol": "HTTPS",
            "pathname": "/sgx/certification/v3/qve/identity",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQveIdentityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQveIdentity(_ request: GetQveIdentityRequest) async throws -> GetQveIdentityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQveIdentityWithOptions(request as! GetQveIdentityRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTcbInfoWithOptions(_ request: GetTcbInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTcbInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acsHost)) {
            query["AcsHost"] = request.acsHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVpcId)) {
            query["ClientVpcId"] = request.clientVpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fmspc)) {
            query["fmspc"] = request.fmspc ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTcbInfo",
            "version": "2020-07-26",
            "protocol": "HTTPS",
            "pathname": "/sgx/certification/v3/tcb",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTcbInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTcbInfo(_ request: GetTcbInfoRequest) async throws -> GetTcbInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTcbInfoWithOptions(request as! GetTcbInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pckCrlWithOptions(_ request: PckCrlRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PckCrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acsHost)) {
            query["AcsHost"] = request.acsHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVpcId)) {
            query["ClientVpcId"] = request.clientVpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ca)) {
            query["ca"] = request.ca ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PckCrl",
            "version": "2020-07-26",
            "protocol": "HTTPS",
            "pathname": "/sgx/certification/v3/pckcrl",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PckCrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pckCrl(_ request: PckCrlRequest) async throws -> PckCrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await pckCrlWithOptions(request as! PckCrlRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rootCaCrlWithOptions(_ request: RootCaCrlRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RootCaCrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acsHost)) {
            query["AcsHost"] = request.acsHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVpcId)) {
            query["ClientVpcId"] = request.clientVpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RootCaCrl",
            "version": "2020-07-26",
            "protocol": "HTTPS",
            "pathname": "/sgx/certification/v3/rootcacrl",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RootCaCrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rootCaCrl(_ request: RootCaCrlRequest) async throws -> RootCaCrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await rootCaCrlWithOptions(request as! RootCaCrlRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func simplePackagePckCertWithOptions(_ request: SimplePackagePckCertRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SimplePackagePckCertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acsHost)) {
            query["AcsHost"] = request.acsHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVpcId)) {
            query["ClientVpcId"] = request.clientVpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpusvn)) {
            query["cpusvn"] = request.cpusvn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptedPpid)) {
            query["encrypted_ppid"] = request.encryptedPpid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pceid)) {
            query["pceid"] = request.pceid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pcesvn)) {
            query["pcesvn"] = request.pcesvn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qeid)) {
            query["qeid"] = request.qeid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SimplePackagePckCert",
            "version": "2020-07-26",
            "protocol": "HTTPS",
            "pathname": "/sgx/certification/v3/pckcert",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SimplePackagePckCertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func simplePackagePckCert(_ request: SimplePackagePckCertRequest) async throws -> SimplePackagePckCertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await simplePackagePckCertWithOptions(request as! SimplePackagePckCertRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
