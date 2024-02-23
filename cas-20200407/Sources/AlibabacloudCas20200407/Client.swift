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
    public func cancelCertificateForPackageRequestWithOptions(_ request: CancelCertificateForPackageRequestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelCertificateForPackageRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelCertificateForPackageRequest",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelCertificateForPackageRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelCertificateForPackageRequest(_ request: CancelCertificateForPackageRequestRequest) async throws -> CancelCertificateForPackageRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelCertificateForPackageRequestWithOptions(request as! CancelCertificateForPackageRequestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrderRequestWithOptions(_ request: CancelOrderRequestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelOrderRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelOrderRequest",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelOrderRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrderRequest(_ request: CancelOrderRequestRequest) async throws -> CancelOrderRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelOrderRequestWithOptions(request as! CancelOrderRequestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCertificateForPackageRequestWithOptions(_ request: CreateCertificateForPackageRequestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCertificateForPackageRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.companyName)) {
            query["CompanyName"] = request.companyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.csr)) {
            query["Csr"] = request.csr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            query["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validateType)) {
            query["ValidateType"] = request.validateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCertificateForPackageRequest",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCertificateForPackageRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCertificateForPackageRequest(_ request: CreateCertificateForPackageRequestRequest) async throws -> CreateCertificateForPackageRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCertificateForPackageRequestWithOptions(request as! CreateCertificateForPackageRequestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCertificateRequestWithOptions(_ request: CreateCertificateRequestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCertificateRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            query["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validateType)) {
            query["ValidateType"] = request.validateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCertificateRequest",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCertificateRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCertificateRequest(_ request: CreateCertificateRequestRequest) async throws -> CreateCertificateRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCertificateRequestWithOptions(request as! CreateCertificateRequestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCertificateWithCsrRequestWithOptions(_ request: CreateCertificateWithCsrRequestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCertificateWithCsrRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.csr)) {
            query["Csr"] = request.csr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            query["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validateType)) {
            query["ValidateType"] = request.validateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCertificateWithCsrRequest",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCertificateWithCsrRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCertificateWithCsrRequest(_ request: CreateCertificateWithCsrRequestRequest) async throws -> CreateCertificateWithCsrRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCertificateWithCsrRequestWithOptions(request as! CreateCertificateWithCsrRequestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWHClientCertificateWithOptions(_ request: CreateWHClientCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWHClientCertificateResponse {
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
        if (!TeaUtils.Client.isUnset(request.sanType)) {
            query["SanType"] = request.sanType!;
        }
        if (!TeaUtils.Client.isUnset(request.sanValue)) {
            query["SanValue"] = request.sanValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.years)) {
            query["Years"] = request.years!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWHClientCertificate",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWHClientCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWHClientCertificate(_ request: CreateWHClientCertificateRequest) async throws -> CreateWHClientCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWHClientCertificateWithOptions(request as! CreateWHClientCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func decryptWithOptions(_ request: DecryptRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DecryptResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            query["Algorithm"] = request.algorithm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certIdentifier)) {
            query["CertIdentifier"] = request.certIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ciphertextBlob)) {
            query["CiphertextBlob"] = request.ciphertextBlob ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messageType)) {
            query["MessageType"] = request.messageType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Decrypt",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DecryptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func decrypt(_ request: DecryptRequest) async throws -> DecryptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await decryptWithOptions(request as! DecryptRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCertificateRequestWithOptions(_ request: DeleteCertificateRequestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCertificateRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCertificateRequest",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCertificateRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCertificateRequest(_ request: DeleteCertificateRequestRequest) async throws -> DeleteCertificateRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCertificateRequestWithOptions(request as! DeleteCertificateRequestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePCACertWithOptions(_ request: DeletePCACertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePCACertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePCACert",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePCACertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePCACert(_ request: DeletePCACertRequest) async throws -> DeletePCACertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePCACertWithOptions(request as! DeletePCACertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserCertificateWithOptions(_ request: DeleteUserCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certId)) {
            query["CertId"] = request.certId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserCertificate",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserCertificate(_ request: DeleteUserCertificateRequest) async throws -> DeleteUserCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUserCertificateWithOptions(request as! DeleteUserCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCertificateStateWithOptions(_ request: DescribeCertificateStateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCertificateStateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCertificateState",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCertificateStateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCertificateState(_ request: DescribeCertificateStateRequest) async throws -> DescribeCertificateStateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCertificateStateWithOptions(request as! DescribeCertificateStateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePackageStateWithOptions(_ request: DescribePackageStateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePackageStateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePackageState",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePackageStateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePackageState(_ request: DescribePackageStateRequest) async throws -> DescribePackageStateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePackageStateWithOptions(request as! DescribePackageStateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func encryptWithOptions(_ request: EncryptRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EncryptResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            query["Algorithm"] = request.algorithm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certIdentifier)) {
            query["CertIdentifier"] = request.certIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messageType)) {
            query["MessageType"] = request.messageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.plaintext)) {
            query["Plaintext"] = request.plaintext ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Encrypt",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EncryptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func encrypt(_ request: EncryptRequest) async throws -> EncryptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await encryptWithOptions(request as! EncryptRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCertWarehouseQuotaWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetCertWarehouseQuotaResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCertWarehouseQuota",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCertWarehouseQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCertWarehouseQuota() async throws -> GetCertWarehouseQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCertWarehouseQuotaWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserCertificateDetailWithOptions(_ request: GetUserCertificateDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserCertificateDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certFilter)) {
            query["CertFilter"] = request.certFilter!;
        }
        if (!TeaUtils.Client.isUnset(request.certId)) {
            query["CertId"] = request.certId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserCertificateDetail",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserCertificateDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserCertificateDetail(_ request: GetUserCertificateDetailRequest) async throws -> GetUserCertificateDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserCertificateDetailWithOptions(request as! GetUserCertificateDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCertWithOptions(_ request: ListCertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certType)) {
            query["CertType"] = request.certType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.keyWord)) {
            query["KeyWord"] = request.keyWord ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showSize)) {
            query["ShowSize"] = request.showSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warehouseId)) {
            query["WarehouseId"] = request.warehouseId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCert",
            "version": "2020-04-07",
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
    public func listCertWarehouseWithOptions(_ request: ListCertWarehouseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCertWarehouseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showSize)) {
            query["ShowSize"] = request.showSize!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCertWarehouse",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCertWarehouseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCertWarehouse(_ request: ListCertWarehouseRequest) async throws -> ListCertWarehouseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCertWarehouseWithOptions(request as! ListCertWarehouseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserCertificateOrderWithOptions(_ request: ListUserCertificateOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserCertificateOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showSize)) {
            query["ShowSize"] = request.showSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserCertificateOrder",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserCertificateOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserCertificateOrder(_ request: ListUserCertificateOrderRequest) async throws -> ListUserCertificateOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserCertificateOrderWithOptions(request as! ListUserCertificateOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewCertificateOrderForPackageRequestWithOptions(_ request: RenewCertificateOrderForPackageRequestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewCertificateOrderForPackageRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.csr)) {
            query["Csr"] = request.csr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewCertificateOrderForPackageRequest",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewCertificateOrderForPackageRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewCertificateOrderForPackageRequest(_ request: RenewCertificateOrderForPackageRequestRequest) async throws -> RenewCertificateOrderForPackageRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewCertificateOrderForPackageRequestWithOptions(request as! RenewCertificateOrderForPackageRequestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeWHClientCertificateWithOptions(_ request: RevokeWHClientCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeWHClientCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeWHClientCertificate",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeWHClientCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeWHClientCertificate(_ request: RevokeWHClientCertificateRequest) async throws -> RevokeWHClientCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokeWHClientCertificateWithOptions(request as! RevokeWHClientCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func signWithOptions(_ request: SignRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SignResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certIdentifier)) {
            query["CertIdentifier"] = request.certIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            query["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messageType)) {
            query["MessageType"] = request.messageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signingAlgorithm)) {
            query["SigningAlgorithm"] = request.signingAlgorithm ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Sign",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SignResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sign(_ request: SignRequest) async throws -> SignResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await signWithOptions(request as! SignRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadPCACertWithOptions(_ request: UploadPCACertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadPCACertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cert)) {
            query["Cert"] = request.cert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateKey)) {
            query["PrivateKey"] = request.privateKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warehouseId)) {
            query["WarehouseId"] = request.warehouseId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadPCACert",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadPCACertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadPCACert(_ request: UploadPCACertRequest) async throws -> UploadPCACertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadPCACertWithOptions(request as! UploadPCACertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadUserCertificateWithOptions(_ request: UploadUserCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadUserCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cert)) {
            query["Cert"] = request.cert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptCert)) {
            query["EncryptCert"] = request.encryptCert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptPrivateKey)) {
            query["EncryptPrivateKey"] = request.encryptPrivateKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signCert)) {
            query["SignCert"] = request.signCert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signPrivateKey)) {
            query["SignPrivateKey"] = request.signPrivateKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadUserCertificate",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadUserCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadUserCertificate(_ request: UploadUserCertificateRequest) async throws -> UploadUserCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadUserCertificateWithOptions(request as! UploadUserCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyWithOptions(_ request: VerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certIdentifier)) {
            query["CertIdentifier"] = request.certIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            query["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messageType)) {
            query["MessageType"] = request.messageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureValue)) {
            query["SignatureValue"] = request.signatureValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signingAlgorithm)) {
            query["SigningAlgorithm"] = request.signingAlgorithm ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Verify",
            "version": "2020-04-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verify(_ request: VerifyRequest) async throws -> VerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyWithOptions(request as! VerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
