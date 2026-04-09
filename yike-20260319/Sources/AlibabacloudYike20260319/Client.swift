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
        self._endpoint = try getEndpoint("yike", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func batchGetYikeAIAppJobWithOptions(_ request: BatchGetYikeAIAppJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGetYikeAIAppJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobIds)) {
            query["JobIds"] = request.jobIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchGetYikeAIAppJob",
            "version": "2026-03-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGetYikeAIAppJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetYikeAIAppJob(_ request: BatchGetYikeAIAppJobRequest) async throws -> BatchGetYikeAIAppJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchGetYikeAIAppJobWithOptions(request as! BatchGetYikeAIAppJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createYikeAssetUploadWithOptions(_ request: CreateYikeAssetUploadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateYikeAssetUploadResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileExt)) {
            query["FileExt"] = request.fileExt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            query["FileType"] = request.fileType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateYikeAssetUpload",
            "version": "2026-03-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateYikeAssetUploadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createYikeAssetUpload(_ request: CreateYikeAssetUploadRequest) async throws -> CreateYikeAssetUploadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createYikeAssetUploadWithOptions(request as! CreateYikeAssetUploadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getYikeAIAppJobWithOptions(_ request: GetYikeAIAppJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetYikeAIAppJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetYikeAIAppJob",
            "version": "2026-03-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetYikeAIAppJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getYikeAIAppJob(_ request: GetYikeAIAppJobRequest) async throws -> GetYikeAIAppJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getYikeAIAppJobWithOptions(request as! GetYikeAIAppJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getYikeStoryboardJobWithOptions(_ request: GetYikeStoryboardJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetYikeStoryboardJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetYikeStoryboardJob",
            "version": "2026-03-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetYikeStoryboardJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getYikeStoryboardJob(_ request: GetYikeStoryboardJobRequest) async throws -> GetYikeStoryboardJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getYikeStoryboardJobWithOptions(request as! GetYikeStoryboardJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitYikeAIAppJobWithOptions(_ request: SubmitYikeAIAppJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitYikeAIAppJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appParams)) {
            body["AppParams"] = request.appParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            body["FolderId"] = request.folderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productionId)) {
            body["ProductionId"] = request.productionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitYikeAIAppJob",
            "version": "2026-03-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitYikeAIAppJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitYikeAIAppJob(_ request: SubmitYikeAIAppJobRequest) async throws -> SubmitYikeAIAppJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitYikeAIAppJobWithOptions(request as! SubmitYikeAIAppJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitYikeStoryboardJobWithOptions(_ request: SubmitYikeStoryboardJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitYikeStoryboardJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aspectRatio)) {
            query["AspectRatio"] = request.aspectRatio ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.execMode)) {
            query["ExecMode"] = request.execMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelParams)) {
            query["ModelParams"] = request.modelParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.narrationVoiceId)) {
            query["NarrationVoiceId"] = request.narrationVoiceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resolution)) {
            query["Resolution"] = request.resolution ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shotPromptMode)) {
            query["ShotPromptMode"] = request.shotPromptMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipFailureShot)) {
            query["SkipFailureShot"] = request.skipFailureShot!;
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoModel)) {
            query["VideoModel"] = request.videoModel ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileURL)) {
            body["FileURL"] = request.fileURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shotSplitMode)) {
            body["ShotSplitMode"] = request.shotSplitMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.styleId)) {
            body["StyleId"] = request.styleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitYikeStoryboardJob",
            "version": "2026-03-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitYikeStoryboardJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitYikeStoryboardJob(_ request: SubmitYikeStoryboardJobRequest) async throws -> SubmitYikeStoryboardJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitYikeStoryboardJobWithOptions(request as! SubmitYikeStoryboardJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
