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
            "ap-northeast-1": "companyreg.aliyuncs.com",
            "ap-northeast-2-pop": "companyreg.aliyuncs.com",
            "ap-south-1": "companyreg.aliyuncs.com",
            "ap-southeast-1": "companyreg.aliyuncs.com",
            "ap-southeast-2": "companyreg.aliyuncs.com",
            "ap-southeast-3": "companyreg.aliyuncs.com",
            "ap-southeast-5": "companyreg.aliyuncs.com",
            "cn-beijing": "companyreg.aliyuncs.com",
            "cn-beijing-finance-1": "companyreg.aliyuncs.com",
            "cn-beijing-finance-pop": "companyreg.aliyuncs.com",
            "cn-beijing-gov-1": "companyreg.aliyuncs.com",
            "cn-beijing-nu16-b01": "companyreg.aliyuncs.com",
            "cn-chengdu": "companyreg.aliyuncs.com",
            "cn-edge-1": "companyreg.aliyuncs.com",
            "cn-fujian": "companyreg.aliyuncs.com",
            "cn-haidian-cm12-c01": "companyreg.aliyuncs.com",
            "cn-hangzhou-bj-b01": "companyreg.aliyuncs.com",
            "cn-hangzhou-finance": "companyreg.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "companyreg.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "companyreg.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "companyreg.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "companyreg.aliyuncs.com",
            "cn-hangzhou-test-306": "companyreg.aliyuncs.com",
            "cn-hongkong": "companyreg.aliyuncs.com",
            "cn-hongkong-finance-pop": "companyreg.aliyuncs.com",
            "cn-huhehaote": "companyreg.aliyuncs.com",
            "cn-huhehaote-nebula-1": "companyreg.aliyuncs.com",
            "cn-north-2-gov-1": "companyreg.aliyuncs.com",
            "cn-qingdao": "companyreg.aliyuncs.com",
            "cn-qingdao-nebula": "companyreg.aliyuncs.com",
            "cn-shanghai": "companyreg.aliyuncs.com",
            "cn-shanghai-et15-b01": "companyreg.aliyuncs.com",
            "cn-shanghai-et2-b01": "companyreg.aliyuncs.com",
            "cn-shanghai-finance-1": "companyreg.aliyuncs.com",
            "cn-shanghai-inner": "companyreg.aliyuncs.com",
            "cn-shanghai-internal-test-1": "companyreg.aliyuncs.com",
            "cn-shenzhen": "companyreg.aliyuncs.com",
            "cn-shenzhen-finance-1": "companyreg.aliyuncs.com",
            "cn-shenzhen-inner": "companyreg.aliyuncs.com",
            "cn-shenzhen-st4-d01": "companyreg.aliyuncs.com",
            "cn-shenzhen-su18-b01": "companyreg.aliyuncs.com",
            "cn-wuhan": "companyreg.aliyuncs.com",
            "cn-wulanchabu": "companyreg.aliyuncs.com",
            "cn-yushanfang": "companyreg.aliyuncs.com",
            "cn-zhangbei": "companyreg.aliyuncs.com",
            "cn-zhangbei-na61-b01": "companyreg.aliyuncs.com",
            "cn-zhangjiakou": "companyreg.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "companyreg.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "companyreg.aliyuncs.com",
            "eu-central-1": "companyreg.aliyuncs.com",
            "eu-west-1": "companyreg.aliyuncs.com",
            "eu-west-1-oxs": "companyreg.aliyuncs.com",
            "me-east-1": "companyreg.aliyuncs.com",
            "rus-west-1-pop": "companyreg.aliyuncs.com",
            "us-east-1": "companyreg.aliyuncs.com",
            "us-west-1": "companyreg.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("companyreg", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func querySuccessIcpDataWithOptions(_ request: QuerySuccessIcpDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySuccessIcpDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySuccessIcpData",
            "version": "2026-04-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySuccessIcpDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySuccessIcpData(_ request: QuerySuccessIcpDataRequest) async throws -> QuerySuccessIcpDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySuccessIcpDataWithOptions(request as! QuerySuccessIcpDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
