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
            "cn-hangzhou": "mt.cn-hangzhou.aliyuncs.com",
            "ap-northeast-1": "mt.aliyuncs.com",
            "ap-northeast-2-pop": "mt.aliyuncs.com",
            "ap-south-1": "mt.aliyuncs.com",
            "ap-southeast-1": "mt.ap-southeast-1.aliyuncs.com",
            "ap-southeast-2": "mt.aliyuncs.com",
            "ap-southeast-3": "mt.aliyuncs.com",
            "ap-southeast-5": "mt.aliyuncs.com",
            "cn-beijing": "mt.aliyuncs.com",
            "cn-beijing-finance-1": "mt.aliyuncs.com",
            "cn-beijing-finance-pop": "mt.aliyuncs.com",
            "cn-beijing-gov-1": "mt.aliyuncs.com",
            "cn-beijing-nu16-b01": "mt.aliyuncs.com",
            "cn-chengdu": "mt.aliyuncs.com",
            "cn-edge-1": "mt.aliyuncs.com",
            "cn-fujian": "mt.aliyuncs.com",
            "cn-haidian-cm12-c01": "mt.aliyuncs.com",
            "cn-hangzhou-bj-b01": "mt.aliyuncs.com",
            "cn-hangzhou-finance": "mt.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "mt.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "mt.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "mt.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "mt.aliyuncs.com",
            "cn-hangzhou-test-306": "mt.aliyuncs.com",
            "cn-hongkong": "mt.aliyuncs.com",
            "cn-hongkong-finance-pop": "mt.aliyuncs.com",
            "cn-huhehaote": "mt.aliyuncs.com",
            "cn-north-2-gov-1": "mt.aliyuncs.com",
            "cn-qingdao": "mt.aliyuncs.com",
            "cn-qingdao-nebula": "mt.aliyuncs.com",
            "cn-shanghai": "mt.aliyuncs.com",
            "cn-shanghai-et15-b01": "mt.aliyuncs.com",
            "cn-shanghai-et2-b01": "mt.aliyuncs.com",
            "cn-shanghai-finance-1": "mt.aliyuncs.com",
            "cn-shanghai-inner": "mt.aliyuncs.com",
            "cn-shanghai-internal-test-1": "mt.aliyuncs.com",
            "cn-shenzhen": "mt.aliyuncs.com",
            "cn-shenzhen-finance-1": "mt.aliyuncs.com",
            "cn-shenzhen-inner": "mt.aliyuncs.com",
            "cn-shenzhen-st4-d01": "mt.aliyuncs.com",
            "cn-shenzhen-su18-b01": "mt.aliyuncs.com",
            "cn-wuhan": "mt.aliyuncs.com",
            "cn-yushanfang": "mt.aliyuncs.com",
            "cn-zhangbei-na61-b01": "mt.aliyuncs.com",
            "cn-zhangjiakou": "mt.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "mt.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "mt.aliyuncs.com",
            "eu-central-1": "mt.aliyuncs.com",
            "eu-west-1": "mt.aliyuncs.com",
            "eu-west-1-oxs": "mt.aliyuncs.com",
            "me-east-1": "mt.aliyuncs.com",
            "rus-west-1-pop": "mt.aliyuncs.com",
            "us-east-1": "mt.aliyuncs.com",
            "us-west-1": "mt.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("alimt", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func translateECommerceWithOptions(_ request: TranslateECommerceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TranslateECommerceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            query["FormatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            query["Scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            query["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceText)) {
            query["SourceText"] = request.sourceText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            query["TargetLanguage"] = request.targetLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TranslateECommerce",
            "version": "2019-01-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TranslateECommerceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateECommerce(_ request: TranslateECommerceRequest) async throws -> TranslateECommerceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await translateECommerceWithOptions(request as! TranslateECommerceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateGeneralWithOptions(_ request: TranslateGeneralRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TranslateGeneralResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            query["FormatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            query["Scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            query["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceText)) {
            query["SourceText"] = request.sourceText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            query["TargetLanguage"] = request.targetLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TranslateGeneral",
            "version": "2019-01-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TranslateGeneralResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateGeneral(_ request: TranslateGeneralRequest) async throws -> TranslateGeneralResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await translateGeneralWithOptions(request as! TranslateGeneralRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
