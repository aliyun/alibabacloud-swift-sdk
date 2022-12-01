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
        self._endpoint = try getEndpoint("umeng-push", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func sendByApp(_ request: SendByAppRequest) async throws -> SendByAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendByAppWithOptions(request as! SendByAppRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByAppWithOptions(_ tmpReq: SendByAppRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendByAppResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendByAppShrinkRequest = SendByAppShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.androidPayload)) {
            request.androidPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.androidPayload, "AndroidPayload", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.channelProperties)) {
            request.channelPropertiesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.channelProperties, "ChannelProperties", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.iosPayload)) {
            request.iosPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.iosPayload, "IosPayload", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.policy)) {
            request.policyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.policy, "Policy", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidPayloadShrink)) {
            body["AndroidPayload"] = request.androidPayloadShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelPropertiesShrink)) {
            body["ChannelProperties"] = request.channelPropertiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iosPayloadShrink)) {
            body["IosPayload"] = request.iosPayloadShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyShrink)) {
            body["Policy"] = request.policyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productionMode)) {
            body["ProductionMode"] = request.productionMode!;
        }
        if (!TeaUtils.Client.isUnset(request.receiptType)) {
            body["ReceiptType"] = request.receiptType!;
        }
        if (!TeaUtils.Client.isUnset(request.receiptUrl)) {
            body["ReceiptUrl"] = request.receiptUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendByApp",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/SendByApp",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendByAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByDevice(_ request: SendByDeviceRequest) async throws -> SendByDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendByDeviceWithOptions(request as! SendByDeviceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByDeviceWithOptions(_ tmpReq: SendByDeviceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendByDeviceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendByDeviceShrinkRequest = SendByDeviceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.androidPayload)) {
            request.androidPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.androidPayload, "AndroidPayload", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.channelProperties)) {
            request.channelPropertiesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.channelProperties, "ChannelProperties", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.iosPayload)) {
            request.iosPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.iosPayload, "IosPayload", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.policy)) {
            request.policyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.policy, "Policy", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidPayloadShrink)) {
            body["AndroidPayload"] = request.androidPayloadShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelPropertiesShrink)) {
            body["ChannelProperties"] = request.channelPropertiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceTokens)) {
            body["DeviceTokens"] = request.deviceTokens ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iosPayloadShrink)) {
            body["IosPayload"] = request.iosPayloadShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyShrink)) {
            body["Policy"] = request.policyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productionMode)) {
            body["ProductionMode"] = request.productionMode!;
        }
        if (!TeaUtils.Client.isUnset(request.receiptType)) {
            body["ReceiptType"] = request.receiptType!;
        }
        if (!TeaUtils.Client.isUnset(request.receiptUrl)) {
            body["ReceiptUrl"] = request.receiptUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendByDevice",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/SendByDevice",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendByDeviceResponse(), tmp)
    }
}
