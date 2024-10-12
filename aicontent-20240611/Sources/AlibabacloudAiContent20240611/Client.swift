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
        self._endpoint = try getEndpoint("aicontent", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func aliyunConsoleOpenApiQueryAliyunConsoleServcieListWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AliyunConsoleOpenApiQueryAliyunConsoleServcieList",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aliyunconsole/queryAliyunConsoleServcieList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aliyunConsoleOpenApiQueryAliyunConsoleServcieList() async throws -> AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await aliyunConsoleOpenApiQueryAliyunConsoleServcieListWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aliyunConsoleOpenApiQueryAliyunConsoleServiceListWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AliyunConsoleOpenApiQueryAliyunConsoleServiceList",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aliyunconsole/queryAliyunConsoleServiceList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aliyunConsoleOpenApiQueryAliyunConsoleServiceList() async throws -> AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await aliyunConsoleOpenApiQueryAliyunConsoleServiceListWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageAddInferenceJobWithOptions(_ request: PersonalizedTextToImageAddInferenceJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PersonalizedTextToImageAddInferenceJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageNumber)) {
            body["imageNumber"] = request.imageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["imageUrl"] = request.imageUrl ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seed)) {
            body["seed"] = request.seed!;
        }
        if (!TeaUtils.Client.isUnset(request.strength)) {
            body["strength"] = request.strength!;
        }
        if (!TeaUtils.Client.isUnset(request.trainSteps)) {
            body["trainSteps"] = request.trainSteps!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PersonalizedTextToImageAddInferenceJob",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/addPreModelInferenceJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PersonalizedTextToImageAddInferenceJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageAddInferenceJob(_ request: PersonalizedTextToImageAddInferenceJobRequest) async throws -> PersonalizedTextToImageAddInferenceJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedTextToImageAddInferenceJobWithOptions(request as! PersonalizedTextToImageAddInferenceJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageQueryImageAssetWithOptions(_ request: PersonalizedTextToImageQueryImageAssetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PersonalizedTextToImageQueryImageAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encodeFormat)) {
            query["encodeFormat"] = request.encodeFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["imageId"] = request.imageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PersonalizedTextToImageQueryImageAsset",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryImageAssetFromImageId",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "any"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PersonalizedTextToImageQueryImageAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageQueryImageAsset(_ request: PersonalizedTextToImageQueryImageAssetRequest) async throws -> PersonalizedTextToImageQueryImageAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedTextToImageQueryImageAssetWithOptions(request as! PersonalizedTextToImageQueryImageAssetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageQueryPreModelInferenceJobInfoWithOptions(_ request: PersonalizedTextToImageQueryPreModelInferenceJobInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PersonalizedTextToImageQueryPreModelInferenceJobInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inferenceJobId)) {
            query["inferenceJobId"] = request.inferenceJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PersonalizedTextToImageQueryPreModelInferenceJobInfo",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryPreModelInferenceJobInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PersonalizedTextToImageQueryPreModelInferenceJobInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageQueryPreModelInferenceJobInfo(_ request: PersonalizedTextToImageQueryPreModelInferenceJobInfoRequest) async throws -> PersonalizedTextToImageQueryPreModelInferenceJobInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedTextToImageQueryPreModelInferenceJobInfoWithOptions(request as! PersonalizedTextToImageQueryPreModelInferenceJobInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgAddInferenceJobWithOptions(_ request: Personalizedtxt2imgAddInferenceJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgAddInferenceJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageNumber)) {
            body["imageNumber"] = request.imageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seed)) {
            body["seed"] = request.seed!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgAddInferenceJob",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/addInferenceJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgAddInferenceJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgAddInferenceJob(_ request: Personalizedtxt2imgAddInferenceJobRequest) async throws -> Personalizedtxt2imgAddInferenceJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgAddInferenceJobWithOptions(request as! Personalizedtxt2imgAddInferenceJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgAddModelTrainJobWithOptions(_ request: Personalizedtxt2imgAddModelTrainJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgAddModelTrainJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["imageUrl"] = request.imageUrl ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            body["objectType"] = request.objectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainSteps)) {
            body["trainSteps"] = request.trainSteps!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgAddModelTrainJob",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/addModelTrainJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgAddModelTrainJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgAddModelTrainJob(_ request: Personalizedtxt2imgAddModelTrainJobRequest) async throws -> Personalizedtxt2imgAddModelTrainJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgAddModelTrainJobWithOptions(request as! Personalizedtxt2imgAddModelTrainJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryImageAssetWithOptions(_ request: Personalizedtxt2imgQueryImageAssetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgQueryImageAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encodeFormat)) {
            query["encodeFormat"] = request.encodeFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["imageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptId)) {
            query["promptId"] = request.promptId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgQueryImageAsset",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryImageAsset",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "any"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgQueryImageAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryImageAsset(_ request: Personalizedtxt2imgQueryImageAssetRequest) async throws -> Personalizedtxt2imgQueryImageAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgQueryImageAssetWithOptions(request as! Personalizedtxt2imgQueryImageAssetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryInferenceJobInfoWithOptions(_ request: Personalizedtxt2imgQueryInferenceJobInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgQueryInferenceJobInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inferenceJobId)) {
            query["inferenceJobId"] = request.inferenceJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgQueryInferenceJobInfo",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryInferenceJobInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgQueryInferenceJobInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryInferenceJobInfo(_ request: Personalizedtxt2imgQueryInferenceJobInfoRequest) async throws -> Personalizedtxt2imgQueryInferenceJobInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgQueryInferenceJobInfoWithOptions(request as! Personalizedtxt2imgQueryInferenceJobInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryModelTrainJobListWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgQueryModelTrainJobListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgQueryModelTrainJobList",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryModelTrainJobList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgQueryModelTrainJobListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryModelTrainJobList() async throws -> Personalizedtxt2imgQueryModelTrainJobListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgQueryModelTrainJobListWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryModelTrainStatusWithOptions(_ request: Personalizedtxt2imgQueryModelTrainStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgQueryModelTrainStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["modelId"] = request.modelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgQueryModelTrainStatus",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryModelTrainStatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgQueryModelTrainStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryModelTrainStatus(_ request: Personalizedtxt2imgQueryModelTrainStatusRequest) async throws -> Personalizedtxt2imgQueryModelTrainStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgQueryModelTrainStatusWithOptions(request as! Personalizedtxt2imgQueryModelTrainStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
