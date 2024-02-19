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
            "ap-northeast-2-pop": "edas.ap-northeast-1.aliyuncs.com",
            "ap-south-1": "edas.ap-northeast-1.aliyuncs.com",
            "ap-southeast-3": "edas.ap-northeast-1.aliyuncs.com",
            "ap-southeast-5": "edas.ap-northeast-1.aliyuncs.com",
            "cn-beijing-finance-1": "edas.aliyuncs.com",
            "cn-beijing-finance-pop": "edas.aliyuncs.com",
            "cn-beijing-gov-1": "edas.aliyuncs.com",
            "cn-beijing-nu16-b01": "edas.aliyuncs.com",
            "cn-chengdu": "edas.aliyuncs.com",
            "cn-edge-1": "edas.aliyuncs.com",
            "cn-fujian": "edas.aliyuncs.com",
            "cn-haidian-cm12-c01": "edas.aliyuncs.com",
            "cn-hangzhou-bj-b01": "edas.aliyuncs.com",
            "cn-hangzhou-finance": "edas.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "edas.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "edas.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "edas.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "edas.aliyuncs.com",
            "cn-hangzhou-test-306": "edas.aliyuncs.com",
            "cn-hongkong-finance-pop": "edas.aliyuncs.com",
            "cn-huhehaote": "edas.aliyuncs.com",
            "cn-qingdao-nebula": "edas.aliyuncs.com",
            "cn-shanghai-et15-b01": "edas.aliyuncs.com",
            "cn-shanghai-et2-b01": "edas.aliyuncs.com",
            "cn-shanghai-finance-1": "edas.aliyuncs.com",
            "cn-shanghai-inner": "edas.aliyuncs.com",
            "cn-shanghai-internal-test-1": "edas.aliyuncs.com",
            "cn-shenzhen-finance-1": "edas.aliyuncs.com",
            "cn-shenzhen-inner": "edas.aliyuncs.com",
            "cn-shenzhen-st4-d01": "edas.aliyuncs.com",
            "cn-shenzhen-su18-b01": "edas.aliyuncs.com",
            "cn-wuhan": "edas.aliyuncs.com",
            "cn-yushanfang": "edas.aliyuncs.com",
            "cn-zhangbei-na61-b01": "edas.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "edas.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "edas.aliyuncs.com",
            "eu-west-1": "edas.ap-northeast-1.aliyuncs.com",
            "eu-west-1-oxs": "edas.ap-northeast-1.aliyuncs.com",
            "me-east-1": "edas.ap-northeast-1.aliyuncs.com",
            "rus-west-1-pop": "edas.ap-northeast-1.aliyuncs.com",
            "us-west-1": "edas.ap-northeast-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("edas", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func edasRefundWithOptions(_ request: EdasRefundRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EdasRefundResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["data"] = request.data ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EdasRefund",
            "version": "2016-08-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EdasRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func edasRefund(_ request: EdasRefundRequest) async throws -> EdasRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await edasRefundWithOptions(request as! EdasRefundRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
