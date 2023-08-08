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
        self._endpoint = try getEndpoint("tingwu", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createFileTransWithOptions(_ request: CreateFileTransRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFileTransResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.abilityParams)) {
            body["AbilityParams"] = request.abilityParams ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asrParams)) {
            body["AsrParams"] = request.asrParams ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.audioLanguage)) {
            body["AudioLanguage"] = request.audioLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioOssBucket)) {
            body["AudioOssBucket"] = request.audioOssBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioOssPath)) {
            body["AudioOssPath"] = request.audioOssPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioOutputEnabled)) {
            body["AudioOutputEnabled"] = request.audioOutputEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.audioOutputOssBucket)) {
            body["AudioOutputOssBucket"] = request.audioOutputOssBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioOutputOssPath)) {
            body["AudioOutputOssPath"] = request.audioOutputOssPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioRoleNum)) {
            body["AudioRoleNum"] = request.audioRoleNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioSegmentsEnabled)) {
            body["AudioSegmentsEnabled"] = request.audioSegmentsEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.labParams)) {
            body["LabParams"] = request.labParams ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["Tags"] = request.tags ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.transKey)) {
            body["TransKey"] = request.transKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transResultOssBucket)) {
            body["TransResultOssBucket"] = request.transResultOssBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transResultOssPath)) {
            body["TransResultOssPath"] = request.transResultOssPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoOutputEnabled)) {
            body["VideoOutputEnabled"] = request.videoOutputEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.videoOutputOssBucket)) {
            body["VideoOutputOssBucket"] = request.videoOutputOssBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoOutputOssPath)) {
            body["VideoOutputOssPath"] = request.videoOutputOssPath ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFileTrans",
            "version": "2022-09-30",
            "protocol": "HTTPS",
            "pathname": "/openapi/file-trans",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFileTransResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFileTrans(_ request: CreateFileTransRequest) async throws -> CreateFileTransResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFileTransWithOptions(request as! CreateFileTransRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMeetingTransWithOptions(_ request: CreateMeetingTransRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMeetingTransResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.abilityParams)) {
            body["AbilityParams"] = request.abilityParams ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asrParams)) {
            body["AsrParams"] = request.asrParams ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.audioBitRate)) {
            body["AudioBitRate"] = request.audioBitRate!;
        }
        if (!TeaUtils.Client.isUnset(request.audioFormat)) {
            body["AudioFormat"] = request.audioFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioLanguage)) {
            body["AudioLanguage"] = request.audioLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioOutputEnabled)) {
            body["AudioOutputEnabled"] = request.audioOutputEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.audioOutputOssBucket)) {
            body["AudioOutputOssBucket"] = request.audioOutputOssBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioOutputOssPath)) {
            body["AudioOutputOssPath"] = request.audioOutputOssPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioPackage)) {
            body["AudioPackage"] = request.audioPackage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioSampleRate)) {
            body["AudioSampleRate"] = request.audioSampleRate!;
        }
        if (!TeaUtils.Client.isUnset(request.audioSegmentsEnabled)) {
            body["AudioSegmentsEnabled"] = request.audioSegmentsEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.docResultEnabled)) {
            body["DocResultEnabled"] = request.docResultEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.labParams)) {
            body["LabParams"] = request.labParams ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.meetingKey)) {
            body["MeetingKey"] = request.meetingKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.meetingResultEnabled)) {
            body["MeetingResultEnabled"] = request.meetingResultEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.meetingResultOssBucket)) {
            body["MeetingResultOssBucket"] = request.meetingResultOssBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.meetingResultOssPath)) {
            body["MeetingResultOssPath"] = request.meetingResultOssPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realtimeActiveResultLevel)) {
            body["RealtimeActiveResultLevel"] = request.realtimeActiveResultLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.realtimeResultEnabled)) {
            body["RealtimeResultEnabled"] = request.realtimeResultEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.realtimeResultLevel)) {
            body["RealtimeResultLevel"] = request.realtimeResultLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.realtimeResultMeetingInfoEnabled)) {
            body["RealtimeResultMeetingInfoEnabled"] = request.realtimeResultMeetingInfoEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.realtimeResultWordsEnabled)) {
            body["RealtimeResultWordsEnabled"] = request.realtimeResultWordsEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["Tags"] = request.tags ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.translateActiveResultLevel)) {
            body["TranslateActiveResultLevel"] = request.translateActiveResultLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.translateLanguages)) {
            body["TranslateLanguages"] = request.translateLanguages ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.translateResultEnabled)) {
            body["TranslateResultEnabled"] = request.translateResultEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.translateResultLevel)) {
            body["TranslateResultLevel"] = request.translateResultLevel!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMeetingTrans",
            "version": "2022-09-30",
            "protocol": "HTTPS",
            "pathname": "/openapi/meeting-trans",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMeetingTransResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMeetingTrans(_ request: CreateMeetingTransRequest) async throws -> CreateMeetingTransResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMeetingTransWithOptions(request as! CreateMeetingTransRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileTransWithOptions(_ TransId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFileTransResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFileTrans",
            "version": "2022-09-30",
            "protocol": "HTTPS",
            "pathname": "/openapi/file-trans/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(TransId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFileTransResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileTrans(_ TransId: String) async throws -> GetFileTransResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFileTransWithOptions(TransId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMeetingTransWithOptions(_ MeetingId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMeetingTransResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMeetingTrans",
            "version": "2022-09-30",
            "protocol": "HTTPS",
            "pathname": "/openapi/meeting-trans/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(MeetingId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMeetingTransResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMeetingTrans(_ MeetingId: String) async throws -> GetMeetingTransResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMeetingTransWithOptions(MeetingId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMeetingTransWithOptions(_ MeetingId: String, _ request: StopMeetingTransRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopMeetingTransResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.meetingRoleNum)) {
            body["MeetingRoleNum"] = request.meetingRoleNum!;
        }
        if (!TeaUtils.Client.isUnset(request.onlyRoleSplitResult)) {
            body["OnlyRoleSplitResult"] = request.onlyRoleSplitResult!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopMeetingTrans",
            "version": "2022-09-30",
            "protocol": "HTTPS",
            "pathname": "/openapi/meeting-trans/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(MeetingId) + "/stop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopMeetingTransResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMeetingTrans(_ MeetingId: String, _ request: StopMeetingTransRequest) async throws -> StopMeetingTransResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopMeetingTransWithOptions(MeetingId as! String, request as! StopMeetingTransRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
