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
            "ap-northeast-1": "green.ap-southeast-1.aliyuncs.com",
            "ap-south-1": "green.ap-southeast-1.aliyuncs.com",
            "ap-southeast-2": "green.ap-southeast-1.aliyuncs.com",
            "ap-southeast-3": "green.ap-southeast-1.aliyuncs.com",
            "ap-southeast-5": "green.ap-southeast-1.aliyuncs.com",
            "cn-chengdu": "green.aliyuncs.com",
            "cn-hongkong": "green.aliyuncs.com",
            "cn-huhehaote": "green.aliyuncs.com",
            "cn-qingdao": "green.aliyuncs.com",
            "cn-zhangjiakou": "green.aliyuncs.com",
            "eu-central-1": "green.ap-southeast-1.aliyuncs.com",
            "eu-west-1": "green.ap-southeast-1.aliyuncs.com",
            "me-east-1": "green.ap-southeast-1.aliyuncs.com",
            "us-east-1": "green.ap-southeast-1.aliyuncs.com",
            "cn-hangzhou-finance": "green.aliyuncs.com",
            "cn-shenzhen-finance-1": "green.aliyuncs.com",
            "cn-shanghai-finance-1": "green.aliyuncs.com",
            "cn-north-2-gov-1": "green.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("green", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func describeImageResultExtWithOptions(_ request: DescribeImageResultExtRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeImageResultExtResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.infoType)) {
            body["InfoType"] = request.infoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            body["ReqId"] = request.reqId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeImageResultExt",
            "version": "2022-03-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeImageResultExtResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImageResultExt(_ request: DescribeImageResultExtRequest) async throws -> DescribeImageResultExtResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeImageResultExtWithOptions(request as! DescribeImageResultExtRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageModerationWithOptions(_ request: ImageModerationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImageModerationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.service)) {
            body["Service"] = request.service ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceParameters)) {
            body["ServiceParameters"] = request.serviceParameters ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImageModeration",
            "version": "2022-03-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImageModerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageModeration(_ request: ImageModerationRequest) async throws -> ImageModerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await imageModerationWithOptions(request as! ImageModerationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func textModerationWithOptions(_ request: TextModerationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TextModerationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.service)) {
            body["Service"] = request.service ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceParameters)) {
            body["ServiceParameters"] = request.serviceParameters ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TextModeration",
            "version": "2022-03-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TextModerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func textModeration(_ request: TextModerationRequest) async throws -> TextModerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await textModerationWithOptions(request as! TextModerationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func voiceModerationWithOptions(_ request: VoiceModerationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VoiceModerationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.service)) {
            body["Service"] = request.service ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceParameters)) {
            body["ServiceParameters"] = request.serviceParameters ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VoiceModeration",
            "version": "2022-03-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VoiceModerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func voiceModeration(_ request: VoiceModerationRequest) async throws -> VoiceModerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await voiceModerationWithOptions(request as! VoiceModerationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func voiceModerationCancelWithOptions(_ request: VoiceModerationCancelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VoiceModerationCancelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.service)) {
            body["Service"] = request.service ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceParameters)) {
            body["ServiceParameters"] = request.serviceParameters ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VoiceModerationCancel",
            "version": "2022-03-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VoiceModerationCancelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func voiceModerationCancel(_ request: VoiceModerationCancelRequest) async throws -> VoiceModerationCancelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await voiceModerationCancelWithOptions(request as! VoiceModerationCancelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func voiceModerationResultWithOptions(_ request: VoiceModerationResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VoiceModerationResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.service)) {
            body["Service"] = request.service ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceParameters)) {
            body["ServiceParameters"] = request.serviceParameters ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VoiceModerationResult",
            "version": "2022-03-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VoiceModerationResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func voiceModerationResult(_ request: VoiceModerationResultRequest) async throws -> VoiceModerationResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await voiceModerationResultWithOptions(request as! VoiceModerationResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
