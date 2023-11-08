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
        self._endpoint = try getEndpoint("bailian", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func cancelFineTuneJobWithOptions(_ request: CancelFineTuneJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelFineTuneJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
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
            "action": "CancelFineTuneJob",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelFineTuneJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelFineTuneJob(_ request: CancelFineTuneJobRequest) async throws -> CancelFineTuneJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelFineTuneJobWithOptions(request as! CancelFineTuneJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFineTuneJobWithOptions(_ tmpReq: CreateFineTuneJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFineTuneJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateFineTuneJobShrinkRequest = CreateFineTuneJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.hyperParameters)) {
            request.hyperParametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.hyperParameters, "HyperParameters", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.trainingFiles)) {
            request.trainingFilesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.trainingFiles, "TrainingFiles", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.validationFiles)) {
            request.validationFilesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.validationFiles, "ValidationFiles", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseModel)) {
            body["BaseModel"] = request.baseModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hyperParametersShrink)) {
            body["HyperParameters"] = request.hyperParametersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelName)) {
            body["ModelName"] = request.modelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainingFilesShrink)) {
            body["TrainingFiles"] = request.trainingFilesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainingType)) {
            body["TrainingType"] = request.trainingType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validationFilesShrink)) {
            body["ValidationFiles"] = request.validationFilesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFineTuneJob",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFineTuneJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFineTuneJob(_ request: CreateFineTuneJobRequest) async throws -> CreateFineTuneJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFineTuneJobWithOptions(request as! CreateFineTuneJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceWithOptions(_ request: CreateServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateService",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createService(_ request: CreateServiceRequest) async throws -> CreateServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createServiceWithOptions(request as! CreateServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTextEmbeddingsWithOptions(_ tmpReq: CreateTextEmbeddingsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTextEmbeddingsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateTextEmbeddingsShrinkRequest = CreateTextEmbeddingsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.input)) {
            request.inputShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.input, "Input", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputShrink)) {
            query["Input"] = request.inputShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textType)) {
            query["TextType"] = request.textType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTextEmbeddings",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTextEmbeddingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTextEmbeddings(_ request: CreateTextEmbeddingsRequest) async throws -> CreateTextEmbeddingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTextEmbeddingsWithOptions(request as! CreateTextEmbeddingsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTokenWithOptions(_ request: CreateTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateToken",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createToken(_ request: CreateTokenRequest) async throws -> CreateTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTokenWithOptions(request as! CreateTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnterpriseDataWithOptions(_ request: DeleteEnterpriseDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEnterpriseDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataId)) {
            query["DataId"] = request.dataId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEnterpriseData",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEnterpriseDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnterpriseData(_ request: DeleteEnterpriseDataRequest) async throws -> DeleteEnterpriseDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEnterpriseDataWithOptions(request as! DeleteEnterpriseDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFineTuneJobWithOptions(_ request: DeleteFineTuneJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFineTuneJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
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
            "action": "DeleteFineTuneJob",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFineTuneJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFineTuneJob(_ request: DeleteFineTuneJobRequest) async throws -> DeleteFineTuneJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFineTuneJobWithOptions(request as! DeleteFineTuneJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceWithOptions(_ request: DeleteServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelServiceId)) {
            body["ModelServiceId"] = request.modelServiceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteService",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteService(_ request: DeleteServiceRequest) async throws -> DeleteServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteServiceWithOptions(request as! DeleteServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFineTuneJobWithOptions(_ request: DescribeFineTuneJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFineTuneJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
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
            "action": "DescribeFineTuneJob",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFineTuneJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFineTuneJob(_ request: DescribeFineTuneJobRequest) async throws -> DescribeFineTuneJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFineTuneJobWithOptions(request as! DescribeFineTuneJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceWithOptions(_ request: DescribeServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelServiceId)) {
            body["ModelServiceId"] = request.modelServiceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeService",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeService(_ request: DescribeServiceRequest) async throws -> DescribeServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServiceWithOptions(request as! DescribeServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseDataByDataIdWithOptions(_ request: GetEnterpriseDataByDataIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnterpriseDataByDataIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataId)) {
            query["DataId"] = request.dataId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnterpriseDataByDataId",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnterpriseDataByDataIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseDataByDataId(_ request: GetEnterpriseDataByDataIdRequest) async throws -> GetEnterpriseDataByDataIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEnterpriseDataByDataIdWithOptions(request as! GetEnterpriseDataByDataIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseDataChunkWithOptions(_ request: GetEnterpriseDataChunkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnterpriseDataChunkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataId)) {
            query["DataId"] = request.dataId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnterpriseDataChunk",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnterpriseDataChunkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseDataChunk(_ request: GetEnterpriseDataChunkRequest) async throws -> GetEnterpriseDataChunkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEnterpriseDataChunkWithOptions(request as! GetEnterpriseDataChunkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseDataPageImageWithOptions(_ request: GetEnterpriseDataPageImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnterpriseDataPageImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataId)) {
            query["DataId"] = request.dataId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnterpriseDataPageImage",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnterpriseDataPageImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseDataPageImage(_ request: GetEnterpriseDataPageImageRequest) async throws -> GetEnterpriseDataPageImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEnterpriseDataPageImageWithOptions(request as! GetEnterpriseDataPageImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseDataParseResultWithOptions(_ request: GetEnterpriseDataParseResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnterpriseDataParseResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataId)) {
            query["DataId"] = request.dataId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnterpriseDataParseResult",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnterpriseDataParseResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseDataParseResult(_ request: GetEnterpriseDataParseResultRequest) async throws -> GetEnterpriseDataParseResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEnterpriseDataParseResultWithOptions(request as! GetEnterpriseDataParseResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImportTaskResultWithOptions(_ request: GetImportTaskResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImportTaskResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImportTaskResult",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImportTaskResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImportTaskResult(_ request: GetImportTaskResultRequest) async throws -> GetImportTaskResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getImportTaskResultWithOptions(request as! GetImportTaskResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importEnterpriseDocumentWithOptions(_ tmpReq: ImportEnterpriseDocumentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportEnterpriseDocumentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ImportEnterpriseDocumentShrinkRequest = ImportEnterpriseDocumentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.documentList)) {
            request.documentListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.documentList, "DocumentList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentListShrink)) {
            query["DocumentList"] = request.documentListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            query["StoreId"] = request.storeId!;
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportEnterpriseDocument",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportEnterpriseDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importEnterpriseDocument(_ request: ImportEnterpriseDocumentRequest) async throws -> ImportEnterpriseDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await importEnterpriseDocumentWithOptions(request as! ImportEnterpriseDocumentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFineTuneJobsWithOptions(_ request: ListFineTuneJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFineTuneJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            body["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFineTuneJobs",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFineTuneJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFineTuneJobs(_ request: ListFineTuneJobsRequest) async throws -> ListFineTuneJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFineTuneJobsWithOptions(request as! ListFineTuneJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServicesWithOptions(_ request: ListServicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            body["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            body["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServices",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServices(_ request: ListServicesRequest) async throws -> ListServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listServicesWithOptions(request as! ListServicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEnterpriseDataListWithOptions(_ tmpReq: QueryEnterpriseDataListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEnterpriseDataListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryEnterpriseDataListShrinkRequest = QueryEnterpriseDataListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataName)) {
            query["DataName"] = request.dataName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.storeType)) {
            query["StoreType"] = request.storeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEnterpriseDataList",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEnterpriseDataListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEnterpriseDataList(_ request: QueryEnterpriseDataListRequest) async throws -> QueryEnterpriseDataListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEnterpriseDataListWithOptions(request as! QueryEnterpriseDataListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchEnterpriseDataWithOptions(_ tmpReq: SearchEnterpriseDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchEnterpriseDataResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchEnterpriseDataShrinkRequest = SearchEnterpriseDataShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataIdList)) {
            request.dataIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataIdList, "DataIdList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tagIdList)) {
            request.tagIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tagIdList, "TagIdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataIdListShrink)) {
            query["DataIdList"] = request.dataIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableRank)) {
            query["EnableRank"] = request.enableRank!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            query["StoreId"] = request.storeId!;
        }
        if (!TeaUtils.Client.isUnset(request.tagIdListShrink)) {
            query["TagIdList"] = request.tagIdListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchEnterpriseData",
            "version": "2023-06-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchEnterpriseDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchEnterpriseData(_ request: SearchEnterpriseDataRequest) async throws -> SearchEnterpriseDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchEnterpriseDataWithOptions(request as! SearchEnterpriseDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
