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
        self._endpoint = try getEndpoint("ciomarketpop", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func getEveryOneSellsFormListWithOptions(_ request: GetEveryOneSellsFormListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEveryOneSellsFormListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEveryOneSellsFormList",
            "version": "2025-07-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await doRPCRequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEveryOneSellsFormListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEveryOneSellsFormList(_ request: GetEveryOneSellsFormListRequest) async throws -> GetEveryOneSellsFormListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEveryOneSellsFormListWithOptions(request as! GetEveryOneSellsFormListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushEveryOneSellMsgWithOptions(_ tmpReq: PushEveryOneSellMsgRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushEveryOneSellMsgResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PushEveryOneSellMsgShrinkRequest = PushEveryOneSellMsgShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dingIdList)) {
            request.dingIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dingIdList, "DingIdList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dingIdListShrink)) {
            body["DingIdList"] = request.dingIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushMsg)) {
            body["PushMsg"] = request.pushMsg ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushType)) {
            body["PushType"] = request.pushType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushEveryOneSellMsg",
            "version": "2025-07-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await doRPCRequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushEveryOneSellMsgResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushEveryOneSellMsg(_ request: PushEveryOneSellMsgRequest) async throws -> PushEveryOneSellMsgResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushEveryOneSellMsgWithOptions(request as! PushEveryOneSellMsgRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
