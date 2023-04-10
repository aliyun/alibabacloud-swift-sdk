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
        self._endpoint = try getEndpoint("documentautoml", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createModelAsyncPredictWithOptions(_ request: CreateModelAsyncPredictRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModelAsyncPredictResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.binaryToText)) {
            query["BinaryToText"] = request.binaryToText!;
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["ModelId"] = request.modelId!;
        }
        if (!TeaUtils.Client.isUnset(request.modelVersion)) {
            query["ModelVersion"] = request.modelVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceVersion)) {
            query["ServiceVersion"] = request.serviceVersion ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["Body"] = request.body ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateModelAsyncPredict",
            "version": "2022-12-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModelAsyncPredictResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelAsyncPredict(_ request: CreateModelAsyncPredictRequest) async throws -> CreateModelAsyncPredictResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createModelAsyncPredictWithOptions(request as! CreateModelAsyncPredictRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelAsyncPredictWithOptions(_ request: GetModelAsyncPredictRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetModelAsyncPredictResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.asyncPredictId)) {
            query["AsyncPredictId"] = request.asyncPredictId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetModelAsyncPredict",
            "version": "2022-12-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetModelAsyncPredictResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelAsyncPredict(_ request: GetModelAsyncPredictRequest) async throws -> GetModelAsyncPredictResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getModelAsyncPredictWithOptions(request as! GetModelAsyncPredictRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func predictClassifierModelWithOptions(_ request: PredictClassifierModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PredictClassifierModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPrediction)) {
            query["AutoPrediction"] = request.autoPrediction!;
        }
        if (!TeaUtils.Client.isUnset(request.classifierId)) {
            query["ClassifierId"] = request.classifierId!;
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["Body"] = request.body ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PredictClassifierModel",
            "version": "2022-12-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PredictClassifierModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func predictClassifierModel(_ request: PredictClassifierModelRequest) async throws -> PredictClassifierModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await predictClassifierModelWithOptions(request as! PredictClassifierModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func predictModelWithOptions(_ request: PredictModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PredictModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.binaryToText)) {
            query["BinaryToText"] = request.binaryToText!;
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["ModelId"] = request.modelId!;
        }
        if (!TeaUtils.Client.isUnset(request.modelVersion)) {
            query["ModelVersion"] = request.modelVersion ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["Body"] = request.body ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PredictModel",
            "version": "2022-12-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PredictModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func predictModel(_ request: PredictModelRequest) async throws -> PredictModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await predictModelWithOptions(request as! PredictModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func predictTemplateModelWithOptions(_ request: PredictTemplateModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PredictTemplateModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.binaryToText)) {
            query["BinaryToText"] = request.binaryToText!;
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["Body"] = request.body ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PredictTemplateModel",
            "version": "2022-12-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PredictTemplateModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func predictTemplateModel(_ request: PredictTemplateModelRequest) async throws -> PredictTemplateModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await predictTemplateModelWithOptions(request as! PredictTemplateModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
