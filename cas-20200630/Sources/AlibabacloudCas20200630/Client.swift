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
            "cn-hangzhou": "cas.aliyuncs.com",
            "ap-northeast-2-pop": "cas.aliyuncs.com",
            "ap-southeast-3": "cas.aliyuncs.com",
            "ap-southeast-5": "cas.aliyuncs.com",
            "cn-beijing": "cas.aliyuncs.com",
            "cn-beijing-finance-1": "cas.aliyuncs.com",
            "cn-beijing-finance-pop": "cas.aliyuncs.com",
            "cn-beijing-gov-1": "cas.aliyuncs.com",
            "cn-beijing-nu16-b01": "cas.aliyuncs.com",
            "cn-chengdu": "cas.aliyuncs.com",
            "cn-edge-1": "cas.aliyuncs.com",
            "cn-fujian": "cas.aliyuncs.com",
            "cn-haidian-cm12-c01": "cas.aliyuncs.com",
            "cn-hangzhou-bj-b01": "cas.aliyuncs.com",
            "cn-hangzhou-finance": "cas.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "cas.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "cas.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "cas.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "cas.aliyuncs.com",
            "cn-hangzhou-test-306": "cas.aliyuncs.com",
            "cn-hongkong": "cas.aliyuncs.com",
            "cn-hongkong-finance-pop": "cas.aliyuncs.com",
            "cn-huhehaote": "cas.aliyuncs.com",
            "cn-huhehaote-nebula-1": "cas.aliyuncs.com",
            "cn-north-2-gov-1": "cas.aliyuncs.com",
            "cn-qingdao": "cas.aliyuncs.com",
            "cn-qingdao-nebula": "cas.aliyuncs.com",
            "cn-shanghai": "cas.aliyuncs.com",
            "cn-shanghai-et15-b01": "cas.aliyuncs.com",
            "cn-shanghai-et2-b01": "cas.aliyuncs.com",
            "cn-shanghai-finance-1": "cas.aliyuncs.com",
            "cn-shanghai-inner": "cas.aliyuncs.com",
            "cn-shanghai-internal-test-1": "cas.aliyuncs.com",
            "cn-shenzhen": "cas.aliyuncs.com",
            "cn-shenzhen-finance-1": "cas.aliyuncs.com",
            "cn-shenzhen-inner": "cas.aliyuncs.com",
            "cn-shenzhen-st4-d01": "cas.aliyuncs.com",
            "cn-shenzhen-su18-b01": "cas.aliyuncs.com",
            "cn-wuhan": "cas.aliyuncs.com",
            "cn-wulanchabu": "cas.aliyuncs.com",
            "cn-yushanfang": "cas.aliyuncs.com",
            "cn-zhangbei": "cas.aliyuncs.com",
            "cn-zhangbei-na61-b01": "cas.aliyuncs.com",
            "cn-zhangjiakou": "cas.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "cas.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "cas.aliyuncs.com",
            "eu-west-1": "cas.aliyuncs.com",
            "eu-west-1-oxs": "cas.aliyuncs.com",
            "rus-west-1-pop": "cas.aliyuncs.com",
            "us-east-1": "cas.aliyuncs.com",
            "us-west-1": "cas.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("cas", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createClientCertificateWithOptions(_ request: CreateClientCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateClientCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.afterTime)) {
            query["AfterTime"] = request.afterTime!;
        }
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            query["Algorithm"] = request.algorithm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.beforeTime)) {
            query["BeforeTime"] = request.beforeTime!;
        }
        if (!TeaUtils.Client.isUnset(request.commonName)) {
            query["CommonName"] = request.commonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.days)) {
            query["Days"] = request.days!;
        }
        if (!TeaUtils.Client.isUnset(request.enableCrl)) {
            query["EnableCrl"] = request.enableCrl!;
        }
        if (!TeaUtils.Client.isUnset(request.immediately)) {
            query["Immediately"] = request.immediately!;
        }
        if (!TeaUtils.Client.isUnset(request.locality)) {
            query["Locality"] = request.locality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.months)) {
            query["Months"] = request.months!;
        }
        if (!TeaUtils.Client.isUnset(request.organization)) {
            query["Organization"] = request.organization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationUnit)) {
            query["OrganizationUnit"] = request.organizationUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentIdentifier)) {
            query["ParentIdentifier"] = request.parentIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sanType)) {
            query["SanType"] = request.sanType!;
        }
        if (!TeaUtils.Client.isUnset(request.sanValue)) {
            query["SanValue"] = request.sanValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.years)) {
            query["Years"] = request.years!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateClientCertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateClientCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClientCertificate(_ request: CreateClientCertificateRequest) async throws -> CreateClientCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createClientCertificateWithOptions(request as! CreateClientCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClientCertificateWithCsrWithOptions(_ request: CreateClientCertificateWithCsrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateClientCertificateWithCsrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.afterTime)) {
            query["AfterTime"] = request.afterTime!;
        }
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            query["Algorithm"] = request.algorithm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.beforeTime)) {
            query["BeforeTime"] = request.beforeTime!;
        }
        if (!TeaUtils.Client.isUnset(request.commonName)) {
            query["CommonName"] = request.commonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.csr)) {
            query["Csr"] = request.csr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.days)) {
            query["Days"] = request.days!;
        }
        if (!TeaUtils.Client.isUnset(request.enableCrl)) {
            query["EnableCrl"] = request.enableCrl!;
        }
        if (!TeaUtils.Client.isUnset(request.immediately)) {
            query["Immediately"] = request.immediately!;
        }
        if (!TeaUtils.Client.isUnset(request.locality)) {
            query["Locality"] = request.locality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.months)) {
            query["Months"] = request.months!;
        }
        if (!TeaUtils.Client.isUnset(request.organization)) {
            query["Organization"] = request.organization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationUnit)) {
            query["OrganizationUnit"] = request.organizationUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentIdentifier)) {
            query["ParentIdentifier"] = request.parentIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sanType)) {
            query["SanType"] = request.sanType!;
        }
        if (!TeaUtils.Client.isUnset(request.sanValue)) {
            query["SanValue"] = request.sanValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.years)) {
            query["Years"] = request.years!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateClientCertificateWithCsr",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateClientCertificateWithCsrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClientCertificateWithCsr(_ request: CreateClientCertificateWithCsrRequest) async throws -> CreateClientCertificateWithCsrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createClientCertificateWithCsrWithOptions(request as! CreateClientCertificateWithCsrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomCertificateWithOptions(_ request: CreateCustomCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCustomCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiPassthrough)) {
            query["ApiPassthrough"] = request.apiPassthrough!;
        }
        if (!TeaUtils.Client.isUnset(request.csr)) {
            query["Csr"] = request.csr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableCrl)) {
            query["EnableCrl"] = request.enableCrl!;
        }
        if (!TeaUtils.Client.isUnset(request.immediately)) {
            query["Immediately"] = request.immediately!;
        }
        if (!TeaUtils.Client.isUnset(request.parentIdentifier)) {
            query["ParentIdentifier"] = request.parentIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.validity)) {
            query["Validity"] = request.validity ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCustomCertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCustomCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomCertificate(_ request: CreateCustomCertificateRequest) async throws -> CreateCustomCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCustomCertificateWithOptions(request as! CreateCustomCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExternalCACertificateWithOptions(_ tmpReq: CreateExternalCACertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateExternalCACertificateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateExternalCACertificateShrinkRequest = CreateExternalCACertificateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.apiPassthrough)) {
            request.apiPassthroughShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.apiPassthrough, "ApiPassthrough", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiPassthroughShrink)) {
            query["ApiPassthrough"] = request.apiPassthroughShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.csr)) {
            query["Csr"] = request.csr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.validity)) {
            query["Validity"] = request.validity ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateExternalCACertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateExternalCACertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExternalCACertificate(_ request: CreateExternalCACertificateRequest) async throws -> CreateExternalCACertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createExternalCACertificateWithOptions(request as! CreateExternalCACertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRevokeClientCertificateWithOptions(_ request: CreateRevokeClientCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRevokeClientCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRevokeClientCertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRevokeClientCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRevokeClientCertificate(_ request: CreateRevokeClientCertificateRequest) async throws -> CreateRevokeClientCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRevokeClientCertificateWithOptions(request as! CreateRevokeClientCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRootCACertificateWithOptions(_ request: CreateRootCACertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRootCACertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            query["Algorithm"] = request.algorithm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commonName)) {
            query["CommonName"] = request.commonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countryCode)) {
            query["CountryCode"] = request.countryCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locality)) {
            query["Locality"] = request.locality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organization)) {
            query["Organization"] = request.organization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationUnit)) {
            query["OrganizationUnit"] = request.organizationUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.years)) {
            query["Years"] = request.years!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRootCACertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRootCACertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRootCACertificate(_ request: CreateRootCACertificateRequest) async throws -> CreateRootCACertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRootCACertificateWithOptions(request as! CreateRootCACertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServerCertificateWithOptions(_ request: CreateServerCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServerCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.afterTime)) {
            query["AfterTime"] = request.afterTime!;
        }
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            query["Algorithm"] = request.algorithm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.beforeTime)) {
            query["BeforeTime"] = request.beforeTime!;
        }
        if (!TeaUtils.Client.isUnset(request.commonName)) {
            query["CommonName"] = request.commonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.days)) {
            query["Days"] = request.days!;
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableCrl)) {
            query["EnableCrl"] = request.enableCrl!;
        }
        if (!TeaUtils.Client.isUnset(request.immediately)) {
            query["Immediately"] = request.immediately!;
        }
        if (!TeaUtils.Client.isUnset(request.locality)) {
            query["Locality"] = request.locality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.months)) {
            query["Months"] = request.months!;
        }
        if (!TeaUtils.Client.isUnset(request.organization)) {
            query["Organization"] = request.organization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationUnit)) {
            query["OrganizationUnit"] = request.organizationUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentIdentifier)) {
            query["ParentIdentifier"] = request.parentIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.years)) {
            query["Years"] = request.years!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServerCertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServerCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServerCertificate(_ request: CreateServerCertificateRequest) async throws -> CreateServerCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createServerCertificateWithOptions(request as! CreateServerCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServerCertificateWithCsrWithOptions(_ request: CreateServerCertificateWithCsrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServerCertificateWithCsrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.afterTime)) {
            query["AfterTime"] = request.afterTime!;
        }
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            query["Algorithm"] = request.algorithm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.beforeTime)) {
            query["BeforeTime"] = request.beforeTime!;
        }
        if (!TeaUtils.Client.isUnset(request.commonName)) {
            query["CommonName"] = request.commonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.csr)) {
            query["Csr"] = request.csr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.days)) {
            query["Days"] = request.days!;
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableCrl)) {
            query["EnableCrl"] = request.enableCrl!;
        }
        if (!TeaUtils.Client.isUnset(request.immediately)) {
            query["Immediately"] = request.immediately!;
        }
        if (!TeaUtils.Client.isUnset(request.locality)) {
            query["Locality"] = request.locality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.months)) {
            query["Months"] = request.months!;
        }
        if (!TeaUtils.Client.isUnset(request.organization)) {
            query["Organization"] = request.organization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationUnit)) {
            query["OrganizationUnit"] = request.organizationUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentIdentifier)) {
            query["ParentIdentifier"] = request.parentIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.years)) {
            query["Years"] = request.years!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServerCertificateWithCsr",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServerCertificateWithCsrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServerCertificateWithCsr(_ request: CreateServerCertificateWithCsrRequest) async throws -> CreateServerCertificateWithCsrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createServerCertificateWithCsrWithOptions(request as! CreateServerCertificateWithCsrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubCACertificateWithOptions(_ request: CreateSubCACertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSubCACertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            query["Algorithm"] = request.algorithm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commonName)) {
            query["CommonName"] = request.commonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countryCode)) {
            query["CountryCode"] = request.countryCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crlDay)) {
            query["CrlDay"] = request.crlDay!;
        }
        if (!TeaUtils.Client.isUnset(request.enableCrl)) {
            query["EnableCrl"] = request.enableCrl!;
        }
        if (!TeaUtils.Client.isUnset(request.extendedKeyUsages)) {
            query["ExtendedKeyUsages"] = request.extendedKeyUsages ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.locality)) {
            query["Locality"] = request.locality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organization)) {
            query["Organization"] = request.organization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationUnit)) {
            query["OrganizationUnit"] = request.organizationUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentIdentifier)) {
            query["ParentIdentifier"] = request.parentIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pathLenConstraint)) {
            query["PathLenConstraint"] = request.pathLenConstraint!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.years)) {
            query["Years"] = request.years!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSubCACertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSubCACertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubCACertificate(_ request: CreateSubCACertificateRequest) async throws -> CreateSubCACertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSubCACertificateWithOptions(request as! CreateSubCACertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClientCertificateWithOptions(_ request: DeleteClientCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteClientCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteClientCertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteClientCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClientCertificate(_ request: DeleteClientCertificateRequest) async throws -> DeleteClientCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteClientCertificateWithOptions(request as! DeleteClientCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCACertificateWithOptions(_ request: DescribeCACertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCACertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCACertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCACertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCACertificate(_ request: DescribeCACertificateRequest) async throws -> DescribeCACertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCACertificateWithOptions(request as! DescribeCACertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCACertificateCountWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCACertificateCountResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCACertificateCount",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCACertificateCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCACertificateCount() async throws -> DescribeCACertificateCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCACertificateCountWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCACertificateListWithOptions(_ request: DescribeCACertificateListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCACertificateListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caStatus)) {
            query["CaStatus"] = request.caStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certType)) {
            query["CertType"] = request.certType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.issuerType)) {
            query["IssuerType"] = request.issuerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showSize)) {
            query["ShowSize"] = request.showSize!;
        }
        if (!TeaUtils.Client.isUnset(request.validStatus)) {
            query["ValidStatus"] = request.validStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCACertificateList",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCACertificateListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCACertificateList(_ request: DescribeCACertificateListRequest) async throws -> DescribeCACertificateListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCACertificateListWithOptions(request as! DescribeCACertificateListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCertificatePrivateKeyWithOptions(_ request: DescribeCertificatePrivateKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCertificatePrivateKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encryptedCode)) {
            query["EncryptedCode"] = request.encryptedCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCertificatePrivateKey",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCertificatePrivateKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCertificatePrivateKey(_ request: DescribeCertificatePrivateKeyRequest) async throws -> DescribeCertificatePrivateKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCertificatePrivateKeyWithOptions(request as! DescribeCertificatePrivateKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClientCertificateWithOptions(_ request: DescribeClientCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClientCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClientCertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClientCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClientCertificate(_ request: DescribeClientCertificateRequest) async throws -> DescribeClientCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClientCertificateWithOptions(request as! DescribeClientCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClientCertificateStatusWithOptions(_ request: DescribeClientCertificateStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClientCertificateStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClientCertificateStatus",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClientCertificateStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClientCertificateStatus(_ request: DescribeClientCertificateStatusRequest) async throws -> DescribeClientCertificateStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClientCertificateStatusWithOptions(request as! DescribeClientCertificateStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCAInstanceStatusWithOptions(_ request: GetCAInstanceStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCAInstanceStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCAInstanceStatus",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCAInstanceStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCAInstanceStatus(_ request: GetCAInstanceStatusRequest) async throws -> GetCAInstanceStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCAInstanceStatusWithOptions(request as! GetCAInstanceStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCertWithOptions(_ request: ListCertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.afterDate)) {
            query["AfterDate"] = request.afterDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.beforeDate)) {
            query["BeforeDate"] = request.beforeDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceUuid)) {
            query["InstanceUuid"] = request.instanceUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showSize)) {
            query["ShowSize"] = request.showSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCert",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCert(_ request: ListCertRequest) async throws -> ListCertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCertWithOptions(request as! ListCertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClientCertificateWithOptions(_ request: ListClientCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClientCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showSize)) {
            query["ShowSize"] = request.showSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClientCertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClientCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClientCertificate(_ request: ListClientCertificateRequest) async throws -> ListClientCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listClientCertificateWithOptions(request as! ListClientCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPcaCaCertificateWithOptions(_ request: ListPcaCaCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPcaCaCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPcaCaCertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPcaCaCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPcaCaCertificate(_ request: ListPcaCaCertificateRequest) async throws -> ListPcaCaCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPcaCaCertificateWithOptions(request as! ListPcaCaCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRevokeCertificateWithOptions(_ request: ListRevokeCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRevokeCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.showSize)) {
            query["ShowSize"] = request.showSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRevokeCertificate",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRevokeCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRevokeCertificate(_ request: ListRevokeCertificateRequest) async throws -> ListRevokeCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRevokeCertificateWithOptions(request as! ListRevokeCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCACertificateStatusWithOptions(_ request: UpdateCACertificateStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCACertificateStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCACertificateStatus",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCACertificateStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCACertificateStatus(_ request: UpdateCACertificateStatusRequest) async throws -> UpdateCACertificateStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateCACertificateStatusWithOptions(request as! UpdateCACertificateStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadPcaCertToCasWithOptions(_ request: UploadPcaCertToCasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadPcaCertToCasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ids)) {
            query["Ids"] = request.ids ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadPcaCertToCas",
            "version": "2020-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadPcaCertToCasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadPcaCertToCas(_ request: UploadPcaCertToCasRequest) async throws -> UploadPcaCertToCasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadPcaCertToCasWithOptions(request as! UploadPcaCertToCasRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
