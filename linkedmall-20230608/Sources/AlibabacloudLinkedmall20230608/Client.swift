import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "regional"
        self._endpointMap = [
            "cn-hangzhou": "linkedmall.aliyuncs.com",
            "cn-shanghai": "linkedmall.aliyuncs.com",
            "ap-northeast-1": "linkedmall.aliyuncs.com",
            "ap-northeast-2-pop": "linkedmall.aliyuncs.com",
            "ap-south-1": "linkedmall.aliyuncs.com",
            "ap-southeast-1": "linkedmall.aliyuncs.com",
            "ap-southeast-2": "linkedmall.aliyuncs.com",
            "ap-southeast-3": "linkedmall.aliyuncs.com",
            "ap-southeast-5": "linkedmall.aliyuncs.com",
            "cn-beijing": "linkedmall.aliyuncs.com",
            "cn-beijing-finance-1": "linkedmall.aliyuncs.com",
            "cn-beijing-finance-pop": "linkedmall.aliyuncs.com",
            "cn-beijing-gov-1": "linkedmall.aliyuncs.com",
            "cn-beijing-nu16-b01": "linkedmall.aliyuncs.com",
            "cn-chengdu": "linkedmall.aliyuncs.com",
            "cn-edge-1": "linkedmall.aliyuncs.com",
            "cn-fujian": "linkedmall.aliyuncs.com",
            "cn-haidian-cm12-c01": "linkedmall.aliyuncs.com",
            "cn-hangzhou-bj-b01": "linkedmall.aliyuncs.com",
            "cn-hangzhou-finance": "linkedmall.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "linkedmall.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "linkedmall.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "linkedmall.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "linkedmall.aliyuncs.com",
            "cn-hangzhou-test-306": "linkedmall.aliyuncs.com",
            "cn-hongkong": "linkedmall.aliyuncs.com",
            "cn-hongkong-finance-pop": "linkedmall.aliyuncs.com",
            "cn-huhehaote": "linkedmall.aliyuncs.com",
            "cn-north-2-gov-1": "linkedmall.aliyuncs.com",
            "cn-qingdao": "linkedmall.aliyuncs.com",
            "cn-qingdao-nebula": "linkedmall.aliyuncs.com",
            "cn-shanghai-et15-b01": "linkedmall.aliyuncs.com",
            "cn-shanghai-et2-b01": "linkedmall.aliyuncs.com",
            "cn-shanghai-finance-1": "linkedmall.aliyuncs.com",
            "cn-shanghai-inner": "linkedmall.aliyuncs.com",
            "cn-shanghai-internal-test-1": "linkedmall.aliyuncs.com",
            "cn-shenzhen": "linkedmall.aliyuncs.com",
            "cn-shenzhen-finance-1": "linkedmall.aliyuncs.com",
            "cn-shenzhen-inner": "linkedmall.aliyuncs.com",
            "cn-shenzhen-st4-d01": "linkedmall.aliyuncs.com",
            "cn-shenzhen-su18-b01": "linkedmall.aliyuncs.com",
            "cn-wuhan": "linkedmall.aliyuncs.com",
            "cn-yushanfang": "linkedmall.aliyuncs.com",
            "cn-zhangbei-na61-b01": "linkedmall.aliyuncs.com",
            "cn-zhangjiakou": "linkedmall.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "linkedmall.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "linkedmall.aliyuncs.com",
            "eu-central-1": "linkedmall.aliyuncs.com",
            "eu-west-1": "linkedmall.aliyuncs.com",
            "eu-west-1-oxs": "linkedmall.aliyuncs.com",
            "me-east-1": "linkedmall.aliyuncs.com",
            "rus-west-1-pop": "linkedmall.aliyuncs.com",
            "us-east-1": "linkedmall.aliyuncs.com",
            "us-west-1": "linkedmall.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("linkedmall", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
}
