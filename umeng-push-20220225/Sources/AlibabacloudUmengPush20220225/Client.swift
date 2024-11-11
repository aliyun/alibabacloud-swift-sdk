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
    public func cancelByMsgIdWithOptions(_ request: CancelByMsgIdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelByMsgIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.msgId)) {
            body["MsgId"] = request.msgId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelByMsgId",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/CancelByMsgId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelByMsgIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelByMsgId(_ request: CancelByMsgIdRequest) async throws -> CancelByMsgIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelByMsgIdWithOptions(request as! CancelByMsgIdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMsgStatWithOptions(_ request: QueryMsgStatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMsgStatResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.msgId)) {
            body["MsgId"] = request.msgId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMsgStat",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/QueryMsgStat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMsgStatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMsgStat(_ request: QueryMsgStatRequest) async throws -> QueryMsgStatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryMsgStatWithOptions(request as! QueryMsgStatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByAliasWithOptions(_ tmpReq: SendByAliasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendByAliasResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendByAliasShrinkRequest = SendByAliasShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.androidPayload)) {
            request.androidPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.androidPayload, "AndroidPayload", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.androidShortPayload)) {
            request.androidShortPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.androidShortPayload, "AndroidShortPayload", "json")
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
        if (!TeaUtils.Client.isUnset(request.alias)) {
            body["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliasType)) {
            body["AliasType"] = request.aliasType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidPayloadShrink)) {
            body["AndroidPayload"] = request.androidPayloadShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidShortPayloadShrink)) {
            body["AndroidShortPayload"] = request.androidShortPayloadShrink ?? "";
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
        if (!TeaUtils.Client.isUnset(request.thirdPartyId)) {
            body["ThirdPartyId"] = request.thirdPartyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackParams)) {
            body["callbackParams"] = request.callbackParams ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendByAlias",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/SendByAlias",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendByAliasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByAlias(_ request: SendByAliasRequest) async throws -> SendByAliasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendByAliasWithOptions(request as! SendByAliasRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByAliasFileIdWithOptions(_ tmpReq: SendByAliasFileIdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendByAliasFileIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendByAliasFileIdShrinkRequest = SendByAliasFileIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.androidPayload)) {
            request.androidPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.androidPayload, "AndroidPayload", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.androidShortPayload)) {
            request.androidShortPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.androidShortPayload, "AndroidShortPayload", "json")
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
        if (!TeaUtils.Client.isUnset(request.aliasType)) {
            body["AliasType"] = request.aliasType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidPayloadShrink)) {
            body["AndroidPayload"] = request.androidPayloadShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidShortPayloadShrink)) {
            body["AndroidShortPayload"] = request.androidShortPayloadShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelPropertiesShrink)) {
            body["ChannelProperties"] = request.channelPropertiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            body["FileId"] = request.fileId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.thirdPartyId)) {
            body["ThirdPartyId"] = request.thirdPartyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackParams)) {
            body["callbackParams"] = request.callbackParams ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendByAliasFileId",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/SendByAliasFileId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendByAliasFileIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByAliasFileId(_ request: SendByAliasFileIdRequest) async throws -> SendByAliasFileIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendByAliasFileIdWithOptions(request as! SendByAliasFileIdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByAppWithOptions(_ tmpReq: SendByAppRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendByAppResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendByAppShrinkRequest = SendByAppShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.androidPayload)) {
            request.androidPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.androidPayload, "AndroidPayload", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.androidShortPayload)) {
            request.androidShortPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.androidShortPayload, "AndroidShortPayload", "json")
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
        if (!TeaUtils.Client.isUnset(request.androidShortPayloadShrink)) {
            body["AndroidShortPayload"] = request.androidShortPayloadShrink ?? "";
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
        if (!TeaUtils.Client.isUnset(request.thirdPartyId)) {
            body["ThirdPartyId"] = request.thirdPartyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackParams)) {
            body["callbackParams"] = request.callbackParams ?? "";
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
    public func sendByApp(_ request: SendByAppRequest) async throws -> SendByAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendByAppWithOptions(request as! SendByAppRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByDeviceWithOptions(_ tmpReq: SendByDeviceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendByDeviceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendByDeviceShrinkRequest = SendByDeviceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.androidPayload)) {
            request.androidPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.androidPayload, "AndroidPayload", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.androidShortPayload)) {
            request.androidShortPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.androidShortPayload, "AndroidShortPayload", "json")
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
        if (!TeaUtils.Client.isUnset(request.androidShortPayloadShrink)) {
            body["AndroidShortPayload"] = request.androidShortPayloadShrink ?? "";
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
        if (!TeaUtils.Client.isUnset(request.thirdPartyId)) {
            body["ThirdPartyId"] = request.thirdPartyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackParams)) {
            body["callbackParams"] = request.callbackParams ?? "";
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

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByDevice(_ request: SendByDeviceRequest) async throws -> SendByDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendByDeviceWithOptions(request as! SendByDeviceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByDeviceFileIdWithOptions(_ tmpReq: SendByDeviceFileIdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendByDeviceFileIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendByDeviceFileIdShrinkRequest = SendByDeviceFileIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.androidPayload)) {
            request.androidPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.androidPayload, "AndroidPayload", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.androidShortPayload)) {
            request.androidShortPayloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.androidShortPayload, "AndroidShortPayload", "json")
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
        if (!TeaUtils.Client.isUnset(request.androidShortPayloadShrink)) {
            body["AndroidShortPayload"] = request.androidShortPayloadShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelPropertiesShrink)) {
            body["ChannelProperties"] = request.channelPropertiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            body["FileId"] = request.fileId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.thirdPartyId)) {
            body["ThirdPartyId"] = request.thirdPartyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackParams)) {
            body["callbackParams"] = request.callbackParams ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendByDeviceFileId",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/SendByDeviceFileId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendByDeviceFileIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByDeviceFileId(_ request: SendByDeviceFileIdRequest) async throws -> SendByDeviceFileIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendByDeviceFileIdWithOptions(request as! SendByDeviceFileIdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByFilterWithOptions(_ tmpReq: SendByFilterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendByFilterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendByFilterShrinkRequest = SendByFilterShrinkRequest([:])
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
        if (!TeaUtils.Client.isUnset(request.androidShortPayload)) {
            body["AndroidShortPayload"] = request.androidShortPayload!;
        }
        if (!TeaUtils.Client.isUnset(request.channelPropertiesShrink)) {
            body["ChannelProperties"] = request.channelPropertiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            body["Filter"] = request.filter ?? "";
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
        if (!TeaUtils.Client.isUnset(request.thirdPartyId)) {
            body["ThirdPartyId"] = request.thirdPartyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackParams)) {
            body["callbackParams"] = request.callbackParams ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendByFilter",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/SendByFilter",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendByFilterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendByFilter(_ request: SendByFilterRequest) async throws -> SendByFilterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendByFilterWithOptions(request as! SendByFilterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadDeviceWithOptions(_ request: UploadDeviceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceTokens)) {
            body["DeviceTokens"] = request.deviceTokens ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadDevice",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/UploadDevice",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadDevice(_ request: UploadDeviceRequest) async throws -> UploadDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await uploadDeviceWithOptions(request as! UploadDeviceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
