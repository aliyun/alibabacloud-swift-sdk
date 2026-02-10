import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "central"
        self._endpointMap = [
            "ap-northeast-1": "workorder.ap-northeast-1.aliyuncs.com",
            "ap-southeast-1": "workorder.ap-southeast-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("workorder", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func getTicketTemplateWithOptions(_ request: GetTicketTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTicketTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryId)) {
            query["CategoryId"] = request.categoryId!;
        }
        if (!TeaUtils.Client.isUnset(request.cna)) {
            query["Cna"] = request.cna ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionChannel)) {
            query["DistributionChannel"] = request.distributionChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referrer)) {
            query["Referrer"] = request.referrer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDistributionChannel)) {
            query["SubDistributionChannel"] = request.subDistributionChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.XGatewayExtendInfo)) {
            query["XGatewayExtendInfo"] = request.XGatewayExtendInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTicketTemplate",
            "version": "2020-12-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTicketTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTicketTemplate(_ request: GetTicketTemplateRequest) async throws -> GetTicketTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTicketTemplateWithOptions(request as! GetTicketTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isFirstBbsTicketWithOptions(_ request: IsFirstBbsTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> IsFirstBbsTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cna)) {
            query["Cna"] = request.cna ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionChannel)) {
            query["DistributionChannel"] = request.distributionChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referrer)) {
            query["Referrer"] = request.referrer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDistributionChannel)) {
            query["SubDistributionChannel"] = request.subDistributionChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.XGatewayExtendInfo)) {
            query["XGatewayExtendInfo"] = request.XGatewayExtendInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IsFirstBbsTicket",
            "version": "2020-12-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IsFirstBbsTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isFirstBbsTicket(_ request: IsFirstBbsTicketRequest) async throws -> IsFirstBbsTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await isFirstBbsTicketWithOptions(request as! IsFirstBbsTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suggestCategoryWithOptions(_ request: SuggestCategoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SuggestCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cna)) {
            query["Cna"] = request.cna ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionChannel)) {
            query["DistributionChannel"] = request.distributionChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referrer)) {
            query["Referrer"] = request.referrer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDistributionChannel)) {
            query["SubDistributionChannel"] = request.subDistributionChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ticketId)) {
            query["TicketId"] = request.ticketId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topN)) {
            query["TopN"] = request.topN!;
        }
        if (!TeaUtils.Client.isUnset(request.useHotSuggestCatchAll)) {
            query["UseHotSuggestCatchAll"] = request.useHotSuggestCatchAll!;
        }
        if (!TeaUtils.Client.isUnset(request.XGatewayExtendInfo)) {
            query["XGatewayExtendInfo"] = request.XGatewayExtendInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuggestCategory",
            "version": "2020-12-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuggestCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suggestCategory(_ request: SuggestCategoryRequest) async throws -> SuggestCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await suggestCategoryWithOptions(request as! SuggestCategoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
