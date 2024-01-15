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
            "ap-northeast-1": "xrengine-daily.aliyuncs.com",
            "ap-northeast-2-pop": "xrengine-daily.aliyuncs.com",
            "ap-south-1": "xrengine-daily.aliyuncs.com",
            "ap-southeast-1": "xrengine-daily.aliyuncs.com",
            "ap-southeast-2": "xrengine-daily.aliyuncs.com",
            "ap-southeast-3": "xrengine-daily.aliyuncs.com",
            "ap-southeast-5": "xrengine-daily.aliyuncs.com",
            "cn-beijing": "xrengine-daily.aliyuncs.com",
            "cn-beijing-finance-1": "xrengine-daily.aliyuncs.com",
            "cn-beijing-finance-pop": "xrengine-daily.aliyuncs.com",
            "cn-beijing-gov-1": "xrengine-daily.aliyuncs.com",
            "cn-beijing-nu16-b01": "xrengine-daily.aliyuncs.com",
            "cn-chengdu": "xrengine-daily.aliyuncs.com",
            "cn-edge-1": "xrengine-daily.aliyuncs.com",
            "cn-fujian": "xrengine-daily.aliyuncs.com",
            "cn-haidian-cm12-c01": "xrengine-daily.aliyuncs.com",
            "cn-hangzhou-bj-b01": "xrengine-daily.aliyuncs.com",
            "cn-hangzhou-finance": "xrengine-daily.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "xrengine-daily.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "xrengine-daily.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "xrengine-daily.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "xrengine-daily.aliyuncs.com",
            "cn-hangzhou-test-306": "xrengine-daily.aliyuncs.com",
            "cn-hongkong": "xrengine-daily.aliyuncs.com",
            "cn-hongkong-finance-pop": "xrengine-daily.aliyuncs.com",
            "cn-huhehaote": "xrengine-daily.aliyuncs.com",
            "cn-huhehaote-nebula-1": "xrengine-daily.aliyuncs.com",
            "cn-north-2-gov-1": "xrengine-daily.aliyuncs.com",
            "cn-qingdao": "xrengine-daily.aliyuncs.com",
            "cn-qingdao-nebula": "xrengine-daily.aliyuncs.com",
            "cn-shanghai": "xrengine-daily.aliyuncs.com",
            "cn-shanghai-et15-b01": "xrengine-daily.aliyuncs.com",
            "cn-shanghai-et2-b01": "xrengine-daily.aliyuncs.com",
            "cn-shanghai-finance-1": "xrengine-daily.aliyuncs.com",
            "cn-shanghai-inner": "xrengine-daily.aliyuncs.com",
            "cn-shanghai-internal-test-1": "xrengine-daily.aliyuncs.com",
            "cn-shenzhen": "xrengine-daily.aliyuncs.com",
            "cn-shenzhen-finance-1": "xrengine-daily.aliyuncs.com",
            "cn-shenzhen-inner": "xrengine-daily.aliyuncs.com",
            "cn-shenzhen-st4-d01": "xrengine-daily.aliyuncs.com",
            "cn-shenzhen-su18-b01": "xrengine-daily.aliyuncs.com",
            "cn-wuhan": "xrengine-daily.aliyuncs.com",
            "cn-wulanchabu": "xrengine-daily.aliyuncs.com",
            "cn-yushanfang": "xrengine-daily.aliyuncs.com",
            "cn-zhangbei": "xrengine-daily.aliyuncs.com",
            "cn-zhangbei-na61-b01": "xrengine-daily.aliyuncs.com",
            "cn-zhangjiakou": "xrengine-daily.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "xrengine-daily.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "xrengine-daily.aliyuncs.com",
            "eu-central-1": "xrengine-daily.aliyuncs.com",
            "eu-west-1": "xrengine-daily.aliyuncs.com",
            "eu-west-1-oxs": "xrengine-daily.aliyuncs.com",
            "me-east-1": "xrengine-daily.aliyuncs.com",
            "rus-west-1-pop": "xrengine-daily.aliyuncs.com",
            "us-east-1": "xrengine-daily.aliyuncs.com",
            "us-west-1": "xrengine-daily.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("xrengine", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func authUserWithOptions(_ request: AuthUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthUser",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authUser(_ request: AuthUserRequest) async throws -> AuthUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authUserWithOptions(request as! AuthUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchQueryMotionShopTaskStatusWithOptions(_ request: BatchQueryMotionShopTaskStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchQueryMotionShopTaskStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchQueryMotionShopTaskStatus",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchQueryMotionShopTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchQueryMotionShopTaskStatus(_ request: BatchQueryMotionShopTaskStatusRequest) async throws -> BatchQueryMotionShopTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchQueryMotionShopTaskStatusWithOptions(request as! BatchQueryMotionShopTaskStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAvatarTalkProjectWithOptions(_ request: CreateAvatarTalkProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAvatarTalkProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.avatarProjectId)) {
            body["AvatarProjectId"] = request.avatarProjectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsVoice)) {
            body["TtsVoice"] = request.ttsVoice ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.txtContent)) {
            body["TxtContent"] = request.txtContent ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAvatarTalkProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAvatarTalkProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAvatarTalkProject(_ request: CreateAvatarTalkProjectRequest) async throws -> CreateAvatarTalkProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAvatarTalkProjectWithOptions(request as! CreateAvatarTalkProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDigitalHumanProjectWithOptions(_ request: CreateDigitalHumanProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDigitalHumanProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.audioId)) {
            body["AudioId"] = request.audioId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioUrl)) {
            body["AudioUrl"] = request.audioUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backgroundId)) {
            body["BackgroundId"] = request.backgroundId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backgroundUrl)) {
            body["BackgroundUrl"] = request.backgroundUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.foregroundId)) {
            body["ForegroundId"] = request.foregroundId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.foregroundUrl)) {
            body["ForegroundUrl"] = request.foregroundUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.humanLayerStyle)) {
            body["HumanLayerStyle"] = request.humanLayerStyle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intro)) {
            body["Intro"] = request.intro ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["ModelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputConfig)) {
            body["OutputConfig"] = request.outputConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsVoiceId)) {
            body["TtsVoiceId"] = request.ttsVoiceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkImageUrl)) {
            body["WatermarkImageUrl"] = request.watermarkImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkStyle)) {
            body["WatermarkStyle"] = request.watermarkStyle ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDigitalHumanProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDigitalHumanProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDigitalHumanProject(_ request: CreateDigitalHumanProjectRequest) async throws -> CreateDigitalHumanProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDigitalHumanProjectWithOptions(request as! CreateDigitalHumanProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLivePortraitProjectWithOptions(_ request: CreateLivePortraitProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLivePortraitProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.audioId)) {
            body["AudioId"] = request.audioId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioUrl)) {
            body["AudioUrl"] = request.audioUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intro)) {
            body["Intro"] = request.intro ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lightModel)) {
            body["LightModel"] = request.lightModel!;
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputConfig)) {
            body["OutputConfig"] = request.outputConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsVoiceId)) {
            body["TtsVoiceId"] = request.ttsVoiceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkImageUrl)) {
            body["WatermarkImageUrl"] = request.watermarkImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkStyle)) {
            body["WatermarkStyle"] = request.watermarkStyle ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLivePortraitProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLivePortraitProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLivePortraitProject(_ request: CreateLivePortraitProjectRequest) async throws -> CreateLivePortraitProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLivePortraitProjectWithOptions(request as! CreateLivePortraitProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateMotionShopVideoUploadUrlWithOptions(_ request: GenerateMotionShopVideoUploadUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateMotionShopVideoUploadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateMotionShopVideoUploadUrl",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateMotionShopVideoUploadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateMotionShopVideoUploadUrl(_ request: GenerateMotionShopVideoUploadUrlRequest) async throws -> GenerateMotionShopVideoUploadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateMotionShopVideoUploadUrlWithOptions(request as! GenerateMotionShopVideoUploadUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMapDataWithOptions(_ request: GetMapDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMapDataResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMapData",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMapDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMapData(_ request: GetMapDataRequest) async throws -> GetMapDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMapDataWithOptions(request as! GetMapDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMapPublishDataWithOptions(_ request: GetMapPublishDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMapPublishDataResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMapPublishData",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMapPublishDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMapPublishData(_ request: GetMapPublishDataRequest) async throws -> GetMapPublishDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMapPublishDataWithOptions(request as! GetMapPublishDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initLocateWithOptions(_ request: InitLocateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitLocateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitLocate",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitLocateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initLocate(_ request: InitLocateRequest) async throws -> InitLocateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initLocateWithOptions(request as! InitLocateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCommonMaterialsWithOptions(_ request: ListCommonMaterialsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCommonMaterialsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCommonMaterials",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCommonMaterialsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCommonMaterials(_ request: ListCommonMaterialsRequest) async throws -> ListCommonMaterialsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCommonMaterialsWithOptions(request as! ListCommonMaterialsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDigitalHumanMaterialsWithOptions(_ request: ListDigitalHumanMaterialsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDigitalHumanMaterialsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.onlyPersonalMaterials)) {
            body["OnlyPersonalMaterials"] = request.onlyPersonalMaterials!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.types)) {
            body["Types"] = request.types ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDigitalHumanMaterials",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDigitalHumanMaterialsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDigitalHumanMaterials(_ request: ListDigitalHumanMaterialsRequest) async throws -> ListDigitalHumanMaterialsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDigitalHumanMaterialsWithOptions(request as! ListDigitalHumanMaterialsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLocationServiceWithOptions(_ request: ListLocationServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLocationServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            body["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortField)) {
            body["SortField"] = request.sortField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLocationService",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLocationServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLocationService(_ request: ListLocationServiceRequest) async throws -> ListLocationServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLocationServiceWithOptions(request as! ListLocationServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMotionShopTasksWithOptions(_ request: ListMotionShopTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMotionShopTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMotionShopTasks",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMotionShopTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMotionShopTasks(_ request: ListMotionShopTasksRequest) async throws -> ListMotionShopTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMotionShopTasksWithOptions(request as! ListMotionShopTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func livePortraitFaceDetectWithOptions(_ request: LivePortraitFaceDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LivePortraitFaceDetectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LivePortraitFaceDetect",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LivePortraitFaceDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func livePortraitFaceDetect(_ request: LivePortraitFaceDetectRequest) async throws -> LivePortraitFaceDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await livePortraitFaceDetectWithOptions(request as! LivePortraitFaceDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func locateWithOptions(_ request: LocateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LocateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.image)) {
            body["Image"] = request.image ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Locate",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LocateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func locate(_ request: LocateRequest) async throws -> LocateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await locateWithOptions(request as! LocateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func loginModelScopeWithOptions(_ request: LoginModelScopeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LoginModelScopeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.empId)) {
            body["EmpId"] = request.empId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.empName)) {
            body["EmpName"] = request.empName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            body["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LoginModelScope",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LoginModelScopeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func loginModelScope(_ request: LoginModelScopeRequest) async throws -> LoginModelScopeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await loginModelScopeWithOptions(request as! LoginModelScopeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func motionShopVideoDetectWithOptions(_ request: MotionShopVideoDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MotionShopVideoDetectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ossKey)) {
            body["OssKey"] = request.ossKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MotionShopVideoDetect",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MotionShopVideoDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func motionShopVideoDetect(_ request: MotionShopVideoDetectRequest) async throws -> MotionShopVideoDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await motionShopVideoDetectWithOptions(request as! MotionShopVideoDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBatchQueryObjectGenerationProjectStatusWithOptions(_ request: PopBatchQueryObjectGenerationProjectStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopBatchQueryObjectGenerationProjectStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectIds)) {
            body["ProjectIds"] = request.projectIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopBatchQueryObjectGenerationProjectStatus",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopBatchQueryObjectGenerationProjectStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBatchQueryObjectGenerationProjectStatus(_ request: PopBatchQueryObjectGenerationProjectStatusRequest) async throws -> PopBatchQueryObjectGenerationProjectStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popBatchQueryObjectGenerationProjectStatusWithOptions(request as! PopBatchQueryObjectGenerationProjectStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBatchQueryObjectProjectStatusWithOptions(_ request: PopBatchQueryObjectProjectStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopBatchQueryObjectProjectStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectIds)) {
            body["ProjectIds"] = request.projectIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopBatchQueryObjectProjectStatus",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopBatchQueryObjectProjectStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBatchQueryObjectProjectStatus(_ request: PopBatchQueryObjectProjectStatusRequest) async throws -> PopBatchQueryObjectProjectStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popBatchQueryObjectProjectStatusWithOptions(request as! PopBatchQueryObjectProjectStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBuildFeatureToAvatarProjectWithOptions(_ request: PopBuildFeatureToAvatarProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopBuildFeatureToAvatarProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopBuildFeatureToAvatarProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopBuildFeatureToAvatarProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBuildFeatureToAvatarProject(_ request: PopBuildFeatureToAvatarProjectRequest) async throws -> PopBuildFeatureToAvatarProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popBuildFeatureToAvatarProjectWithOptions(request as! PopBuildFeatureToAvatarProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBuildLivePortraitModelScopeProjectWithOptions(_ request: PopBuildLivePortraitModelScopeProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopBuildLivePortraitModelScopeProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopBuildLivePortraitModelScopeProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopBuildLivePortraitModelScopeProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBuildLivePortraitModelScopeProject(_ request: PopBuildLivePortraitModelScopeProjectRequest) async throws -> PopBuildLivePortraitModelScopeProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popBuildLivePortraitModelScopeProjectWithOptions(request as! PopBuildLivePortraitModelScopeProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBuildObjectGenerationProjectWithOptions(_ request: PopBuildObjectGenerationProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopBuildObjectGenerationProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopBuildObjectGenerationProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopBuildObjectGenerationProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBuildObjectGenerationProject(_ request: PopBuildObjectGenerationProjectRequest) async throws -> PopBuildObjectGenerationProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popBuildObjectGenerationProjectWithOptions(request as! PopBuildObjectGenerationProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBuildObjectProjectWithOptions(_ request: PopBuildObjectProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopBuildObjectProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopBuildObjectProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopBuildObjectProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBuildObjectProject(_ request: PopBuildObjectProjectRequest) async throws -> PopBuildObjectProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popBuildObjectProjectWithOptions(request as! PopBuildObjectProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBuildPakRenderProjectWithOptions(_ request: PopBuildPakRenderProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopBuildPakRenderProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopBuildPakRenderProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopBuildPakRenderProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBuildPakRenderProject(_ request: PopBuildPakRenderProjectRequest) async throws -> PopBuildPakRenderProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popBuildPakRenderProjectWithOptions(request as! PopBuildPakRenderProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBuildTextToAvatarProjectWithOptions(_ request: PopBuildTextToAvatarProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopBuildTextToAvatarProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopBuildTextToAvatarProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopBuildTextToAvatarProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popBuildTextToAvatarProject(_ request: PopBuildTextToAvatarProjectRequest) async throws -> PopBuildTextToAvatarProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popBuildTextToAvatarProjectWithOptions(request as! PopBuildTextToAvatarProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateFeatureToAvatarProjectWithOptions(_ request: PopCreateFeatureToAvatarProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopCreateFeatureToAvatarProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intro)) {
            body["Intro"] = request.intro ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopCreateFeatureToAvatarProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopCreateFeatureToAvatarProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateFeatureToAvatarProject(_ request: PopCreateFeatureToAvatarProjectRequest) async throws -> PopCreateFeatureToAvatarProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popCreateFeatureToAvatarProjectWithOptions(request as! PopCreateFeatureToAvatarProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateLivePortraitModelScopeProjectWithOptions(_ request: PopCreateLivePortraitModelScopeProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopCreateLivePortraitModelScopeProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intro)) {
            body["Intro"] = request.intro ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopCreateLivePortraitModelScopeProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopCreateLivePortraitModelScopeProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateLivePortraitModelScopeProject(_ request: PopCreateLivePortraitModelScopeProjectRequest) async throws -> PopCreateLivePortraitModelScopeProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popCreateLivePortraitModelScopeProjectWithOptions(request as! PopCreateLivePortraitModelScopeProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateMaterialWithOptions(_ request: PopCreateMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopCreateMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkStatus)) {
            body["CheckStatus"] = request.checkStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ext)) {
            body["Ext"] = request.ext ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intro)) {
            body["Intro"] = request.intro ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listStatus)) {
            body["ListStatus"] = request.listStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossKey)) {
            body["OssKey"] = request.ossKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopCreateMaterial",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopCreateMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateMaterial(_ request: PopCreateMaterialRequest) async throws -> PopCreateMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popCreateMaterialWithOptions(request as! PopCreateMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateObjectGenerationProjectWithOptions(_ request: PopCreateObjectGenerationProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopCreateObjectGenerationProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizUsage)) {
            body["BizUsage"] = request.bizUsage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intro)) {
            body["Intro"] = request.intro ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopCreateObjectGenerationProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopCreateObjectGenerationProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateObjectGenerationProject(_ request: PopCreateObjectGenerationProjectRequest) async throws -> PopCreateObjectGenerationProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popCreateObjectGenerationProjectWithOptions(request as! PopCreateObjectGenerationProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateObjectProjectWithOptions(_ request: PopCreateObjectProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopCreateObjectProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoBuild)) {
            body["AutoBuild"] = request.autoBuild!;
        }
        if (!TeaUtils.Client.isUnset(request.bizUsage)) {
            body["BizUsage"] = request.bizUsage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customSource)) {
            body["CustomSource"] = request.customSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dependencies)) {
            body["Dependencies"] = request.dependencies ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.foreignUid)) {
            body["ForeignUid"] = request.foreignUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intro)) {
            body["Intro"] = request.intro ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recommendStatus)) {
            body["RecommendStatus"] = request.recommendStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopCreateObjectProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopCreateObjectProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateObjectProject(_ request: PopCreateObjectProjectRequest) async throws -> PopCreateObjectProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popCreateObjectProjectWithOptions(request as! PopCreateObjectProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreatePakRenderProjectWithOptions(_ request: PopCreatePakRenderProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopCreatePakRenderProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intro)) {
            body["Intro"] = request.intro ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopCreatePakRenderProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopCreatePakRenderProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreatePakRenderProject(_ request: PopCreatePakRenderProjectRequest) async throws -> PopCreatePakRenderProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popCreatePakRenderProjectWithOptions(request as! PopCreatePakRenderProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateTextToAvatarProjectWithOptions(_ request: PopCreateTextToAvatarProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopCreateTextToAvatarProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intro)) {
            body["Intro"] = request.intro ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopCreateTextToAvatarProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopCreateTextToAvatarProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateTextToAvatarProject(_ request: PopCreateTextToAvatarProjectRequest) async throws -> PopCreateTextToAvatarProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popCreateTextToAvatarProjectWithOptions(request as! PopCreateTextToAvatarProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popDeleteMaterialWithOptions(_ request: PopDeleteMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopDeleteMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialId)) {
            query["MaterialId"] = request.materialId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopDeleteMaterial",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopDeleteMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popDeleteMaterial(_ request: PopDeleteMaterialRequest) async throws -> PopDeleteMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popDeleteMaterialWithOptions(request as! PopDeleteMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popGetAITryOnJobWithOptions(_ request: PopGetAITryOnJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopGetAITryOnJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withMaterial)) {
            query["WithMaterial"] = request.withMaterial!;
        }
        if (!TeaUtils.Client.isUnset(request.withResult)) {
            query["WithResult"] = request.withResult!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopGetAITryOnJob",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopGetAITryOnJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popGetAITryOnJob(_ request: PopGetAITryOnJobRequest) async throws -> PopGetAITryOnJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popGetAITryOnJobWithOptions(request as! PopGetAITryOnJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListAITryOnJobsWithOptions(_ request: PopListAITryOnJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopListAITryOnJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopListAITryOnJobs",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopListAITryOnJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListAITryOnJobs(_ request: PopListAITryOnJobsRequest) async throws -> PopListAITryOnJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popListAITryOnJobsWithOptions(request as! PopListAITryOnJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListCommonMaterialsAllWithOptions(_ request: PopListCommonMaterialsAllRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopListCommonMaterialsAllResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listStatus)) {
            query["ListStatus"] = request.listStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopListCommonMaterialsAll",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopListCommonMaterialsAllResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListCommonMaterialsAll(_ request: PopListCommonMaterialsAllRequest) async throws -> PopListCommonMaterialsAllResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popListCommonMaterialsAllWithOptions(request as! PopListCommonMaterialsAllRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListFeatureToAvatarMaterialsWithOptions(_ request: PopListFeatureToAvatarMaterialsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopListFeatureToAvatarMaterialsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.listStatus)) {
            body["ListStatus"] = request.listStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopListFeatureToAvatarMaterials",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopListFeatureToAvatarMaterialsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListFeatureToAvatarMaterials(_ request: PopListFeatureToAvatarMaterialsRequest) async throws -> PopListFeatureToAvatarMaterialsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popListFeatureToAvatarMaterialsWithOptions(request as! PopListFeatureToAvatarMaterialsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListFeatureToAvatarProjectWithOptions(_ request: PopListFeatureToAvatarProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopListFeatureToAvatarProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.sortField)) {
            body["SortField"] = request.sortField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopListFeatureToAvatarProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopListFeatureToAvatarProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListFeatureToAvatarProject(_ request: PopListFeatureToAvatarProjectRequest) async throws -> PopListFeatureToAvatarProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popListFeatureToAvatarProjectWithOptions(request as! PopListFeatureToAvatarProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListLivePortraitModelScopeMaterialsWithOptions(_ request: PopListLivePortraitModelScopeMaterialsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopListLivePortraitModelScopeMaterialsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.types)) {
            body["Types"] = request.types ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopListLivePortraitModelScopeMaterials",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopListLivePortraitModelScopeMaterialsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListLivePortraitModelScopeMaterials(_ request: PopListLivePortraitModelScopeMaterialsRequest) async throws -> PopListLivePortraitModelScopeMaterialsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popListLivePortraitModelScopeMaterialsWithOptions(request as! PopListLivePortraitModelScopeMaterialsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListObjectCaseWithOptions(_ request: PopListObjectCaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopListObjectCaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopListObjectCase",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopListObjectCaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListObjectCase(_ request: PopListObjectCaseRequest) async throws -> PopListObjectCaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popListObjectCaseWithOptions(request as! PopListObjectCaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListObjectGenerationProjectWithOptions(_ request: PopListObjectGenerationProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopListObjectGenerationProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopListObjectGenerationProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopListObjectGenerationProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListObjectGenerationProject(_ request: PopListObjectGenerationProjectRequest) async throws -> PopListObjectGenerationProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popListObjectGenerationProjectWithOptions(request as! PopListObjectGenerationProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListObjectProjectWithOptions(_ request: PopListObjectProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopListObjectProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auditStatus)) {
            body["AuditStatus"] = request.auditStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.customSource)) {
            body["CustomSource"] = request.customSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.sortField)) {
            body["SortField"] = request.sortField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withSource)) {
            body["WithSource"] = request.withSource!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopListObjectProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopListObjectProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListObjectProject(_ request: PopListObjectProjectRequest) async throws -> PopListObjectProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popListObjectProjectWithOptions(request as! PopListObjectProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListPakRenderExpressionWithOptions(_ request: PopListPakRenderExpressionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopListPakRenderExpressionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listStatus)) {
            query["ListStatus"] = request.listStatus ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopListPakRenderExpression",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopListPakRenderExpressionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListPakRenderExpression(_ request: PopListPakRenderExpressionRequest) async throws -> PopListPakRenderExpressionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popListPakRenderExpressionWithOptions(request as! PopListPakRenderExpressionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListTextToAvatarProjectWithOptions(_ request: PopListTextToAvatarProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopListTextToAvatarProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.sortField)) {
            body["SortField"] = request.sortField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopListTextToAvatarProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopListTextToAvatarProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popListTextToAvatarProject(_ request: PopListTextToAvatarProjectRequest) async throws -> PopListTextToAvatarProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popListTextToAvatarProjectWithOptions(request as! PopListTextToAvatarProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popObjectProjectDetailWithOptions(_ request: PopObjectProjectDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopObjectProjectDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopObjectProjectDetail",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopObjectProjectDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popObjectProjectDetail(_ request: PopObjectProjectDetailRequest) async throws -> PopObjectProjectDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popObjectProjectDetailWithOptions(request as! PopObjectProjectDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popObjectRetrievalWithOptions(_ request: PopObjectRetrievalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopObjectRetrievalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topK)) {
            body["TopK"] = request.topK!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopObjectRetrieval",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopObjectRetrievalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popObjectRetrieval(_ request: PopObjectRetrievalRequest) async throws -> PopObjectRetrievalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popObjectRetrievalWithOptions(request as! PopObjectRetrievalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popObjectRetrievalUploadDataWithOptions(_ request: PopObjectRetrievalUploadDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopObjectRetrievalUploadDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopObjectRetrievalUploadData",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopObjectRetrievalUploadDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popObjectRetrievalUploadData(_ request: PopObjectRetrievalUploadDataRequest) async throws -> PopObjectRetrievalUploadDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popObjectRetrievalUploadDataWithOptions(request as! PopObjectRetrievalUploadDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popQueryAvatarProjectDetailWithOptions(_ request: PopQueryAvatarProjectDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopQueryAvatarProjectDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopQueryAvatarProjectDetail",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopQueryAvatarProjectDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popQueryAvatarProjectDetail(_ request: PopQueryAvatarProjectDetailRequest) async throws -> PopQueryAvatarProjectDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popQueryAvatarProjectDetailWithOptions(request as! PopQueryAvatarProjectDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popQueryLatestAvatarProjectDetailByUserWithOptions(_ request: PopQueryLatestAvatarProjectDetailByUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopQueryLatestAvatarProjectDetailByUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopQueryLatestAvatarProjectDetailByUser",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopQueryLatestAvatarProjectDetailByUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popQueryLatestAvatarProjectDetailByUser(_ request: PopQueryLatestAvatarProjectDetailByUserRequest) async throws -> PopQueryLatestAvatarProjectDetailByUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popQueryLatestAvatarProjectDetailByUserWithOptions(request as! PopQueryLatestAvatarProjectDetailByUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popQueryLivePortraitModelScopeProjectDetailWithOptions(_ request: PopQueryLivePortraitModelScopeProjectDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopQueryLivePortraitModelScopeProjectDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopQueryLivePortraitModelScopeProjectDetail",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopQueryLivePortraitModelScopeProjectDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popQueryLivePortraitModelScopeProjectDetail(_ request: PopQueryLivePortraitModelScopeProjectDetailRequest) async throws -> PopQueryLivePortraitModelScopeProjectDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popQueryLivePortraitModelScopeProjectDetailWithOptions(request as! PopQueryLivePortraitModelScopeProjectDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popQueryObjectGenerationProjectDetailWithOptions(_ request: PopQueryObjectGenerationProjectDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopQueryObjectGenerationProjectDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopQueryObjectGenerationProjectDetail",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopQueryObjectGenerationProjectDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popQueryObjectGenerationProjectDetail(_ request: PopQueryObjectGenerationProjectDetailRequest) async throws -> PopQueryObjectGenerationProjectDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popQueryObjectGenerationProjectDetailWithOptions(request as! PopQueryObjectGenerationProjectDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popRetryAITryOnTaskWithOptions(_ request: PopRetryAITryOnTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopRetryAITryOnTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopRetryAITryOnTask",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopRetryAITryOnTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popRetryAITryOnTask(_ request: PopRetryAITryOnTaskRequest) async throws -> PopRetryAITryOnTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popRetryAITryOnTaskWithOptions(request as! PopRetryAITryOnTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popSubmitAITryOnJobWithOptions(_ request: PopSubmitAITryOnJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopSubmitAITryOnJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bottomsId)) {
            query["BottomsId"] = request.bottomsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clothingType)) {
            query["ClothingType"] = request.clothingType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generatePictureNum)) {
            query["GeneratePictureNum"] = request.generatePictureNum!;
        }
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["ModelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shoeType)) {
            query["ShoeType"] = request.shoeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.suitId)) {
            query["SuitId"] = request.suitId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topsId)) {
            query["TopsId"] = request.topsId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopSubmitAITryOnJob",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopSubmitAITryOnJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popSubmitAITryOnJob(_ request: PopSubmitAITryOnJobRequest) async throws -> PopSubmitAITryOnJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popSubmitAITryOnJobWithOptions(request as! PopSubmitAITryOnJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popUploadMaterialWithOptions(_ request: PopUploadMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopUploadMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopUploadMaterial",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopUploadMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popUploadMaterial(_ request: PopUploadMaterialRequest) async throws -> PopUploadMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popUploadMaterialWithOptions(request as! PopUploadMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popVideoSaveSourceWithOptions(_ request: PopVideoSaveSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PopVideoSaveSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopVideoSaveSource",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopVideoSaveSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popVideoSaveSource(_ request: PopVideoSaveSourceRequest) async throws -> PopVideoSaveSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await popVideoSaveSourceWithOptions(request as! PopVideoSaveSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDigitalHumanProjectWithOptions(_ request: QueryDigitalHumanProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDigitalHumanProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ids)) {
            body["Ids"] = request.ids ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDigitalHumanProject",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDigitalHumanProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDigitalHumanProject(_ request: QueryDigitalHumanProjectRequest) async throws -> QueryDigitalHumanProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDigitalHumanProjectWithOptions(request as! QueryDigitalHumanProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLongTtsResultWithOptions(_ request: QueryLongTtsResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLongTtsResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLongTtsResult",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLongTtsResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLongTtsResult(_ request: QueryLongTtsResultRequest) async throws -> QueryLongTtsResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryLongTtsResultWithOptions(request as! QueryLongTtsResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMotionShopVideoDetectResultWithOptions(_ request: QueryMotionShopVideoDetectResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMotionShopVideoDetectResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMotionShopVideoDetectResult",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMotionShopVideoDetectResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMotionShopVideoDetectResult(_ request: QueryMotionShopVideoDetectResultRequest) async throws -> QueryMotionShopVideoDetectResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMotionShopVideoDetectResultWithOptions(request as! QueryMotionShopVideoDetectResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitLongTtsTaskWithOptions(_ request: SubmitLongTtsTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitLongTtsTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            query["JwtToken"] = request.jwtToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsVoiceId)) {
            body["TtsVoiceId"] = request.ttsVoiceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitLongTtsTask",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitLongTtsTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitLongTtsTask(_ request: SubmitLongTtsTaskRequest) async throws -> SubmitLongTtsTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitLongTtsTaskWithOptions(request as! SubmitLongTtsTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitMotionShopTaskWithOptions(_ request: SubmitMotionShopTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitMotionShopTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.avatarId)) {
            body["AvatarId"] = request.avatarId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoId)) {
            body["VideoId"] = request.videoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitMotionShopTask",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitMotionShopTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitMotionShopTask(_ request: SubmitMotionShopTaskRequest) async throws -> SubmitMotionShopTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitMotionShopTaskWithOptions(request as! SubmitMotionShopTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserEmailWithOptions(_ request: UpdateUserEmailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserEmailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.email)) {
            body["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jwtToken)) {
            body["JwtToken"] = request.jwtToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserEmail",
            "version": "2023-03-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserEmailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserEmail(_ request: UpdateUserEmailRequest) async throws -> UpdateUserEmailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUserEmailWithOptions(request as! UpdateUserEmailRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
