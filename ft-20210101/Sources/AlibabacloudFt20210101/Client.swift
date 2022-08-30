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
            "ap-northeast-2-pop": "ft.aliyuncs.com",
            "ap-south-1": "ft.aliyuncs.com",
            "ap-southeast-1": "ft.aliyuncs.com",
            "ap-southeast-2": "ft.aliyuncs.com",
            "ap-southeast-3": "ft.aliyuncs.com",
            "ap-southeast-5": "ft.aliyuncs.com",
            "cn-beijing": "ft.aliyuncs.com",
            "cn-beijing-finance-1": "ft.aliyuncs.com",
            "cn-beijing-finance-pop": "ft.aliyuncs.com",
            "cn-beijing-gov-1": "ft.aliyuncs.com",
            "cn-beijing-nu16-b01": "ft.aliyuncs.com",
            "cn-chengdu": "ft.aliyuncs.com",
            "cn-edge-1": "ft.aliyuncs.com",
            "cn-fujian": "ft.aliyuncs.com",
            "cn-haidian-cm12-c01": "ft.aliyuncs.com",
            "cn-hangzhou-bj-b01": "ft.aliyuncs.com",
            "cn-hangzhou-finance": "ft.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "ft.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "ft.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "ft.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "ft.aliyuncs.com",
            "cn-hangzhou-test-306": "ft.aliyuncs.com",
            "cn-hongkong-finance-pop": "ft.aliyuncs.com",
            "cn-huhehaote": "ft.aliyuncs.com",
            "cn-huhehaote-nebula-1": "ft.aliyuncs.com",
            "cn-qingdao": "ft.aliyuncs.com",
            "cn-qingdao-nebula": "ft.aliyuncs.com",
            "cn-shanghai-et15-b01": "ft.aliyuncs.com",
            "cn-shanghai-et2-b01": "ft.aliyuncs.com",
            "cn-shanghai-finance-1": "ft.aliyuncs.com",
            "cn-shanghai-inner": "ft.aliyuncs.com",
            "cn-shanghai-internal-test-1": "ft.aliyuncs.com",
            "cn-shenzhen-finance-1": "ft.aliyuncs.com",
            "cn-shenzhen-inner": "ft.aliyuncs.com",
            "cn-shenzhen-st4-d01": "ft.aliyuncs.com",
            "cn-shenzhen-su18-b01": "ft.aliyuncs.com",
            "cn-wuhan": "ft.aliyuncs.com",
            "cn-wulanchabu": "ft.aliyuncs.com",
            "cn-yushanfang": "ft.aliyuncs.com",
            "cn-zhangbei": "ft.aliyuncs.com",
            "cn-zhangbei-na61-b01": "ft.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "ft.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "ft.aliyuncs.com",
            "eu-central-1": "ft.aliyuncs.com",
            "eu-west-1": "ft.aliyuncs.com",
            "eu-west-1-oxs": "ft.aliyuncs.com",
            "me-east-1": "ft.aliyuncs.com",
            "rus-west-1-pop": "ft.aliyuncs.com",
            "us-west-1": "ft.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("ft", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func dataRateLimitTestWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DataRateLimitTestResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DataRateLimitTest",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DataRateLimitTestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dataRateLimitTest() async throws -> DataRateLimitTestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await dataRateLimitTestWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func normalRpcHsfApiWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> NormalRpcHsfApiResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "NormalRpcHsfApi",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(NormalRpcHsfApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func normalRpcHsfApi() async throws -> NormalRpcHsfApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await normalRpcHsfApiWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func normalRpcHttpApiWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> NormalRpcHttpApiResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "NormalRpcHttpApi",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(NormalRpcHttpApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func normalRpcHttpApi() async throws -> NormalRpcHttpApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await normalRpcHttpApiWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rpcDataUploadWithOptions(_ request: RpcDataUploadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RpcDataUploadResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.query1)) {
            query["query1"] = request.query1 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query2)) {
            query["query2"] = request.query2!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.largeParam)) {
            body["largeParam"] = request.largeParam ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RpcDataUpload",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RpcDataUploadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rpcDataUpload(_ request: RpcDataUploadRequest) async throws -> RpcDataUploadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rpcDataUploadWithOptions(request as! RpcDataUploadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rpcDataUploadAndDownloadWithOptions(_ request: RpcDataUploadAndDownloadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RpcDataUploadAndDownloadResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.query1)) {
            query["query1"] = request.query1 ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RpcDataUploadAndDownload",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RpcDataUploadAndDownloadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rpcDataUploadAndDownload(_ request: RpcDataUploadAndDownloadRequest) async throws -> RpcDataUploadAndDownloadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rpcDataUploadAndDownloadWithOptions(request as! RpcDataUploadAndDownloadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rpcDataUploadTestWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> RpcDataUploadTestResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RpcDataUploadTest",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RpcDataUploadTestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rpcDataUploadTest() async throws -> RpcDataUploadTestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rpcDataUploadTestWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }
}
