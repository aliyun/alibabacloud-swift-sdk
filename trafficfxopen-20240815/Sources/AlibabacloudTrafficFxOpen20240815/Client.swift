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
        self._endpoint = try getEndpoint("trafficfxopen", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func convertUrlWithOptions(_ request: ConvertUrlRequest, _ headers: ConvertUrlHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConvertUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.countryCallingCode)) {
            body["countryCallingCode"] = request.countryCallingCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jumpUrl)) {
            body["jumpUrl"] = request.jumpUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdId)) {
            body["thirdId"] = request.thirdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            body["uid"] = request.uid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.xenv)) {
            body["xenv"] = request.xenv ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["xAcsAirticketAccessToken"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["xAcsAirticketLanguage"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConvertUrl",
            "version": "2024-08-15",
            "protocol": "HTTPS",
            "pathname": "/v1/distribution/trade/convertUrl",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConvertUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func convertUrl(_ request: ConvertUrlRequest) async throws -> ConvertUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ConvertUrlHeaders = ConvertUrlHeaders([:])
        return try await convertUrlWithOptions(request as! ConvertUrlRequest, headers as! ConvertUrlHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenWithOptions(_ request: GetTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["appKey"] = request.appKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appSecret)) {
            query["appSecret"] = request.appSecret ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetToken",
            "version": "2024-08-15",
            "protocol": "HTTPS",
            "pathname": "/v1/distribution/trade/getToken",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getToken(_ request: GetTokenRequest) async throws -> GetTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTokenWithOptions(request as! GetTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchWithOptions(_ request: SearchRequest, _ headers: SearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchParam)) {
            body["searchParam"] = request.searchParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminal)) {
            body["terminal"] = request.terminal ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["xAcsAirticketAccessToken"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["xAcsAirticketLanguage"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Search",
            "version": "2024-08-15",
            "protocol": "HTTPS",
            "pathname": "/v1/distribution/trade/search",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func search(_ request: SearchRequest) async throws -> SearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SearchHeaders = SearchHeaders([:])
        return try await searchWithOptions(request as! SearchRequest, headers as! SearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }
}
