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
        self._endpoint = try getEndpoint("lingmou", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func closeChatInstanceSessionsWithOptions(_ instanceId: String, _ tmpReq: CloseChatInstanceSessionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CloseChatInstanceSessionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CloseChatInstanceSessionsShrinkRequest = CloseChatInstanceSessionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sessionIds)) {
            request.sessionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sessionIds, "sessionIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sessionIdsShrink)) {
            body["sessionIds"] = request.sessionIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloseChatInstanceSessions",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/chat/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/sessions/close",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloseChatInstanceSessionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeChatInstanceSessions(_ instanceId: String, _ request: CloseChatInstanceSessionsRequest) async throws -> CloseChatInstanceSessionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await closeChatInstanceSessionsWithOptions(instanceId as! String, request as! CloseChatInstanceSessionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmTrainPicAvatarWithOptions(_ request: ConfirmTrainPicAvatarRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmTrainPicAvatarResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.avatarId)) {
            query["avatarId"] = request.avatarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmTrainPicAvatar",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/train/confirmTrainPicAvatar",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmTrainPicAvatarResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmTrainPicAvatar(_ request: ConfirmTrainPicAvatarRequest) async throws -> ConfirmTrainPicAvatarResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await confirmTrainPicAvatarWithOptions(request as! ConfirmTrainPicAvatarRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackgroundPicWithOptions(_ request: CreateBackgroundPicRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBackgroundPicResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filename)) {
            query["filename"] = request.filename ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossKey)) {
            query["ossKey"] = request.ossKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBackgroundPic",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/chat/createBackgroundPic",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBackgroundPicResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackgroundPic(_ request: CreateBackgroundPicRequest) async throws -> CreateBackgroundPicResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createBackgroundPicWithOptions(request as! CreateBackgroundPicRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBroadcastStickerWithOptions(_ request: CreateBroadcastStickerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBroadcastStickerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossKey)) {
            body["ossKey"] = request.ossKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBroadcastSticker",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/customer/broadcast/material/sticker/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBroadcastStickerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBroadcastSticker(_ request: CreateBroadcastStickerRequest) async throws -> CreateBroadcastStickerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createBroadcastStickerWithOptions(request as! CreateBroadcastStickerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBroadcastVideoFromTemplateWithOptions(_ request: CreateBroadcastVideoFromTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBroadcastVideoFromTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["templateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.variables)) {
            body["variables"] = request.variables ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.videoOptions)) {
            body["videoOptions"] = request.videoOptions!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBroadcastVideoFromTemplate",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/api/v1/amp/customer/broadcast/video/createFromTemplate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBroadcastVideoFromTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBroadcastVideoFromTemplate(_ request: CreateBroadcastVideoFromTemplateRequest) async throws -> CreateBroadcastVideoFromTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createBroadcastVideoFromTemplateWithOptions(request as! CreateBroadcastVideoFromTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChatConfigWithOptions(_ request: CreateChatConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateChatConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.avatarId)) {
            query["avatarId"] = request.avatarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backgroundId)) {
            query["backgroundId"] = request.backgroundId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateChatConfig",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/chat/createChatConfig",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateChatConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChatConfig(_ request: CreateChatConfigRequest) async throws -> CreateChatConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createChatConfigWithOptions(request as! CreateChatConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChatSessionWithOptions(_ id: String, _ request: CreateChatSessionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateChatSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["instanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.license)) {
            query["license"] = request.license ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            query["platform"] = request.platform ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateChatSession",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/chat/init/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateChatSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChatSession(_ id: String, _ request: CreateChatSessionRequest) async throws -> CreateChatSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createChatSessionWithOptions(id as! String, request as! CreateChatSessionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNoTrainPicAvatarWithOptions(_ request: CreateNoTrainPicAvatarRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNoTrainPicAvatarResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expressiveness)) {
            query["expressiveness"] = request.expressiveness ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            query["gender"] = request.gender ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generateAssets)) {
            query["generateAssets"] = request.generateAssets!;
        }
        if (!TeaUtils.Client.isUnset(request.imageOssPath)) {
            query["imageOssPath"] = request.imageOssPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["jwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transparent)) {
            query["transparent"] = request.transparent!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNoTrainPicAvatar",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/chat/createNoTrainPicAvatar",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNoTrainPicAvatarResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNoTrainPicAvatar(_ request: CreateNoTrainPicAvatarRequest) async throws -> CreateNoTrainPicAvatarResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createNoTrainPicAvatarWithOptions(request as! CreateNoTrainPicAvatarRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTTSVoiceCustomWithOptions(_ request: CreateTTSVoiceCustomRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTTSVoiceCustomResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            query["gender"] = request.gender ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossKey)) {
            query["ossKey"] = request.ossKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTTSVoiceCustom",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/voice/createTTSVoiceCustom",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTTSVoiceCustomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTTSVoiceCustom(_ request: CreateTTSVoiceCustomRequest) async throws -> CreateTTSVoiceCustomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTTSVoiceCustomWithOptions(request as! CreateTTSVoiceCustomRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrainPicAvatarWithOptions(_ request: CreateTrainPicAvatarRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTrainPicAvatarResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gender)) {
            query["gender"] = request.gender ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generateAssets)) {
            query["generateAssets"] = request.generateAssets!;
        }
        if (!TeaUtils.Client.isUnset(request.imageOssPath)) {
            query["imageOssPath"] = request.imageOssPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["templateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transparent)) {
            query["transparent"] = request.transparent!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTrainPicAvatar",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/train/createTrainPicAvatar",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTrainPicAvatarResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrainPicAvatar(_ request: CreateTrainPicAvatarRequest) async throws -> CreateTrainPicAvatarResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTrainPicAvatarWithOptions(request as! CreateTrainPicAvatarRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBroadcastTemplateWithOptions(_ request: GetBroadcastTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBroadcastTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["templateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBroadcastTemplate",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/customer/broadcast/template/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBroadcastTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBroadcastTemplate(_ request: GetBroadcastTemplateRequest) async throws -> GetBroadcastTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getBroadcastTemplateWithOptions(request as! GetBroadcastTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrainPicAvatarStatusWithOptions(_ request: GetTrainPicAvatarStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTrainPicAvatarStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.avatarId)) {
            query["avatarId"] = request.avatarId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrainPicAvatarStatus",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/train/getTrainPicAvatarStatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTrainPicAvatarStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrainPicAvatarStatus(_ request: GetTrainPicAvatarStatusRequest) async throws -> GetTrainPicAvatarStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTrainPicAvatarStatusWithOptions(request as! GetTrainPicAvatarStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUploadPolicyWithOptions(_ request: GetUploadPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUploadPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["jwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUploadPolicy",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/chat/getUploadPolicy",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUploadPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUploadPolicy(_ request: GetUploadPolicyRequest) async throws -> GetUploadPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUploadPolicyWithOptions(request as! GetUploadPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBroadcastTemplatesWithOptions(_ request: ListBroadcastTemplatesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBroadcastTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBroadcastTemplates",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/customer/broadcast/template/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBroadcastTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBroadcastTemplates(_ request: ListBroadcastTemplatesRequest) async throws -> ListBroadcastTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listBroadcastTemplatesWithOptions(request as! ListBroadcastTemplatesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBroadcastVideosByIdWithOptions(_ tmpReq: ListBroadcastVideosByIdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBroadcastVideosByIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListBroadcastVideosByIdShrinkRequest = ListBroadcastVideosByIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.videoIds)) {
            request.videoIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.videoIds, "videoIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.videoIdsShrink)) {
            query["videoIds"] = request.videoIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBroadcastVideosById",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/api/v1/amp/customer/broadcast/video/batchQuery",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBroadcastVideosByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBroadcastVideosById(_ request: ListBroadcastVideosByIdRequest) async throws -> ListBroadcastVideosByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listBroadcastVideosByIdWithOptions(request as! ListBroadcastVideosByIdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrivateTTSVoicesCustomWithOptions(_ request: ListPrivateTTSVoicesCustomRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPrivateTTSVoicesCustomResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPrivateTTSVoicesCustom",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/voice/listPrivateTTSVoicesCustom",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPrivateTTSVoicesCustomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrivateTTSVoicesCustom(_ request: ListPrivateTTSVoicesCustomRequest) async throws -> ListPrivateTTSVoicesCustomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPrivateTTSVoicesCustomWithOptions(request as! ListPrivateTTSVoicesCustomRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTemplateMaterialWithOptions(_ request: ListTemplateMaterialRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTemplateMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.templateIds)) {
            query["templateIds"] = request.templateIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTemplateMaterial",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/train/listTemplateMaterial",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTemplateMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTemplateMaterial(_ request: ListTemplateMaterialRequest) async throws -> ListTemplateMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTemplateMaterialWithOptions(request as! ListTemplateMaterialRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChatInstanceSessionsWithOptions(_ instanceId: String, _ tmpReq: QueryChatInstanceSessionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryChatInstanceSessionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryChatInstanceSessionsShrinkRequest = QueryChatInstanceSessionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sessionIds)) {
            request.sessionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sessionIds, "sessionIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sessionIdsShrink)) {
            query["sessionIds"] = request.sessionIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryChatInstanceSessions",
            "version": "2025-05-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/chat/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/sessions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryChatInstanceSessionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChatInstanceSessions(_ instanceId: String, _ request: QueryChatInstanceSessionsRequest) async throws -> QueryChatInstanceSessionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryChatInstanceSessionsWithOptions(instanceId as! String, request as! QueryChatInstanceSessionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
