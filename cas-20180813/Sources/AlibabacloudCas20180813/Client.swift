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
    public func listPCAInstanceWithOptions(_ request: ListPCAInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPCAInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
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
            "action": "ListPCAInstance",
            "version": "2018-08-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPCAInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPCAInstance(_ request: ListPCAInstanceRequest) async throws -> ListPCAInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPCAInstanceWithOptions(request as! ListPCAInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
