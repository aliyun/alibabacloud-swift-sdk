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
        self._endpoint = try getEndpoint("aimiaobi", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func cancelAsyncTaskWithOptions(_ request: CancelAsyncTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelAsyncTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelAsyncTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelAsyncTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelAsyncTask(_ request: CancelAsyncTaskRequest) async throws -> CancelAsyncTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelAsyncTaskWithOptions(request as! CancelAsyncTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clearIntervenesWithOptions(_ request: ClearIntervenesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ClearIntervenesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ClearIntervenes",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ClearIntervenesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clearIntervenes(_ request: ClearIntervenesRequest) async throws -> ClearIntervenesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await clearIntervenesWithOptions(request as! ClearIntervenesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGeneratedContentWithOptions(_ tmpReq: CreateGeneratedContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGeneratedContentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateGeneratedContentShrinkRequest = CreateGeneratedContentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.keywords)) {
            request.keywordsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.keywords, "Keywords", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentDomain)) {
            body["ContentDomain"] = request.contentDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentText)) {
            body["ContentText"] = request.contentText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keywordsShrink)) {
            body["Keywords"] = request.keywordsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGeneratedContent",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGeneratedContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGeneratedContent(_ request: CreateGeneratedContentRequest) async throws -> CreateGeneratedContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGeneratedContentWithOptions(request as! CreateGeneratedContentRequest, runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2023-08-01",
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
    public func deleteCustomTextWithOptions(_ request: DeleteCustomTextRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCustomTextResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            body["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCustomText",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCustomTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomText(_ request: DeleteCustomTextRequest) async throws -> DeleteCustomTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCustomTextWithOptions(request as! DeleteCustomTextRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomTopicByTopicWithOptions(_ request: DeleteCustomTopicByTopicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCustomTopicByTopicResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["Topic"] = request.topic ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCustomTopicByTopic",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCustomTopicByTopicResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomTopicByTopic(_ request: DeleteCustomTopicByTopicRequest) async throws -> DeleteCustomTopicByTopicResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCustomTopicByTopicWithOptions(request as! DeleteCustomTopicByTopicRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomTopicViewPointByIdWithOptions(_ request: DeleteCustomTopicViewPointByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCustomTopicViewPointByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customViewPointId)) {
            body["CustomViewPointId"] = request.customViewPointId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCustomTopicViewPointById",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCustomTopicViewPointByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomTopicViewPointById(_ request: DeleteCustomTopicViewPointByIdRequest) async throws -> DeleteCustomTopicViewPointByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCustomTopicViewPointByIdWithOptions(request as! DeleteCustomTopicViewPointByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGeneratedContentWithOptions(_ request: DeleteGeneratedContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGeneratedContentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGeneratedContent",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGeneratedContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGeneratedContent(_ request: DeleteGeneratedContentRequest) async throws -> DeleteGeneratedContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGeneratedContentWithOptions(request as! DeleteGeneratedContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInterveneRuleWithOptions(_ request: DeleteInterveneRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInterveneRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            body["RuleId"] = request.ruleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInterveneRule",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInterveneRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInterveneRule(_ request: DeleteInterveneRuleRequest) async throws -> DeleteInterveneRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteInterveneRuleWithOptions(request as! DeleteInterveneRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMaterialByIdWithOptions(_ request: DeleteMaterialByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMaterialByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMaterialById",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMaterialByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMaterialById(_ request: DeleteMaterialByIdRequest) async throws -> DeleteMaterialByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMaterialByIdWithOptions(request as! DeleteMaterialByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func documentExtractionWithOptions(_ tmpReq: DocumentExtractionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DocumentExtractionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DocumentExtractionShrinkRequest = DocumentExtractionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.urls)) {
            request.urlsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.urls, "Urls", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.urlsShrink)) {
            body["Urls"] = request.urlsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DocumentExtraction",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DocumentExtractionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func documentExtraction(_ request: DocumentExtractionRequest) async throws -> DocumentExtractionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await documentExtractionWithOptions(request as! DocumentExtractionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportGeneratedContentWithOptions(_ request: ExportGeneratedContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportGeneratedContentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportGeneratedContent",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportGeneratedContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportGeneratedContent(_ request: ExportGeneratedContentRequest) async throws -> ExportGeneratedContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await exportGeneratedContentWithOptions(request as! ExportGeneratedContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportHotTopicPlanningProposalsWithOptions(_ tmpReq: ExportHotTopicPlanningProposalsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportHotTopicPlanningProposalsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ExportHotTopicPlanningProposalsShrinkRequest = ExportHotTopicPlanningProposalsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.customViewPointIds)) {
            request.customViewPointIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customViewPointIds, "CustomViewPointIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.titles)) {
            request.titlesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.titles, "Titles", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customViewPointIdsShrink)) {
            body["CustomViewPointIds"] = request.customViewPointIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exportType)) {
            body["ExportType"] = request.exportType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.titlesShrink)) {
            body["Titles"] = request.titlesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["Topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicSource)) {
            body["TopicSource"] = request.topicSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.viewPointType)) {
            body["ViewPointType"] = request.viewPointType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportHotTopicPlanningProposals",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportHotTopicPlanningProposalsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportHotTopicPlanningProposals(_ request: ExportHotTopicPlanningProposalsRequest) async throws -> ExportHotTopicPlanningProposalsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await exportHotTopicPlanningProposalsWithOptions(request as! ExportHotTopicPlanningProposalsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportIntervenesWithOptions(_ request: ExportIntervenesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportIntervenesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportIntervenes",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportIntervenesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportIntervenes(_ request: ExportIntervenesRequest) async throws -> ExportIntervenesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await exportIntervenesWithOptions(request as! ExportIntervenesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func feedbackDialogueWithOptions(_ tmpReq: FeedbackDialogueRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FeedbackDialogueResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FeedbackDialogueShrinkRequest = FeedbackDialogueShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ratingTags)) {
            request.ratingTagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ratingTags, "RatingTags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customerResponse)) {
            body["CustomerResponse"] = request.customerResponse ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.goodText)) {
            body["GoodText"] = request.goodText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifiedResponse)) {
            body["ModifiedResponse"] = request.modifiedResponse ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rating)) {
            body["Rating"] = request.rating ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ratingTagsShrink)) {
            body["RatingTags"] = request.ratingTagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FeedbackDialogue",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FeedbackDialogueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func feedbackDialogue(_ request: FeedbackDialogueRequest) async throws -> FeedbackDialogueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await feedbackDialogueWithOptions(request as! FeedbackDialogueRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fetchImageTaskWithOptions(_ tmpReq: FetchImageTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FetchImageTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FetchImageTaskShrinkRequest = FetchImageTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.taskIdList)) {
            request.taskIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.taskIdList, "TaskIdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.articleTaskId)) {
            body["ArticleTaskId"] = request.articleTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskIdListShrink)) {
            body["TaskIdList"] = request.taskIdListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FetchImageTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FetchImageTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fetchImageTask(_ request: FetchImageTaskRequest) async throws -> FetchImageTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await fetchImageTaskWithOptions(request as! FetchImageTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateFileUrlByKeyWithOptions(_ request: GenerateFileUrlByKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateFileUrlByKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileKey)) {
            body["FileKey"] = request.fileKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["FileName"] = request.fileName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateFileUrlByKey",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateFileUrlByKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateFileUrlByKey(_ request: GenerateFileUrlByKeyRequest) async throws -> GenerateFileUrlByKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateFileUrlByKeyWithOptions(request as! GenerateFileUrlByKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateImageTaskWithOptions(_ tmpReq: GenerateImageTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateImageTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GenerateImageTaskShrinkRequest = GenerateImageTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.paragraphList)) {
            request.paragraphListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.paragraphList, "ParagraphList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.articleTaskId)) {
            body["ArticleTaskId"] = request.articleTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paragraphListShrink)) {
            body["ParagraphList"] = request.paragraphListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.style)) {
            body["Style"] = request.style ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateImageTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateImageTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateImageTask(_ request: GenerateImageTaskRequest) async throws -> GenerateImageTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateImageTaskWithOptions(request as! GenerateImageTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateUploadConfigWithOptions(_ request: GenerateUploadConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateUploadConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentDir)) {
            body["ParentDir"] = request.parentDir ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateUploadConfig",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateUploadConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateUploadConfig(_ request: GenerateUploadConfigRequest) async throws -> GenerateUploadConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateUploadConfigWithOptions(request as! GenerateUploadConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateViewPointWithOptions(_ tmpReq: GenerateViewPointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateViewPointResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GenerateViewPointShrinkRequest = GenerateViewPointShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.referenceData)) {
            request.referenceDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.referenceData, "ReferenceData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.referenceDataShrink)) {
            body["ReferenceData"] = request.referenceDataShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateViewPoint",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateViewPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateViewPoint(_ request: GenerateViewPointRequest) async throws -> GenerateViewPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateViewPointWithOptions(request as! GenerateViewPointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCategoriesByTaskIdWithOptions(_ request: GetCategoriesByTaskIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCategoriesByTaskIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCategoriesByTaskId",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCategoriesByTaskIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCategoriesByTaskId(_ request: GetCategoriesByTaskIdRequest) async throws -> GetCategoriesByTaskIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCategoriesByTaskIdWithOptions(request as! GetCategoriesByTaskIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomHotTopicBroadcastJobWithOptions(_ request: GetCustomHotTopicBroadcastJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomHotTopicBroadcastJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomHotTopicBroadcastJob",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomHotTopicBroadcastJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomHotTopicBroadcastJob(_ request: GetCustomHotTopicBroadcastJobRequest) async throws -> GetCustomHotTopicBroadcastJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCustomHotTopicBroadcastJobWithOptions(request as! GetCustomHotTopicBroadcastJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomTextWithOptions(_ request: GetCustomTextRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomTextResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            body["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomText",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomText(_ request: GetCustomTextRequest) async throws -> GetCustomTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCustomTextWithOptions(request as! GetCustomTextRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomTopicSelectionPerspectiveAnalysisTaskWithOptions(_ request: GetCustomTopicSelectionPerspectiveAnalysisTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomTopicSelectionPerspectiveAnalysisTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomTopicSelectionPerspectiveAnalysisTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomTopicSelectionPerspectiveAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomTopicSelectionPerspectiveAnalysisTask(_ request: GetCustomTopicSelectionPerspectiveAnalysisTaskRequest) async throws -> GetCustomTopicSelectionPerspectiveAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCustomTopicSelectionPerspectiveAnalysisTaskWithOptions(request as! GetCustomTopicSelectionPerspectiveAnalysisTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataSourceOrderConfigWithOptions(_ request: GetDataSourceOrderConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataSourceOrderConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataSourceOrderConfig",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataSourceOrderConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataSourceOrderConfig(_ request: GetDataSourceOrderConfigRequest) async throws -> GetDataSourceOrderConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataSourceOrderConfigWithOptions(request as! GetDataSourceOrderConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocClusterTaskWithOptions(_ request: GetDocClusterTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocClusterTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocClusterTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocClusterTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocClusterTask(_ request: GetDocClusterTaskRequest) async throws -> GetDocClusterTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDocClusterTaskWithOptions(request as! GetDocClusterTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseVocAnalysisTaskWithOptions(_ request: GetEnterpriseVocAnalysisTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnterpriseVocAnalysisTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnterpriseVocAnalysisTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnterpriseVocAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseVocAnalysisTask(_ request: GetEnterpriseVocAnalysisTaskRequest) async throws -> GetEnterpriseVocAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEnterpriseVocAnalysisTaskWithOptions(request as! GetEnterpriseVocAnalysisTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGeneratedContentWithOptions(_ request: GetGeneratedContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGeneratedContentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGeneratedContent",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGeneratedContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGeneratedContent(_ request: GetGeneratedContentRequest) async throws -> GetGeneratedContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getGeneratedContentWithOptions(request as! GetGeneratedContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotTopicBroadcastWithOptions(_ tmpReq: GetHotTopicBroadcastRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHotTopicBroadcastResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetHotTopicBroadcastShrinkRequest = GetHotTopicBroadcastShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.stepForCustomSummaryStyleConfig)) {
            request.stepForCustomSummaryStyleConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.stepForCustomSummaryStyleConfig, "StepForCustomSummaryStyleConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.stepForNewsBroadcastContentConfig)) {
            request.stepForNewsBroadcastContentConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.stepForNewsBroadcastContentConfig, "StepForNewsBroadcastContentConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.topics)) {
            request.topicsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.topics, "Topics", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calcTotalToken)) {
            body["CalcTotalToken"] = request.calcTotalToken!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            body["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.hotTopicVersion)) {
            body["HotTopicVersion"] = request.hotTopicVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.stepForCustomSummaryStyleConfigShrink)) {
            body["StepForCustomSummaryStyleConfig"] = request.stepForCustomSummaryStyleConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stepForNewsBroadcastContentConfigShrink)) {
            body["StepForNewsBroadcastContentConfig"] = request.stepForNewsBroadcastContentConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicsShrink)) {
            body["Topics"] = request.topicsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHotTopicBroadcast",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHotTopicBroadcastResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotTopicBroadcast(_ request: GetHotTopicBroadcastRequest) async throws -> GetHotTopicBroadcastResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getHotTopicBroadcastWithOptions(request as! GetHotTopicBroadcastRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInterveneGlobalReplyWithOptions(_ request: GetInterveneGlobalReplyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInterveneGlobalReplyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInterveneGlobalReply",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInterveneGlobalReplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInterveneGlobalReply(_ request: GetInterveneGlobalReplyRequest) async throws -> GetInterveneGlobalReplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInterveneGlobalReplyWithOptions(request as! GetInterveneGlobalReplyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInterveneImportTaskInfoWithOptions(_ request: GetInterveneImportTaskInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInterveneImportTaskInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInterveneImportTaskInfo",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInterveneImportTaskInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInterveneImportTaskInfo(_ request: GetInterveneImportTaskInfoRequest) async throws -> GetInterveneImportTaskInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInterveneImportTaskInfoWithOptions(request as! GetInterveneImportTaskInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInterveneRuleDetailWithOptions(_ request: GetInterveneRuleDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInterveneRuleDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            body["RuleId"] = request.ruleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInterveneRuleDetail",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInterveneRuleDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInterveneRuleDetail(_ request: GetInterveneRuleDetailRequest) async throws -> GetInterveneRuleDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInterveneRuleDetailWithOptions(request as! GetInterveneRuleDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInterveneTemplateFileUrlWithOptions(_ request: GetInterveneTemplateFileUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInterveneTemplateFileUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInterveneTemplateFileUrl",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInterveneTemplateFileUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInterveneTemplateFileUrl(_ request: GetInterveneTemplateFileUrlRequest) async throws -> GetInterveneTemplateFileUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInterveneTemplateFileUrlWithOptions(request as! GetInterveneTemplateFileUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMaterialByIdWithOptions(_ request: GetMaterialByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMaterialByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMaterialById",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMaterialByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMaterialById(_ request: GetMaterialByIdRequest) async throws -> GetMaterialByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMaterialByIdWithOptions(request as! GetMaterialByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPropertiesWithOptions(_ request: GetPropertiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPropertiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProperties",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPropertiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProperties(_ request: GetPropertiesRequest) async throws -> GetPropertiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPropertiesWithOptions(request as! GetPropertiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSmartClipTaskWithOptions(_ request: GetSmartClipTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSmartClipTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSmartClipTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSmartClipTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSmartClipTask(_ request: GetSmartClipTaskRequest) async throws -> GetSmartClipTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSmartClipTaskWithOptions(request as! GetSmartClipTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTopicByIdWithOptions(_ request: GetTopicByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTopicByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTopicById",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTopicByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTopicById(_ request: GetTopicByIdRequest) async throws -> GetTopicByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTopicByIdWithOptions(request as! GetTopicByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTopicSelectionPerspectiveAnalysisTaskWithOptions(_ request: GetTopicSelectionPerspectiveAnalysisTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTopicSelectionPerspectiveAnalysisTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTopicSelectionPerspectiveAnalysisTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTopicSelectionPerspectiveAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTopicSelectionPerspectiveAnalysisTask(_ request: GetTopicSelectionPerspectiveAnalysisTaskRequest) async throws -> GetTopicSelectionPerspectiveAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTopicSelectionPerspectiveAnalysisTaskWithOptions(request as! GetTopicSelectionPerspectiveAnalysisTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importInterveneFileWithOptions(_ request: ImportInterveneFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportInterveneFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docName)) {
            body["DocName"] = request.docName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileKey)) {
            body["FileKey"] = request.fileKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            body["FileUrl"] = request.fileUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportInterveneFile",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportInterveneFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importInterveneFile(_ request: ImportInterveneFileRequest) async throws -> ImportInterveneFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await importInterveneFileWithOptions(request as! ImportInterveneFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importInterveneFileAsyncWithOptions(_ request: ImportInterveneFileAsyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportInterveneFileAsyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docName)) {
            body["DocName"] = request.docName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileKey)) {
            body["FileKey"] = request.fileKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            body["FileUrl"] = request.fileUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportInterveneFileAsync",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportInterveneFileAsyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importInterveneFileAsync(_ request: ImportInterveneFileAsyncRequest) async throws -> ImportInterveneFileAsyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await importInterveneFileAsyncWithOptions(request as! ImportInterveneFileAsyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertInterveneGlobalReplyWithOptions(_ tmpReq: InsertInterveneGlobalReplyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertInterveneGlobalReplyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsertInterveneGlobalReplyShrinkRequest = InsertInterveneGlobalReplyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.replyMessagList)) {
            request.replyMessagListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.replyMessagList, "ReplyMessagList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.replyMessagListShrink)) {
            body["ReplyMessagList"] = request.replyMessagListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertInterveneGlobalReply",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertInterveneGlobalReplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertInterveneGlobalReply(_ request: InsertInterveneGlobalReplyRequest) async throws -> InsertInterveneGlobalReplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await insertInterveneGlobalReplyWithOptions(request as! InsertInterveneGlobalReplyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertInterveneRuleWithOptions(_ tmpReq: InsertInterveneRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertInterveneRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsertInterveneRuleShrinkRequest = InsertInterveneRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.interveneRuleConfig)) {
            request.interveneRuleConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.interveneRuleConfig, "InterveneRuleConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.interveneRuleConfigShrink)) {
            body["InterveneRuleConfig"] = request.interveneRuleConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertInterveneRule",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertInterveneRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertInterveneRule(_ request: InsertInterveneRuleRequest) async throws -> InsertInterveneRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await insertInterveneRuleWithOptions(request as! InsertInterveneRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnalysisTagDetailByTaskIdWithOptions(_ tmpReq: ListAnalysisTagDetailByTaskIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAnalysisTagDetailByTaskIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAnalysisTagDetailByTaskIdShrinkRequest = ListAnalysisTagDetailByTaskIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.categories)) {
            request.categoriesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.categories, "Categories", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoriesShrink)) {
            body["Categories"] = request.categoriesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAnalysisTagDetailByTaskId",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAnalysisTagDetailByTaskIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnalysisTagDetailByTaskId(_ request: ListAnalysisTagDetailByTaskIdRequest) async throws -> ListAnalysisTagDetailByTaskIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAnalysisTagDetailByTaskIdWithOptions(request as! ListAnalysisTagDetailByTaskIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAsyncTasksWithOptions(_ tmpReq: ListAsyncTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAsyncTasksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAsyncTasksShrinkRequest = ListAsyncTasksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.taskStatusList)) {
            request.taskStatusListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.taskStatusList, "TaskStatusList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.taskTypeList)) {
            request.taskTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.taskTypeList, "TaskTypeList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeEnd)) {
            body["CreateTimeEnd"] = request.createTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            body["CreateTimeStart"] = request.createTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.taskCode)) {
            body["TaskCode"] = request.taskCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            body["TaskStatus"] = request.taskStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.taskStatusListShrink)) {
            body["TaskStatusList"] = request.taskStatusListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["TaskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskTypeListShrink)) {
            body["TaskTypeList"] = request.taskTypeListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAsyncTasks",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAsyncTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAsyncTasks(_ request: ListAsyncTasksRequest) async throws -> ListAsyncTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAsyncTasksWithOptions(request as! ListAsyncTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBuildConfigsWithOptions(_ request: ListBuildConfigsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBuildConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBuildConfigs",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBuildConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBuildConfigs(_ request: ListBuildConfigsRequest) async throws -> ListBuildConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listBuildConfigsWithOptions(request as! ListBuildConfigsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCustomTextWithOptions(_ request: ListCustomTextRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCustomTextResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            body["CommodityCode"] = request.commodityCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCustomText",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCustomTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCustomText(_ request: ListCustomTextRequest) async throws -> ListCustomTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCustomTextWithOptions(request as! ListCustomTextRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCustomViewPointsWithOptions(_ tmpReq: ListCustomViewPointsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCustomViewPointsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListCustomViewPointsShrinkRequest = ListCustomViewPointsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.attitudes)) {
            request.attitudesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.attitudes, "Attitudes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.customViewPointIds)) {
            request.customViewPointIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customViewPointIds, "CustomViewPointIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attitude)) {
            body["Attitude"] = request.attitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attitudesShrink)) {
            body["Attitudes"] = request.attitudesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customViewPointId)) {
            body["CustomViewPointId"] = request.customViewPointId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customViewPointIdsShrink)) {
            body["CustomViewPointIds"] = request.customViewPointIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["Topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicId)) {
            body["TopicId"] = request.topicId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCustomViewPoints",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCustomViewPointsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCustomViewPoints(_ request: ListCustomViewPointsRequest) async throws -> ListCustomViewPointsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCustomViewPointsWithOptions(request as! ListCustomViewPointsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDialoguesWithOptions(_ request: ListDialoguesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDialoguesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.dialogueType)) {
            body["DialogueType"] = request.dialogueType!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDialogues",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDialoguesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDialogues(_ request: ListDialoguesRequest) async throws -> ListDialoguesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDialoguesWithOptions(request as! ListDialoguesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFreshViewPointsWithOptions(_ request: ListFreshViewPointsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFreshViewPointsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["Topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicSource)) {
            body["TopicSource"] = request.topicSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFreshViewPoints",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFreshViewPointsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFreshViewPoints(_ request: ListFreshViewPointsRequest) async throws -> ListFreshViewPointsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFreshViewPointsWithOptions(request as! ListFreshViewPointsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGeneratedContentsWithOptions(_ request: ListGeneratedContentsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGeneratedContentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentDomain)) {
            body["ContentDomain"] = request.contentDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGeneratedContents",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGeneratedContentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGeneratedContents(_ request: ListGeneratedContentsRequest) async throws -> ListGeneratedContentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listGeneratedContentsWithOptions(request as! ListGeneratedContentsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHotNewsWithTypeWithOptions(_ tmpReq: ListHotNewsWithTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHotNewsWithTypeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListHotNewsWithTypeShrinkRequest = ListHotNewsWithTypeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.newsTypes)) {
            request.newsTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.newsTypes, "NewsTypes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.newsType)) {
            body["NewsType"] = request.newsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newsTypesShrink)) {
            body["NewsTypes"] = request.newsTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHotNewsWithType",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHotNewsWithTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHotNewsWithType(_ request: ListHotNewsWithTypeRequest) async throws -> ListHotNewsWithTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHotNewsWithTypeWithOptions(request as! ListHotNewsWithTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHotSourcesWithOptions(_ request: ListHotSourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHotSourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHotSources",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHotSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHotSources(_ request: ListHotSourcesRequest) async throws -> ListHotSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHotSourcesWithOptions(request as! ListHotSourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHotTopicsWithOptions(_ tmpReq: ListHotTopicsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHotTopicsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListHotTopicsShrinkRequest = ListHotTopicsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.topicIds)) {
            request.topicIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.topicIds, "TopicIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.topics)) {
            request.topicsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.topics, "Topics", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicIdsShrink)) {
            body["TopicIds"] = request.topicIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicQuery)) {
            body["TopicQuery"] = request.topicQuery ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicSource)) {
            body["TopicSource"] = request.topicSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicVersion)) {
            body["TopicVersion"] = request.topicVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicsShrink)) {
            body["Topics"] = request.topicsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withNews)) {
            body["WithNews"] = request.withNews!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHotTopics",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHotTopicsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHotTopics(_ request: ListHotTopicsRequest) async throws -> ListHotTopicsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHotTopicsWithOptions(request as! ListHotTopicsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHotViewPointsWithOptions(_ request: ListHotViewPointsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHotViewPointsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["Topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicSource)) {
            body["TopicSource"] = request.topicSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHotViewPoints",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHotViewPointsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHotViewPoints(_ request: ListHotViewPointsRequest) async throws -> ListHotViewPointsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHotViewPointsWithOptions(request as! ListHotViewPointsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterveneCntWithOptions(_ request: ListInterveneCntRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInterveneCntResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInterveneCnt",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInterveneCntResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterveneCnt(_ request: ListInterveneCntRequest) async throws -> ListInterveneCntResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInterveneCntWithOptions(request as! ListInterveneCntRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterveneImportTasksWithOptions(_ request: ListInterveneImportTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInterveneImportTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInterveneImportTasks",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInterveneImportTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterveneImportTasks(_ request: ListInterveneImportTasksRequest) async throws -> ListInterveneImportTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInterveneImportTasksWithOptions(request as! ListInterveneImportTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterveneRulesWithOptions(_ request: ListInterveneRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInterveneRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInterveneRules",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInterveneRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterveneRules(_ request: ListInterveneRulesRequest) async throws -> ListInterveneRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInterveneRulesWithOptions(request as! ListInterveneRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntervenesWithOptions(_ request: ListIntervenesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIntervenesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.interveneType)) {
            body["InterveneType"] = request.interveneType!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            body["RuleId"] = request.ruleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIntervenes",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIntervenesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntervenes(_ request: ListIntervenesRequest) async throws -> ListIntervenesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIntervenesWithOptions(request as! ListIntervenesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMaterialDocumentsWithOptions(_ tmpReq: ListMaterialDocumentsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMaterialDocumentsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListMaterialDocumentsShrinkRequest = ListMaterialDocumentsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.docTypeList)) {
            request.docTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.docTypeList, "DocTypeList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.keywords)) {
            request.keywordsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.keywords, "Keywords", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeEnd)) {
            body["CreateTimeEnd"] = request.createTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            body["CreateTimeStart"] = request.createTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.docType)) {
            body["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docTypeListShrink)) {
            body["DocTypeList"] = request.docTypeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generatePublicUrl)) {
            body["GeneratePublicUrl"] = request.generatePublicUrl!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.keywordsShrink)) {
            body["Keywords"] = request.keywordsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shareAttr)) {
            body["ShareAttr"] = request.shareAttr!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateTimeEnd)) {
            body["UpdateTimeEnd"] = request.updateTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateTimeStart)) {
            body["UpdateTimeStart"] = request.updateTimeStart ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMaterialDocuments",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMaterialDocumentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMaterialDocuments(_ request: ListMaterialDocumentsRequest) async throws -> ListMaterialDocumentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMaterialDocumentsWithOptions(request as! ListMaterialDocumentsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPlanningProposalWithOptions(_ tmpReq: ListPlanningProposalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPlanningProposalResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListPlanningProposalShrinkRequest = ListPlanningProposalShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.customViewPointIds)) {
            request.customViewPointIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customViewPointIds, "CustomViewPointIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.titles)) {
            request.titlesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.titles, "Titles", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customViewPointId)) {
            body["CustomViewPointId"] = request.customViewPointId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customViewPointIdsShrink)) {
            body["CustomViewPointIds"] = request.customViewPointIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.titlesShrink)) {
            body["Titles"] = request.titlesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["Topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicSource)) {
            body["TopicSource"] = request.topicSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicVersion)) {
            body["TopicVersion"] = request.topicVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.viewPointType)) {
            body["ViewPointType"] = request.viewPointType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPlanningProposal",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPlanningProposalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPlanningProposal(_ request: ListPlanningProposalRequest) async throws -> ListPlanningProposalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPlanningProposalWithOptions(request as! ListPlanningProposalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTimedViewAttitudeWithOptions(_ request: ListTimedViewAttitudeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTimedViewAttitudeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["Topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicSource)) {
            body["TopicSource"] = request.topicSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTimedViewAttitude",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTimedViewAttitudeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTimedViewAttitude(_ request: ListTimedViewAttitudeRequest) async throws -> ListTimedViewAttitudeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTimedViewAttitudeWithOptions(request as! ListTimedViewAttitudeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTopicRecommendEventListWithOptions(_ request: ListTopicRecommendEventListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTopicRecommendEventListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTopicRecommendEventList",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTopicRecommendEventListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTopicRecommendEventList(_ request: ListTopicRecommendEventListRequest) async throws -> ListTopicRecommendEventListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTopicRecommendEventListWithOptions(request as! ListTopicRecommendEventListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTopicViewPointRecommendEventListWithOptions(_ request: ListTopicViewPointRecommendEventListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTopicViewPointRecommendEventListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTopicViewPointRecommendEventList",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTopicViewPointRecommendEventListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTopicViewPointRecommendEventList(_ request: ListTopicViewPointRecommendEventListRequest) async throws -> ListTopicViewPointRecommendEventListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTopicViewPointRecommendEventListWithOptions(request as! ListTopicViewPointRecommendEventListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVersionsWithOptions(_ request: ListVersionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVersions",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVersions(_ request: ListVersionsRequest) async throws -> ListVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listVersionsWithOptions(request as! ListVersionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWebReviewPointsWithOptions(_ request: ListWebReviewPointsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWebReviewPointsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["Topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicSource)) {
            body["TopicSource"] = request.topicSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWebReviewPoints",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWebReviewPointsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWebReviewPoints(_ request: ListWebReviewPointsRequest) async throws -> ListWebReviewPointsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWebReviewPointsWithOptions(request as! ListWebReviewPointsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAsyncTaskWithOptions(_ request: QueryAsyncTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAsyncTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAsyncTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAsyncTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAsyncTask(_ request: QueryAsyncTaskRequest) async throws -> QueryAsyncTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAsyncTaskWithOptions(request as! QueryAsyncTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runAbbreviationContentWithOptions(_ request: RunAbbreviationContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunAbbreviationContentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunAbbreviationContent",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunAbbreviationContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runAbbreviationContent(_ request: RunAbbreviationContentRequest) async throws -> RunAbbreviationContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runAbbreviationContentWithOptions(request as! RunAbbreviationContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runContinueContentWithOptions(_ request: RunContinueContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunContinueContentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunContinueContent",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunContinueContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runContinueContent(_ request: RunContinueContentRequest) async throws -> RunContinueContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runContinueContentWithOptions(request as! RunContinueContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCustomHotTopicAnalysisWithOptions(_ request: RunCustomHotTopicAnalysisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunCustomHotTopicAnalysisResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.askUser)) {
            body["AskUser"] = request.askUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceAnalysisExistsTopic)) {
            body["ForceAnalysisExistsTopic"] = request.forceAnalysisExistsTopic!;
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBack)) {
            body["UserBack"] = request.userBack ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunCustomHotTopicAnalysis",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunCustomHotTopicAnalysisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCustomHotTopicAnalysis(_ request: RunCustomHotTopicAnalysisRequest) async throws -> RunCustomHotTopicAnalysisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runCustomHotTopicAnalysisWithOptions(request as! RunCustomHotTopicAnalysisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCustomHotTopicViewPointAnalysisWithOptions(_ request: RunCustomHotTopicViewPointAnalysisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunCustomHotTopicViewPointAnalysisResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.askUser)) {
            body["AskUser"] = request.askUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchQuery)) {
            body["SearchQuery"] = request.searchQuery ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipAskUser)) {
            body["SkipAskUser"] = request.skipAskUser!;
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["Topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicId)) {
            body["TopicId"] = request.topicId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicSource)) {
            body["TopicSource"] = request.topicSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicVersion)) {
            body["TopicVersion"] = request.topicVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBack)) {
            body["UserBack"] = request.userBack ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunCustomHotTopicViewPointAnalysis",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunCustomHotTopicViewPointAnalysisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCustomHotTopicViewPointAnalysis(_ request: RunCustomHotTopicViewPointAnalysisRequest) async throws -> RunCustomHotTopicViewPointAnalysisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runCustomHotTopicViewPointAnalysisWithOptions(request as! RunCustomHotTopicViewPointAnalysisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runExpandContentWithOptions(_ request: RunExpandContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunExpandContentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunExpandContent",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunExpandContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runExpandContent(_ request: RunExpandContentRequest) async throws -> RunExpandContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runExpandContentWithOptions(request as! RunExpandContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runKeywordsExtractionGenerationWithOptions(_ tmpReq: RunKeywordsExtractionGenerationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunKeywordsExtractionGenerationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunKeywordsExtractionGenerationShrinkRequest = RunKeywordsExtractionGenerationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.referenceData)) {
            request.referenceDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.referenceData, "ReferenceData", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.referenceDataShrink)) {
            body["ReferenceData"] = request.referenceDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunKeywordsExtractionGeneration",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunKeywordsExtractionGenerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runKeywordsExtractionGeneration(_ request: RunKeywordsExtractionGenerationRequest) async throws -> RunKeywordsExtractionGenerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runKeywordsExtractionGenerationWithOptions(request as! RunKeywordsExtractionGenerationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runStepByStepWritingWithOptions(_ tmpReq: RunStepByStepWritingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunStepByStepWritingResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunStepByStepWritingShrinkRequest = RunStepByStepWritingShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.referenceData)) {
            request.referenceDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.referenceData, "ReferenceData", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.writingConfig)) {
            request.writingConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.writingConfig, "WritingConfig", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.originSessionId)) {
            body["OriginSessionId"] = request.originSessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referenceDataShrink)) {
            body["ReferenceData"] = request.referenceDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.writingConfigShrink)) {
            body["WritingConfig"] = request.writingConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunStepByStepWriting",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunStepByStepWritingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runStepByStepWriting(_ request: RunStepByStepWritingRequest) async throws -> RunStepByStepWritingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runStepByStepWritingWithOptions(request as! RunStepByStepWritingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runStyleFeatureAnalysisWithOptions(_ tmpReq: RunStyleFeatureAnalysisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunStyleFeatureAnalysisResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunStyleFeatureAnalysisShrinkRequest = RunStyleFeatureAnalysisShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contents)) {
            request.contentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contents, "Contents", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.materialIds)) {
            request.materialIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.materialIds, "MaterialIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentsShrink)) {
            body["Contents"] = request.contentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialIdsShrink)) {
            body["MaterialIds"] = request.materialIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunStyleFeatureAnalysis",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunStyleFeatureAnalysisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runStyleFeatureAnalysis(_ request: RunStyleFeatureAnalysisRequest) async throws -> RunStyleFeatureAnalysisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runStyleFeatureAnalysisWithOptions(request as! RunStyleFeatureAnalysisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runSummaryGenerateWithOptions(_ request: RunSummaryGenerateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunSummaryGenerateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunSummaryGenerate",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunSummaryGenerateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runSummaryGenerate(_ request: RunSummaryGenerateRequest) async throws -> RunSummaryGenerateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runSummaryGenerateWithOptions(request as! RunSummaryGenerateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runTextPolishingWithOptions(_ request: RunTextPolishingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunTextPolishingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunTextPolishing",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunTextPolishingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runTextPolishing(_ request: RunTextPolishingRequest) async throws -> RunTextPolishingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runTextPolishingWithOptions(request as! RunTextPolishingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runTitleGenerationWithOptions(_ tmpReq: RunTitleGenerationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunTitleGenerationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunTitleGenerationShrinkRequest = RunTitleGenerationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.referenceData)) {
            request.referenceDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.referenceData, "ReferenceData", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.referenceDataShrink)) {
            body["ReferenceData"] = request.referenceDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunTitleGeneration",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunTitleGenerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runTitleGeneration(_ request: RunTitleGenerationRequest) async throws -> RunTitleGenerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runTitleGenerationWithOptions(request as! RunTitleGenerationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runTranslateGenerationWithOptions(_ tmpReq: RunTranslateGenerationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunTranslateGenerationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunTranslateGenerationShrinkRequest = RunTranslateGenerationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.referenceData)) {
            request.referenceDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.referenceData, "ReferenceData", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referenceDataShrink)) {
            body["ReferenceData"] = request.referenceDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunTranslateGeneration",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunTranslateGenerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runTranslateGeneration(_ request: RunTranslateGenerationRequest) async throws -> RunTranslateGenerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runTranslateGenerationWithOptions(request as! RunTranslateGenerationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runWriteToneGenerationWithOptions(_ tmpReq: RunWriteToneGenerationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunWriteToneGenerationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunWriteToneGenerationShrinkRequest = RunWriteToneGenerationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.referenceData)) {
            request.referenceDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.referenceData, "ReferenceData", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referenceDataShrink)) {
            body["ReferenceData"] = request.referenceDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunWriteToneGeneration",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunWriteToneGenerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runWriteToneGeneration(_ request: RunWriteToneGenerationRequest) async throws -> RunWriteToneGenerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runWriteToneGenerationWithOptions(request as! RunWriteToneGenerationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runWritingWithOptions(_ tmpReq: RunWritingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunWritingResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunWritingShrinkRequest = RunWritingShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.referenceData)) {
            request.referenceDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.referenceData, "ReferenceData", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.writingConfig)) {
            request.writingConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.writingConfig, "WritingConfig", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.originSessionId)) {
            body["OriginSessionId"] = request.originSessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referenceDataShrink)) {
            body["ReferenceData"] = request.referenceDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.writingConfigShrink)) {
            body["WritingConfig"] = request.writingConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunWriting",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunWritingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runWriting(_ request: RunWritingRequest) async throws -> RunWritingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runWritingWithOptions(request as! RunWritingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveCustomTextWithOptions(_ request: SaveCustomTextRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveCustomTextResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            body["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveCustomText",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveCustomTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveCustomText(_ request: SaveCustomTextRequest) async throws -> SaveCustomTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveCustomTextWithOptions(request as! SaveCustomTextRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveDataSourceOrderConfigWithOptions(_ tmpReq: SaveDataSourceOrderConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveDataSourceOrderConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SaveDataSourceOrderConfigShrinkRequest = SaveDataSourceOrderConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.userConfigDataSourceList)) {
            request.userConfigDataSourceListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userConfigDataSourceList, "UserConfigDataSourceList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userConfigDataSourceListShrink)) {
            body["UserConfigDataSourceList"] = request.userConfigDataSourceListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveDataSourceOrderConfig",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveDataSourceOrderConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveDataSourceOrderConfig(_ request: SaveDataSourceOrderConfigRequest) async throws -> SaveDataSourceOrderConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveDataSourceOrderConfigWithOptions(request as! SaveDataSourceOrderConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveMaterialDocumentWithOptions(_ tmpReq: SaveMaterialDocumentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveMaterialDocumentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SaveMaterialDocumentShrinkRequest = SaveMaterialDocumentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.docKeywords)) {
            request.docKeywordsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.docKeywords, "DocKeywords", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.author)) {
            body["Author"] = request.author ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bothSavePrivateAndShare)) {
            body["BothSavePrivateAndShare"] = request.bothSavePrivateAndShare!;
        }
        if (!TeaUtils.Client.isUnset(request.docKeywordsShrink)) {
            body["DocKeywords"] = request.docKeywordsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docType)) {
            body["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalUrl)) {
            body["ExternalUrl"] = request.externalUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.htmlContent)) {
            body["HtmlContent"] = request.htmlContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pubTime)) {
            body["PubTime"] = request.pubTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shareAttr)) {
            body["ShareAttr"] = request.shareAttr!;
        }
        if (!TeaUtils.Client.isUnset(request.srcFrom)) {
            body["SrcFrom"] = request.srcFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summary)) {
            body["Summary"] = request.summary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textContent)) {
            body["TextContent"] = request.textContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveMaterialDocument",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveMaterialDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveMaterialDocument(_ request: SaveMaterialDocumentRequest) async throws -> SaveMaterialDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveMaterialDocumentWithOptions(request as! SaveMaterialDocumentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchNewsWithOptions(_ tmpReq: SearchNewsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchNewsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchNewsShrinkRequest = SearchNewsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.searchSources)) {
            request.searchSourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.searchSources, "SearchSources", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterNotNull)) {
            body["FilterNotNull"] = request.filterNotNull!;
        }
        if (!TeaUtils.Client.isUnset(request.includeContent)) {
            body["IncludeContent"] = request.includeContent!;
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchSourcesShrink)) {
            body["SearchSources"] = request.searchSourcesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchNews",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchNewsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchNews(_ request: SearchNewsRequest) async throws -> SearchNewsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchNewsWithOptions(request as! SearchNewsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitAsyncTaskWithOptions(_ request: SubmitAsyncTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitAsyncTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskCode)) {
            body["TaskCode"] = request.taskCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskExecuteTime)) {
            body["TaskExecuteTime"] = request.taskExecuteTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskParam)) {
            body["TaskParam"] = request.taskParam ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitAsyncTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitAsyncTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitAsyncTask(_ request: SubmitAsyncTaskRequest) async throws -> SubmitAsyncTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitAsyncTaskWithOptions(request as! SubmitAsyncTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitCustomHotTopicBroadcastJobWithOptions(_ tmpReq: SubmitCustomHotTopicBroadcastJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitCustomHotTopicBroadcastJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitCustomHotTopicBroadcastJobShrinkRequest = SubmitCustomHotTopicBroadcastJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.hotTopicBroadcastConfig)) {
            request.hotTopicBroadcastConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.hotTopicBroadcastConfig, "HotTopicBroadcastConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.topics)) {
            request.topicsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.topics, "Topics", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hotTopicBroadcastConfigShrink)) {
            body["HotTopicBroadcastConfig"] = request.hotTopicBroadcastConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hotTopicVersion)) {
            body["HotTopicVersion"] = request.hotTopicVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicsShrink)) {
            body["Topics"] = request.topicsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitCustomHotTopicBroadcastJob",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitCustomHotTopicBroadcastJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitCustomHotTopicBroadcastJob(_ request: SubmitCustomHotTopicBroadcastJobRequest) async throws -> SubmitCustomHotTopicBroadcastJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitCustomHotTopicBroadcastJobWithOptions(request as! SubmitCustomHotTopicBroadcastJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitCustomTopicSelectionPerspectiveAnalysisTaskWithOptions(_ tmpReq: SubmitCustomTopicSelectionPerspectiveAnalysisTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitCustomTopicSelectionPerspectiveAnalysisTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitCustomTopicSelectionPerspectiveAnalysisTaskShrinkRequest = SubmitCustomTopicSelectionPerspectiveAnalysisTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.documents)) {
            request.documentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.documents, "Documents", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documentsShrink)) {
            body["Documents"] = request.documentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["Topic"] = request.topic ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitCustomTopicSelectionPerspectiveAnalysisTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitCustomTopicSelectionPerspectiveAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitCustomTopicSelectionPerspectiveAnalysisTask(_ request: SubmitCustomTopicSelectionPerspectiveAnalysisTaskRequest) async throws -> SubmitCustomTopicSelectionPerspectiveAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitCustomTopicSelectionPerspectiveAnalysisTaskWithOptions(request as! SubmitCustomTopicSelectionPerspectiveAnalysisTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocClusterTaskWithOptions(_ tmpReq: SubmitDocClusterTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocClusterTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitDocClusterTaskShrinkRequest = SubmitDocClusterTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.documents)) {
            request.documentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.documents, "Documents", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documentsShrink)) {
            body["Documents"] = request.documentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summaryLength)) {
            body["SummaryLength"] = request.summaryLength!;
        }
        if (!TeaUtils.Client.isUnset(request.titleLength)) {
            body["TitleLength"] = request.titleLength!;
        }
        if (!TeaUtils.Client.isUnset(request.topicCount)) {
            body["TopicCount"] = request.topicCount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitDocClusterTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitDocClusterTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocClusterTask(_ request: SubmitDocClusterTaskRequest) async throws -> SubmitDocClusterTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitDocClusterTaskWithOptions(request as! SubmitDocClusterTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitEnterpriseVocAnalysisTaskWithOptions(_ tmpReq: SubmitEnterpriseVocAnalysisTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitEnterpriseVocAnalysisTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitEnterpriseVocAnalysisTaskShrinkRequest = SubmitEnterpriseVocAnalysisTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contentTags)) {
            request.contentTagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contentTags, "ContentTags", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.contents)) {
            request.contentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contents, "Contents", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.filterTags)) {
            request.filterTagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterTags, "FilterTags", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentTagsShrink)) {
            body["ContentTags"] = request.contentTagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentsShrink)) {
            body["Contents"] = request.contentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileKey)) {
            body["FileKey"] = request.fileKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterTagsShrink)) {
            body["FilterTags"] = request.filterTagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialType)) {
            body["MaterialType"] = request.materialType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["ModelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.positiveSample)) {
            body["PositiveSample"] = request.positiveSample ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.positiveSampleFileKey)) {
            body["PositiveSampleFileKey"] = request.positiveSampleFileKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["TaskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitEnterpriseVocAnalysisTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitEnterpriseVocAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitEnterpriseVocAnalysisTask(_ request: SubmitEnterpriseVocAnalysisTaskRequest) async throws -> SubmitEnterpriseVocAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitEnterpriseVocAnalysisTaskWithOptions(request as! SubmitEnterpriseVocAnalysisTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSmartClipTaskWithOptions(_ tmpReq: SubmitSmartClipTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitSmartClipTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitSmartClipTaskShrinkRequest = SubmitSmartClipTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.editingConfig)) {
            request.editingConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.editingConfig, "EditingConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.inputConfig)) {
            request.inputConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.inputConfig, "InputConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.outputConfig)) {
            request.outputConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.outputConfig, "OutputConfig", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.editingConfigShrink)) {
            body["EditingConfig"] = request.editingConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputConfigShrink)) {
            body["InputConfig"] = request.inputConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputConfigShrink)) {
            body["OutputConfig"] = request.outputConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitSmartClipTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitSmartClipTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSmartClipTask(_ request: SubmitSmartClipTaskRequest) async throws -> SubmitSmartClipTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitSmartClipTaskWithOptions(request as! SubmitSmartClipTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitTopicSelectionPerspectiveAnalysisTaskWithOptions(_ tmpReq: SubmitTopicSelectionPerspectiveAnalysisTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitTopicSelectionPerspectiveAnalysisTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitTopicSelectionPerspectiveAnalysisTaskShrinkRequest = SubmitTopicSelectionPerspectiveAnalysisTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.documents)) {
            request.documentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.documents, "Documents", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.perspectiveTypes)) {
            request.perspectiveTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.perspectiveTypes, "PerspectiveTypes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documentsShrink)) {
            body["Documents"] = request.documentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.perspectiveTypesShrink)) {
            body["PerspectiveTypes"] = request.perspectiveTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["Topic"] = request.topic ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitTopicSelectionPerspectiveAnalysisTask",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitTopicSelectionPerspectiveAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitTopicSelectionPerspectiveAnalysisTask(_ request: SubmitTopicSelectionPerspectiveAnalysisTaskRequest) async throws -> SubmitTopicSelectionPerspectiveAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitTopicSelectionPerspectiveAnalysisTaskWithOptions(request as! SubmitTopicSelectionPerspectiveAnalysisTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCustomTextWithOptions(_ request: UpdateCustomTextRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCustomTextResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            body["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCustomText",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCustomTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCustomText(_ request: UpdateCustomTextRequest) async throws -> UpdateCustomTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateCustomTextWithOptions(request as! UpdateCustomTextRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGeneratedContentWithOptions(_ tmpReq: UpdateGeneratedContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGeneratedContentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateGeneratedContentShrinkRequest = UpdateGeneratedContentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.keywords)) {
            request.keywordsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.keywords, "Keywords", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentText)) {
            body["ContentText"] = request.contentText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.keywordsShrink)) {
            body["Keywords"] = request.keywordsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGeneratedContent",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGeneratedContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGeneratedContent(_ request: UpdateGeneratedContentRequest) async throws -> UpdateGeneratedContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateGeneratedContentWithOptions(request as! UpdateGeneratedContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMaterialDocumentWithOptions(_ tmpReq: UpdateMaterialDocumentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMaterialDocumentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateMaterialDocumentShrinkRequest = UpdateMaterialDocumentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.docKeywords)) {
            request.docKeywordsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.docKeywords, "DocKeywords", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentKey)) {
            query["AgentKey"] = request.agentKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.author)) {
            body["Author"] = request.author ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docKeywordsShrink)) {
            body["DocKeywords"] = request.docKeywordsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docType)) {
            body["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalUrl)) {
            body["ExternalUrl"] = request.externalUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.htmlContent)) {
            body["HtmlContent"] = request.htmlContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.pubTime)) {
            body["PubTime"] = request.pubTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shareAttr)) {
            body["ShareAttr"] = request.shareAttr!;
        }
        if (!TeaUtils.Client.isUnset(request.srcFrom)) {
            body["SrcFrom"] = request.srcFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summary)) {
            body["Summary"] = request.summary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textContent)) {
            body["TextContent"] = request.textContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMaterialDocument",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMaterialDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMaterialDocument(_ request: UpdateMaterialDocumentRequest) async throws -> UpdateMaterialDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMaterialDocumentWithOptions(request as! UpdateMaterialDocumentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateUploadTemplateWithOptions(_ request: ValidateUploadTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateUploadTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileKey)) {
            body["FileKey"] = request.fileKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["TaskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            body["TemplateType"] = request.templateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateUploadTemplate",
            "version": "2023-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateUploadTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateUploadTemplate(_ request: ValidateUploadTemplateRequest) async throws -> ValidateUploadTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await validateUploadTemplateWithOptions(request as! ValidateUploadTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
