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
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("milvusknowledgebase", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addDocumentsWithOptions(_ datasetId: String, _ request: AddDocumentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDocumentsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dedup)) {
            body["Dedup"] = request.dedup!;
        }
        if (!TeaUtils.Client.isUnset(request.documents)) {
            body["Documents"] = request.documents ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.importType)) {
            body["ImportType"] = request.importType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.knowledgeBaseId)) {
            body["KnowledgeBaseId"] = request.knowledgeBaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metaFields)) {
            body["MetaFields"] = request.metaFields!;
        }
        if (!TeaUtils.Client.isUnset(request.strategyId)) {
            body["StrategyId"] = request.strategyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dingTalkConfiguration)) {
            body["dingTalkConfiguration"] = request.dingTalkConfiguration!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDocuments",
            "version": "2026-06-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(datasetId)) + "/documents/addDocuments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDocumentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDocuments(_ datasetId: String, _ request: AddDocumentsRequest) async throws -> AddDocumentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addDocumentsWithOptions(datasetId as! String, request as! AddDocumentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKnowledgeBasePreSignedUrlWithOptions(_ datasetId: String, _ request: GetKnowledgeBasePreSignedUrlRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetKnowledgeBasePreSignedUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documents)) {
            body["Documents"] = request.documents ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.expiresIn)) {
            body["ExpiresIn"] = request.expiresIn!;
        }
        if (!TeaUtils.Client.isUnset(request.knowledgeBaseId)) {
            body["KnowledgeBaseId"] = request.knowledgeBaseId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetKnowledgeBasePreSignedUrl",
            "version": "2026-06-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(datasetId)) + "/getKnowledgeBasePreSignedUrl",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetKnowledgeBasePreSignedUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKnowledgeBasePreSignedUrl(_ datasetId: String, _ request: GetKnowledgeBasePreSignedUrlRequest) async throws -> GetKnowledgeBasePreSignedUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getKnowledgeBasePreSignedUrlWithOptions(datasetId as! String, request as! GetKnowledgeBasePreSignedUrlRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchKnowledgeBaseWithOptions(_ knowledgeBaseId: String, _ request: SearchKnowledgeBaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchKnowledgeBaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documentIds)) {
            body["documentIds"] = request.documentIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.enableKnowledgeGraph)) {
            body["enableKnowledgeGraph"] = request.enableKnowledgeGraph!;
        }
        if (!TeaUtils.Client.isUnset(request.image)) {
            body["image"] = request.image!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rerankModelId)) {
            body["rerankModelId"] = request.rerankModelId!;
        }
        if (!TeaUtils.Client.isUnset(request.rerankModelName)) {
            body["rerankModelName"] = request.rerankModelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retrievalConfig)) {
            body["retrievalConfig"] = request.retrievalConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.tagFilter)) {
            body["tagFilter"] = request.tagFilter!;
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchKnowledgeBase",
            "version": "2026-06-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/knowledge-bases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(knowledgeBaseId)) + "/search",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchKnowledgeBaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchKnowledgeBase(_ knowledgeBaseId: String, _ request: SearchKnowledgeBaseRequest) async throws -> SearchKnowledgeBaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await searchKnowledgeBaseWithOptions(knowledgeBaseId as! String, request as! SearchKnowledgeBaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
