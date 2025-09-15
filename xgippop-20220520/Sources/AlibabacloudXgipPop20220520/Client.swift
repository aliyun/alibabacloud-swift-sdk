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
        self._endpoint = try getEndpoint("xgippop", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func orderQosProductWithOptions(_ request: OrderQosProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OrderQosProductResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.provice)) {
            query["Provice"] = request.provice ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliUid)) {
            body["AliUid"] = request.aliUid!;
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            body["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.IPv6)) {
            body["IPv6"] = request.IPv6 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipType)) {
            body["IpType"] = request.ipType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileNumber)) {
            body["MobileNumber"] = request.mobileNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operator_)) {
            body["Operator"] = request.operator_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateIpv4)) {
            body["PrivateIpv4"] = request.privateIpv4 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicIpv4)) {
            body["PublicIpv4"] = request.publicIpv4 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qosRequestId)) {
            body["QosRequestId"] = request.qosRequestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetIpList)) {
            body["TargetIpList"] = request.targetIpList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            body["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unitNum)) {
            body["UnitNum"] = request.unitNum!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OrderQosProduct",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OrderQosProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func orderQosProduct(_ request: OrderQosProductRequest) async throws -> OrderQosProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await orderQosProductWithOptions(request as! OrderQosProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
