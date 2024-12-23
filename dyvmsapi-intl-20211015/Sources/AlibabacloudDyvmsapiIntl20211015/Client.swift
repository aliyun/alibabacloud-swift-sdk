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
        self._endpoint = try getEndpoint("dyvmsapi-intl", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func backendCallGroupWithOptions(_ tmpReq: BackendCallGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BackendCallGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BackendCallGroupShrinkRequest = BackendCallGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.calledNumber)) {
            request.calledNumberShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.calledNumber, "CalledNumber", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNumberShrink)) {
            query["CalledNumber"] = request.calledNumberShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerIdNumber)) {
            query["CallerIdNumber"] = request.callerIdNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countryId)) {
            query["CountryId"] = request.countryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.playTimes)) {
            query["PlayTimes"] = request.playTimes!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.sendType)) {
            query["SendType"] = request.sendType!;
        }
        if (!TeaUtils.Client.isUnset(request.speed)) {
            query["Speed"] = request.speed!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timingStart)) {
            query["TimingStart"] = request.timingStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsCode)) {
            query["TtsCode"] = request.ttsCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voiceCode)) {
            query["VoiceCode"] = request.voiceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volume)) {
            query["Volume"] = request.volume!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BackendCallGroup",
            "version": "2021-10-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BackendCallGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func backendCallGroup(_ request: BackendCallGroupRequest) async throws -> BackendCallGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await backendCallGroupWithOptions(request as! BackendCallGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func backendCallSignalWithOptions(_ request: BackendCallSignalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BackendCallSignalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerIdNumber)) {
            query["CallerIdNumber"] = request.callerIdNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countryId)) {
            query["CountryId"] = request.countryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.playTimes)) {
            query["PlayTimes"] = request.playTimes!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.speed)) {
            query["Speed"] = request.speed!;
        }
        if (!TeaUtils.Client.isUnset(request.ttsCode)) {
            query["TtsCode"] = request.ttsCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsParam)) {
            query["TtsParam"] = request.ttsParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volume)) {
            query["Volume"] = request.volume!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BackendCallSignal",
            "version": "2021-10-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BackendCallSignalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func backendCallSignal(_ request: BackendCallSignalRequest) async throws -> BackendCallSignalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await backendCallSignalWithOptions(request as! BackendCallSignalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func groupCallWithOptions(_ tmpReq: GroupCallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GroupCallResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GroupCallShrinkRequest = GroupCallShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.calledNumber)) {
            request.calledNumberShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.calledNumber, "CalledNumber", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNumberShrink)) {
            query["CalledNumber"] = request.calledNumberShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerIdNumber)) {
            query["CallerIdNumber"] = request.callerIdNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countryId)) {
            query["CountryId"] = request.countryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.playTimes)) {
            query["PlayTimes"] = request.playTimes!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.sendType)) {
            query["SendType"] = request.sendType!;
        }
        if (!TeaUtils.Client.isUnset(request.signature)) {
            query["Signature"] = request.signature ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureNonce)) {
            query["SignatureNonce"] = request.signatureNonce ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.speed)) {
            query["Speed"] = request.speed!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timestamp)) {
            query["Timestamp"] = request.timestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timingStart)) {
            query["TimingStart"] = request.timingStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsCode)) {
            query["TtsCode"] = request.ttsCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsParam)) {
            query["TtsParam"] = request.ttsParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voiceCode)) {
            query["VoiceCode"] = request.voiceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volume)) {
            query["Volume"] = request.volume!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GroupCall",
            "version": "2021-10-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GroupCallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func groupCall(_ request: GroupCallRequest) async throws -> GroupCallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await groupCallWithOptions(request as! GroupCallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func signalCallWithOptions(_ request: SignalCallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SignalCallResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerIdNumber)) {
            query["CallerIdNumber"] = request.callerIdNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countryId)) {
            query["CountryId"] = request.countryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.playTimes)) {
            query["PlayTimes"] = request.playTimes!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.sendType)) {
            query["SendType"] = request.sendType!;
        }
        if (!TeaUtils.Client.isUnset(request.signature)) {
            query["Signature"] = request.signature ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureNonce)) {
            query["SignatureNonce"] = request.signatureNonce ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.speed)) {
            query["Speed"] = request.speed!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timestamp)) {
            query["Timestamp"] = request.timestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timingStart)) {
            query["TimingStart"] = request.timingStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsCode)) {
            query["TtsCode"] = request.ttsCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsParam)) {
            query["TtsParam"] = request.ttsParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voiceCode)) {
            query["VoiceCode"] = request.voiceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volume)) {
            query["Volume"] = request.volume!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SignalCall",
            "version": "2021-10-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SignalCallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func signalCall(_ request: SignalCallRequest) async throws -> SignalCallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await signalCallWithOptions(request as! SignalCallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func voiceGroupCallWithOptions(_ tmpReq: VoiceGroupCallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VoiceGroupCallResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: VoiceGroupCallShrinkRequest = VoiceGroupCallShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.calledNumber)) {
            request.calledNumberShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.calledNumber, "CalledNumber", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNumberShrink)) {
            query["CalledNumber"] = request.calledNumberShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerIdNumber)) {
            query["CallerIdNumber"] = request.callerIdNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countryId)) {
            query["CountryId"] = request.countryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.playTimes)) {
            query["PlayTimes"] = request.playTimes!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.sendType)) {
            query["SendType"] = request.sendType!;
        }
        if (!TeaUtils.Client.isUnset(request.speed)) {
            query["Speed"] = request.speed!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timingStart)) {
            query["TimingStart"] = request.timingStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsCode)) {
            query["TtsCode"] = request.ttsCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsParam)) {
            query["TtsParam"] = request.ttsParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voiceCode)) {
            query["VoiceCode"] = request.voiceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volume)) {
            query["Volume"] = request.volume!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VoiceGroupCall",
            "version": "2021-10-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VoiceGroupCallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func voiceGroupCall(_ request: VoiceGroupCallRequest) async throws -> VoiceGroupCallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await voiceGroupCallWithOptions(request as! VoiceGroupCallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func voiceSingleCallWithOptions(_ request: VoiceSingleCallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VoiceSingleCallResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerIdNumber)) {
            query["CallerIdNumber"] = request.callerIdNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countryId)) {
            query["CountryId"] = request.countryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.playTimes)) {
            query["PlayTimes"] = request.playTimes!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.sendType)) {
            query["SendType"] = request.sendType!;
        }
        if (!TeaUtils.Client.isUnset(request.speed)) {
            query["Speed"] = request.speed!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timingStart)) {
            query["TimingStart"] = request.timingStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsCode)) {
            query["TtsCode"] = request.ttsCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsParam)) {
            query["TtsParam"] = request.ttsParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voiceCode)) {
            query["VoiceCode"] = request.voiceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volume)) {
            query["Volume"] = request.volume!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VoiceSingleCall",
            "version": "2021-10-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VoiceSingleCallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func voiceSingleCall(_ request: VoiceSingleCallRequest) async throws -> VoiceSingleCallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await voiceSingleCallWithOptions(request as! VoiceSingleCallRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
