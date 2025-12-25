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
        self._endpoint = try getEndpoint("qualitycheck", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addBusinessCategoryWithOptions(_ request: AddBusinessCategoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddBusinessCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddBusinessCategory",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddBusinessCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addBusinessCategory(_ request: AddBusinessCategoryRequest) async throws -> AddBusinessCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addBusinessCategoryWithOptions(request as! AddBusinessCategoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRuleCategoryWithOptions(_ request: AddRuleCategoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddRuleCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddRuleCategory",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddRuleCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRuleCategory(_ request: AddRuleCategoryRequest) async throws -> AddRuleCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addRuleCategoryWithOptions(request as! AddRuleCategoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRuleV4WithOptions(_ request: AddRuleV4Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddRuleV4Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isCopy)) {
            body["IsCopy"] = request.isCopy!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStrForRule)) {
            body["JsonStrForRule"] = request.jsonStrForRule ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddRuleV4",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddRuleV4Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRuleV4(_ request: AddRuleV4Request) async throws -> AddRuleV4Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addRuleV4WithOptions(request as! AddRuleV4Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyWsTokenWithOptions(_ request: ApplyWsTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyWsTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyWsToken",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyWsTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyWsToken(_ request: ApplyWsTokenRequest) async throws -> ApplyWsTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyWsTokenWithOptions(request as! ApplyWsTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignReviewerWithOptions(_ request: AssignReviewerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssignReviewerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssignReviewer",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssignReviewerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignReviewer(_ request: AssignReviewerRequest) async throws -> AssignReviewerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assignReviewerWithOptions(request as! AssignReviewerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignReviewerBySessionGroupWithOptions(_ request: AssignReviewerBySessionGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssignReviewerBySessionGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssignReviewerBySessionGroup",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssignReviewerBySessionGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignReviewerBySessionGroup(_ request: AssignReviewerBySessionGroupRequest) async throws -> AssignReviewerBySessionGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assignReviewerBySessionGroupWithOptions(request as! AssignReviewerBySessionGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchSubmitReviewInfoWithOptions(_ request: BatchSubmitReviewInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchSubmitReviewInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchSubmitReviewInfo",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchSubmitReviewInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchSubmitReviewInfo(_ request: BatchSubmitReviewInfoRequest) async throws -> BatchSubmitReviewInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchSubmitReviewInfoWithOptions(request as! BatchSubmitReviewInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAsrVocabWithOptions(_ request: CreateAsrVocabRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAsrVocabResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAsrVocab",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAsrVocabResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAsrVocab(_ request: CreateAsrVocabRequest) async throws -> CreateAsrVocabResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAsrVocabWithOptions(request as! CreateAsrVocabRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCheckTypeToSchemeWithOptions(_ request: CreateCheckTypeToSchemeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCheckTypeToSchemeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCheckTypeToScheme",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCheckTypeToSchemeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCheckTypeToScheme(_ request: CreateCheckTypeToSchemeRequest) async throws -> CreateCheckTypeToSchemeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCheckTypeToSchemeWithOptions(request as! CreateCheckTypeToSchemeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMiningTaskWithOptions(_ request: CreateMiningTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMiningTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callbackUrl)) {
            body["CallbackUrl"] = request.callbackUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.param)) {
            body["Param"] = request.param ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMiningTask",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMiningTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMiningTask(_ request: CreateMiningTaskRequest) async throws -> CreateMiningTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMiningTaskWithOptions(request as! CreateMiningTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQualityCheckSchemeWithOptions(_ request: CreateQualityCheckSchemeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateQualityCheckSchemeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateQualityCheckScheme",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateQualityCheckSchemeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQualityCheckScheme(_ request: CreateQualityCheckSchemeRequest) async throws -> CreateQualityCheckSchemeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createQualityCheckSchemeWithOptions(request as! CreateQualityCheckSchemeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSchemeTaskConfigWithOptions(_ request: CreateSchemeTaskConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSchemeTaskConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSchemeTaskConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSchemeTaskConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSchemeTaskConfig(_ request: CreateSchemeTaskConfigRequest) async throws -> CreateSchemeTaskConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSchemeTaskConfigWithOptions(request as! CreateSchemeTaskConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSkillGroupConfigWithOptions(_ request: CreateSkillGroupConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSkillGroupConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSkillGroupConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSkillGroupConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSkillGroupConfig(_ request: CreateSkillGroupConfigRequest) async throws -> CreateSkillGroupConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSkillGroupConfigWithOptions(request as! CreateSkillGroupConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskAssignRuleWithOptions(_ request: CreateTaskAssignRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTaskAssignRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTaskAssignRule",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTaskAssignRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskAssignRule(_ request: CreateTaskAssignRuleRequest) async throws -> CreateTaskAssignRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTaskAssignRuleWithOptions(request as! CreateTaskAssignRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserWithOptions(_ request: CreateUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            body["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            body["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUser",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUser(_ request: CreateUserRequest) async throws -> CreateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUserWithOptions(request as! CreateUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWarningConfigWithOptions(_ request: CreateWarningConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWarningConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWarningConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWarningConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWarningConfig(_ request: CreateWarningConfigRequest) async throws -> CreateWarningConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWarningConfigWithOptions(request as! CreateWarningConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWarningStrategyConfigWithOptions(_ request: CreateWarningStrategyConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWarningStrategyConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWarningStrategyConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWarningStrategyConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWarningStrategyConfig(_ request: CreateWarningStrategyConfigRequest) async throws -> CreateWarningStrategyConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWarningStrategyConfigWithOptions(request as! CreateWarningStrategyConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func delRuleCategoryWithOptions(_ request: DelRuleCategoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DelRuleCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DelRuleCategory",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DelRuleCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func delRuleCategory(_ request: DelRuleCategoryRequest) async throws -> DelRuleCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await delRuleCategoryWithOptions(request as! DelRuleCategoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAsrVocabWithOptions(_ request: DeleteAsrVocabRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAsrVocabResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAsrVocab",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAsrVocabResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAsrVocab(_ request: DeleteAsrVocabRequest) async throws -> DeleteAsrVocabResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAsrVocabWithOptions(request as! DeleteAsrVocabRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBusinessCategoryWithOptions(_ request: DeleteBusinessCategoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBusinessCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBusinessCategory",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBusinessCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBusinessCategory(_ request: DeleteBusinessCategoryRequest) async throws -> DeleteBusinessCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBusinessCategoryWithOptions(request as! DeleteBusinessCategoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCheckTypeToSchemeWithOptions(_ request: DeleteCheckTypeToSchemeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCheckTypeToSchemeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCheckTypeToScheme",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCheckTypeToSchemeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCheckTypeToScheme(_ request: DeleteCheckTypeToSchemeRequest) async throws -> DeleteCheckTypeToSchemeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCheckTypeToSchemeWithOptions(request as! DeleteCheckTypeToSchemeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomizationConfigWithOptions(_ request: DeleteCustomizationConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCustomizationConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCustomizationConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCustomizationConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomizationConfig(_ request: DeleteCustomizationConfigRequest) async throws -> DeleteCustomizationConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCustomizationConfigWithOptions(request as! DeleteCustomizationConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSetWithOptions(_ request: DeleteDataSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataSet",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSet(_ request: DeleteDataSetRequest) async throws -> DeleteDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDataSetWithOptions(request as! DeleteDataSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrecisionTaskWithOptions(_ request: DeletePrecisionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePrecisionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePrecisionTask",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePrecisionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrecisionTask(_ request: DeletePrecisionTaskRequest) async throws -> DeletePrecisionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePrecisionTaskWithOptions(request as! DeletePrecisionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteQualityCheckSchemeWithOptions(_ request: DeleteQualityCheckSchemeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteQualityCheckSchemeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteQualityCheckScheme",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteQualityCheckSchemeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteQualityCheckScheme(_ request: DeleteQualityCheckSchemeRequest) async throws -> DeleteQualityCheckSchemeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteQualityCheckSchemeWithOptions(request as! DeleteQualityCheckSchemeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRuleWithOptions(_ request: DeleteRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forceDelete)) {
            body["ForceDelete"] = request.forceDelete!;
        }
        if (!TeaUtils.Client.isUnset(request.isSchemeData)) {
            body["IsSchemeData"] = request.isSchemeData!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            body["RuleId"] = request.ruleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRule",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRule(_ request: DeleteRuleRequest) async throws -> DeleteRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRuleWithOptions(request as! DeleteRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRuleV4WithOptions(_ request: DeleteRuleV4Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRuleV4Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forceDelete)) {
            body["ForceDelete"] = request.forceDelete!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            body["RuleId"] = request.ruleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRuleV4",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRuleV4Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRuleV4(_ request: DeleteRuleV4Request) async throws -> DeleteRuleV4Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRuleV4WithOptions(request as! DeleteRuleV4Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSchemeTaskConfigWithOptions(_ request: DeleteSchemeTaskConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSchemeTaskConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSchemeTaskConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSchemeTaskConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSchemeTaskConfig(_ request: DeleteSchemeTaskConfigRequest) async throws -> DeleteSchemeTaskConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSchemeTaskConfigWithOptions(request as! DeleteSchemeTaskConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSkillGroupConfigWithOptions(_ request: DeleteSkillGroupConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSkillGroupConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSkillGroupConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSkillGroupConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSkillGroupConfig(_ request: DeleteSkillGroupConfigRequest) async throws -> DeleteSkillGroupConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSkillGroupConfigWithOptions(request as! DeleteSkillGroupConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTaskAssignRuleWithOptions(_ request: DeleteTaskAssignRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTaskAssignRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTaskAssignRule",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTaskAssignRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTaskAssignRule(_ request: DeleteTaskAssignRuleRequest) async throws -> DeleteTaskAssignRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTaskAssignRuleWithOptions(request as! DeleteTaskAssignRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWarningConfigWithOptions(_ request: DeleteWarningConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWarningConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWarningConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWarningConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWarningConfig(_ request: DeleteWarningConfigRequest) async throws -> DeleteWarningConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteWarningConfigWithOptions(request as! DeleteWarningConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWarningStrategyConfigWithOptions(_ request: DeleteWarningStrategyConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWarningStrategyConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWarningStrategyConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWarningStrategyConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWarningStrategyConfig(_ request: DeleteWarningStrategyConfigRequest) async throws -> DeleteWarningStrategyConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteWarningStrategyConfigWithOptions(request as! DeleteWarningStrategyConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAsrVocabWithOptions(_ request: GetAsrVocabRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAsrVocabResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAsrVocab",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAsrVocabResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAsrVocab(_ request: GetAsrVocabRequest) async throws -> GetAsrVocabResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAsrVocabWithOptions(request as! GetAsrVocabRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBusinessCategoryListWithOptions(_ request: GetBusinessCategoryListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBusinessCategoryListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBusinessCategoryList",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBusinessCategoryListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBusinessCategoryList(_ request: GetBusinessCategoryListRequest) async throws -> GetBusinessCategoryListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBusinessCategoryListWithOptions(request as! GetBusinessCategoryListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomizationConfigListWithOptions(_ request: GetCustomizationConfigListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomizationConfigListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomizationConfigList",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomizationConfigListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomizationConfigList(_ request: GetCustomizationConfigListRequest) async throws -> GetCustomizationConfigListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCustomizationConfigListWithOptions(request as! GetCustomizationConfigListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMiningTaskResultWithOptions(_ request: GetMiningTaskResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMiningTaskResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMiningTaskResult",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMiningTaskResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMiningTaskResult(_ request: GetMiningTaskResultRequest) async throws -> GetMiningTaskResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMiningTaskResultWithOptions(request as! GetMiningTaskResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNextResultToVerifyWithOptions(_ request: GetNextResultToVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNextResultToVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNextResultToVerify",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNextResultToVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNextResultToVerify(_ request: GetNextResultToVerifyRequest) async throws -> GetNextResultToVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNextResultToVerifyWithOptions(request as! GetNextResultToVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrecisionTaskWithOptions(_ request: GetPrecisionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPrecisionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPrecisionTask",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPrecisionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrecisionTask(_ request: GetPrecisionTaskRequest) async throws -> GetPrecisionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPrecisionTaskWithOptions(request as! GetPrecisionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQualityCheckSchemeWithOptions(_ request: GetQualityCheckSchemeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQualityCheckSchemeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQualityCheckScheme",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQualityCheckSchemeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQualityCheckScheme(_ request: GetQualityCheckSchemeRequest) async throws -> GetQualityCheckSchemeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getQualityCheckSchemeWithOptions(request as! GetQualityCheckSchemeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResultWithOptions(_ request: GetResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResult",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResult(_ request: GetResultRequest) async throws -> GetResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResultWithOptions(request as! GetResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResultToReviewWithOptions(_ request: GetResultToReviewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResultToReviewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResultToReview",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResultToReviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResultToReview(_ request: GetResultToReviewRequest) async throws -> GetResultToReviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResultToReviewWithOptions(request as! GetResultToReviewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuleWithOptions(_ request: GetRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRule",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRule(_ request: GetRuleRequest) async throws -> GetRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRuleWithOptions(request as! GetRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuleByIdWithOptions(_ request: GetRuleByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRuleByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
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
            "action": "GetRuleById",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRuleByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuleById(_ request: GetRuleByIdRequest) async throws -> GetRuleByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRuleByIdWithOptions(request as! GetRuleByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuleCategoryWithOptions(_ request: GetRuleCategoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRuleCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRuleCategory",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRuleCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuleCategory(_ request: GetRuleCategoryRequest) async throws -> GetRuleCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRuleCategoryWithOptions(request as! GetRuleCategoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuleDetailWithOptions(_ request: GetRuleDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRuleDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRuleDetail",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRuleDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuleDetail(_ request: GetRuleDetailRequest) async throws -> GetRuleDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRuleDetailWithOptions(request as! GetRuleDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuleV4WithOptions(_ request: GetRuleV4Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRuleV4Response {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            body["RuleId"] = request.ruleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRuleV4",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRuleV4Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuleV4(_ request: GetRuleV4Request) async throws -> GetRuleV4Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRuleV4WithOptions(request as! GetRuleV4Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRulesCountListWithOptions(_ request: GetRulesCountListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRulesCountListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessName)) {
            body["BusinessName"] = request.businessName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessRange)) {
            body["BusinessRange"] = request.businessRange!;
        }
        if (!TeaUtils.Client.isUnset(request.categoryName)) {
            body["CategoryName"] = request.categoryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countTotal)) {
            body["CountTotal"] = request.countTotal!;
        }
        if (!TeaUtils.Client.isUnset(request.createEmpid)) {
            body["CreateEmpid"] = request.createEmpid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createUserId)) {
            body["CreateUserId"] = request.createUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lastUpdateEmpid)) {
            body["LastUpdateEmpid"] = request.lastUpdateEmpid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.requireInfos)) {
            body["RequireInfos"] = request.requireInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.rid)) {
            body["Rid"] = request.rid!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleIdOrRuleName)) {
            body["RuleIdOrRuleName"] = request.ruleIdOrRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleScoreSingleType)) {
            body["RuleScoreSingleType"] = request.ruleScoreSingleType!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            body["RuleType"] = request.ruleType!;
        }
        if (!TeaUtils.Client.isUnset(request.schemeId)) {
            body["SchemeId"] = request.schemeId!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.typeName)) {
            body["TypeName"] = request.typeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateEndTime)) {
            body["UpdateEndTime"] = request.updateEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStartTime)) {
            body["UpdateStartTime"] = request.updateStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateUserId)) {
            body["UpdateUserId"] = request.updateUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRulesCountList",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRulesCountListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRulesCountList(_ request: GetRulesCountListRequest) async throws -> GetRulesCountListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRulesCountListWithOptions(request as! GetRulesCountListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSchemeTaskConfigWithOptions(_ request: GetSchemeTaskConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSchemeTaskConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSchemeTaskConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSchemeTaskConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSchemeTaskConfig(_ request: GetSchemeTaskConfigRequest) async throws -> GetSchemeTaskConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSchemeTaskConfigWithOptions(request as! GetSchemeTaskConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScoreInfoWithOptions(_ request: GetScoreInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetScoreInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetScoreInfo",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetScoreInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScoreInfo(_ request: GetScoreInfoRequest) async throws -> GetScoreInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getScoreInfoWithOptions(request as! GetScoreInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSkillGroupConfigWithOptions(_ request: GetSkillGroupConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSkillGroupConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSkillGroupConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSkillGroupConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSkillGroupConfig(_ request: GetSkillGroupConfigRequest) async throws -> GetSkillGroupConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSkillGroupConfigWithOptions(request as! GetSkillGroupConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSyncResultWithOptions(_ request: GetSyncResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSyncResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSyncResult",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSyncResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSyncResult(_ request: GetSyncResultRequest) async throws -> GetSyncResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSyncResultWithOptions(request as! GetSyncResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWarningStrategyConfigWithOptions(_ request: GetWarningStrategyConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWarningStrategyConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWarningStrategyConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWarningStrategyConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWarningStrategyConfig(_ request: GetWarningStrategyConfigRequest) async throws -> GetWarningStrategyConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWarningStrategyConfigWithOptions(request as! GetWarningStrategyConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func handleComplaintWithOptions(_ request: HandleComplaintRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> HandleComplaintResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HandleComplaint",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HandleComplaintResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func handleComplaint(_ request: HandleComplaintRequest) async throws -> HandleComplaintResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await handleComplaintWithOptions(request as! HandleComplaintRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invalidRuleWithOptions(_ request: InvalidRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvalidRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvalidRule",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvalidRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invalidRule(_ request: InvalidRuleRequest) async throws -> InvalidRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await invalidRuleWithOptions(request as! InvalidRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAsrVocabWithOptions(_ request: ListAsrVocabRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAsrVocabResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAsrVocab",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAsrVocabResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAsrVocab(_ request: ListAsrVocabRequest) async throws -> ListAsrVocabResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAsrVocabWithOptions(request as! ListAsrVocabRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSetWithOptions(_ request: ListDataSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataSet",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSet(_ request: ListDataSetRequest) async throws -> ListDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataSetWithOptions(request as! ListDataSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrecisionTaskWithOptions(_ request: ListPrecisionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPrecisionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPrecisionTask",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPrecisionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrecisionTask(_ request: ListPrecisionTaskRequest) async throws -> ListPrecisionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPrecisionTaskWithOptions(request as! ListPrecisionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQualityCheckSchemeWithOptions(_ request: ListQualityCheckSchemeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQualityCheckSchemeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQualityCheckScheme",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQualityCheckSchemeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQualityCheckScheme(_ request: ListQualityCheckSchemeRequest) async throws -> ListQualityCheckSchemeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listQualityCheckSchemeWithOptions(request as! ListQualityCheckSchemeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRulesWithOptions(_ request: ListRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRules",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRules(_ request: ListRulesRequest) async throws -> ListRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRulesWithOptions(request as! ListRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRulesV4WithOptions(_ request: ListRulesV4Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRulesV4Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessName)) {
            body["BusinessName"] = request.businessName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessRange)) {
            body["BusinessRange"] = request.businessRange!;
        }
        if (!TeaUtils.Client.isUnset(request.categoryName)) {
            body["CategoryName"] = request.categoryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countTotal)) {
            body["CountTotal"] = request.countTotal!;
        }
        if (!TeaUtils.Client.isUnset(request.createEmpid)) {
            body["CreateEmpid"] = request.createEmpid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createUserId)) {
            body["CreateUserId"] = request.createUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lastUpdateEmpid)) {
            body["LastUpdateEmpid"] = request.lastUpdateEmpid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.requireInfos)) {
            body["RequireInfos"] = request.requireInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.rid)) {
            body["Rid"] = request.rid!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleIdOrRuleName)) {
            body["RuleIdOrRuleName"] = request.ruleIdOrRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleScoreSingleType)) {
            body["RuleScoreSingleType"] = request.ruleScoreSingleType!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            body["RuleType"] = request.ruleType!;
        }
        if (!TeaUtils.Client.isUnset(request.schemeId)) {
            body["SchemeId"] = request.schemeId!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.typeName)) {
            body["TypeName"] = request.typeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateEndTime)) {
            body["UpdateEndTime"] = request.updateEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStartTime)) {
            body["UpdateStartTime"] = request.updateStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateUserId)) {
            body["UpdateUserId"] = request.updateUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRulesV4",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRulesV4Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRulesV4(_ request: ListRulesV4Request) async throws -> ListRulesV4Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRulesV4WithOptions(request as! ListRulesV4Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSchemeTaskConfigWithOptions(_ request: ListSchemeTaskConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSchemeTaskConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSchemeTaskConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSchemeTaskConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSchemeTaskConfig(_ request: ListSchemeTaskConfigRequest) async throws -> ListSchemeTaskConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSchemeTaskConfigWithOptions(request as! ListSchemeTaskConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSessionGroupWithOptions(_ request: ListSessionGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSessionGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSessionGroup",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSessionGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSessionGroup(_ request: ListSessionGroupRequest) async throws -> ListSessionGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSessionGroupWithOptions(request as! ListSessionGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkillGroupConfigWithOptions(_ request: ListSkillGroupConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSkillGroupConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSkillGroupConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSkillGroupConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkillGroupConfig(_ request: ListSkillGroupConfigRequest) async throws -> ListSkillGroupConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSkillGroupConfigWithOptions(request as! ListSkillGroupConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskAssignRulesWithOptions(_ request: ListTaskAssignRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTaskAssignRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTaskAssignRules",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTaskAssignRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskAssignRules(_ request: ListTaskAssignRulesRequest) async throws -> ListTaskAssignRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTaskAssignRulesWithOptions(request as! ListTaskAssignRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersWithOptions(_ request: ListUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsers",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsers(_ request: ListUsersRequest) async throws -> ListUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUsersWithOptions(request as! ListUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWarningConfigWithOptions(_ request: ListWarningConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWarningConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWarningConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWarningConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWarningConfig(_ request: ListWarningConfigRequest) async throws -> ListWarningConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWarningConfigWithOptions(request as! ListWarningConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWarningStrategyConfigWithOptions(_ request: ListWarningStrategyConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWarningStrategyConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWarningStrategyConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWarningStrategyConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWarningStrategyConfig(_ request: ListWarningStrategyConfigRequest) async throws -> ListWarningStrategyConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWarningStrategyConfigWithOptions(request as! ListWarningStrategyConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revertAssignedSessionWithOptions(_ request: RevertAssignedSessionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevertAssignedSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevertAssignedSession",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevertAssignedSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revertAssignedSession(_ request: RevertAssignedSessionRequest) async throws -> RevertAssignedSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revertAssignedSessionWithOptions(request as! RevertAssignedSessionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revertAssignedSessionGroupWithOptions(_ request: RevertAssignedSessionGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevertAssignedSessionGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevertAssignedSessionGroup",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevertAssignedSessionGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revertAssignedSessionGroup(_ request: RevertAssignedSessionGroupRequest) async throws -> RevertAssignedSessionGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revertAssignedSessionGroupWithOptions(request as! RevertAssignedSessionGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveConfigDataSetWithOptions(_ request: SaveConfigDataSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveConfigDataSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveConfigDataSet",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveConfigDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveConfigDataSet(_ request: SaveConfigDataSetRequest) async throws -> SaveConfigDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveConfigDataSetWithOptions(request as! SaveConfigDataSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitComplaintWithOptions(_ request: SubmitComplaintRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitComplaintResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitComplaint",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitComplaintResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitComplaint(_ request: SubmitComplaintRequest) async throws -> SubmitComplaintResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitComplaintWithOptions(request as! SubmitComplaintRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitPrecisionTaskWithOptions(_ request: SubmitPrecisionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitPrecisionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitPrecisionTask",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitPrecisionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitPrecisionTask(_ request: SubmitPrecisionTaskRequest) async throws -> SubmitPrecisionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitPrecisionTaskWithOptions(request as! SubmitPrecisionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitQualityCheckTaskWithOptions(_ request: SubmitQualityCheckTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitQualityCheckTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitQualityCheckTask",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitQualityCheckTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitQualityCheckTask(_ request: SubmitQualityCheckTaskRequest) async throws -> SubmitQualityCheckTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitQualityCheckTaskWithOptions(request as! SubmitQualityCheckTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitReviewInfoWithOptions(_ request: SubmitReviewInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitReviewInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitReviewInfo",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitReviewInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitReviewInfo(_ request: SubmitReviewInfoRequest) async throws -> SubmitReviewInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitReviewInfoWithOptions(request as! SubmitReviewInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitReviewInfoV4WithOptions(_ request: SubmitReviewInfoV4Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitReviewInfoV4Response {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            body["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            body["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitReviewInfoV4",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitReviewInfoV4Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitReviewInfoV4(_ request: SubmitReviewInfoV4Request) async throws -> SubmitReviewInfoV4Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitReviewInfoV4WithOptions(request as! SubmitReviewInfoV4Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncQualityCheckWithOptions(_ request: SyncQualityCheckRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncQualityCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncQualityCheck",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncQualityCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncQualityCheck(_ request: SyncQualityCheckRequest) async throws -> SyncQualityCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await syncQualityCheckWithOptions(request as! SyncQualityCheckRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func testRuleV4WithOptions(_ request: TestRuleV4Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> TestRuleV4Response {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isSchemeData)) {
            body["IsSchemeData"] = request.isSchemeData!;
        }
        if (!TeaUtils.Client.isUnset(request.testJson)) {
            body["TestJson"] = request.testJson ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TestRuleV4",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TestRuleV4Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func testRuleV4(_ request: TestRuleV4Request) async throws -> TestRuleV4Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await testRuleV4WithOptions(request as! TestRuleV4Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAsrVocabWithOptions(_ request: UpdateAsrVocabRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAsrVocabResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAsrVocab",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAsrVocabResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAsrVocab(_ request: UpdateAsrVocabRequest) async throws -> UpdateAsrVocabResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAsrVocabWithOptions(request as! UpdateAsrVocabRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCheckTypeToSchemeWithOptions(_ request: UpdateCheckTypeToSchemeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCheckTypeToSchemeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCheckTypeToScheme",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCheckTypeToSchemeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCheckTypeToScheme(_ request: UpdateCheckTypeToSchemeRequest) async throws -> UpdateCheckTypeToSchemeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateCheckTypeToSchemeWithOptions(request as! UpdateCheckTypeToSchemeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQualityCheckDataWithOptions(_ request: UpdateQualityCheckDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateQualityCheckDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateQualityCheckData",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateQualityCheckDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQualityCheckData(_ request: UpdateQualityCheckDataRequest) async throws -> UpdateQualityCheckDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateQualityCheckDataWithOptions(request as! UpdateQualityCheckDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQualityCheckSchemeWithOptions(_ request: UpdateQualityCheckSchemeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateQualityCheckSchemeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateQualityCheckScheme",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateQualityCheckSchemeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQualityCheckScheme(_ request: UpdateQualityCheckSchemeRequest) async throws -> UpdateQualityCheckSchemeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateQualityCheckSchemeWithOptions(request as! UpdateQualityCheckSchemeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRuleWithOptions(_ request: UpdateRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRule",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRule(_ request: UpdateRuleRequest) async throws -> UpdateRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRuleWithOptions(request as! UpdateRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRuleByIdWithOptions(_ request: UpdateRuleByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRuleByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isCopy)) {
            body["IsCopy"] = request.isCopy!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStrForRule)) {
            body["JsonStrForRule"] = request.jsonStrForRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnRelatedSchemes)) {
            body["ReturnRelatedSchemes"] = request.returnRelatedSchemes!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            body["RuleId"] = request.ruleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRuleById",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRuleByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRuleById(_ request: UpdateRuleByIdRequest) async throws -> UpdateRuleByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRuleByIdWithOptions(request as! UpdateRuleByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRuleToSchemeWithOptions(_ request: UpdateRuleToSchemeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRuleToSchemeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRuleToScheme",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRuleToSchemeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRuleToScheme(_ request: UpdateRuleToSchemeRequest) async throws -> UpdateRuleToSchemeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRuleToSchemeWithOptions(request as! UpdateRuleToSchemeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRuleV4WithOptions(_ request: UpdateRuleV4Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRuleV4Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jsonStrForRule)) {
            body["JsonStrForRule"] = request.jsonStrForRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            body["RuleId"] = request.ruleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRuleV4",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRuleV4Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRuleV4(_ request: UpdateRuleV4Request) async throws -> UpdateRuleV4Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRuleV4WithOptions(request as! UpdateRuleV4Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSchemeTaskConfigWithOptions(_ request: UpdateSchemeTaskConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSchemeTaskConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["jsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSchemeTaskConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSchemeTaskConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSchemeTaskConfig(_ request: UpdateSchemeTaskConfigRequest) async throws -> UpdateSchemeTaskConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSchemeTaskConfigWithOptions(request as! UpdateSchemeTaskConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSkillGroupConfigWithOptions(_ request: UpdateSkillGroupConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSkillGroupConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSkillGroupConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSkillGroupConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSkillGroupConfig(_ request: UpdateSkillGroupConfigRequest) async throws -> UpdateSkillGroupConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSkillGroupConfigWithOptions(request as! UpdateSkillGroupConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSyncQualityCheckDataWithOptions(_ request: UpdateSyncQualityCheckDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSyncQualityCheckDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSyncQualityCheckData",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSyncQualityCheckDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSyncQualityCheckData(_ request: UpdateSyncQualityCheckDataRequest) async throws -> UpdateSyncQualityCheckDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSyncQualityCheckDataWithOptions(request as! UpdateSyncQualityCheckDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskAssignRuleWithOptions(_ request: UpdateTaskAssignRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskAssignRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskAssignRule",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskAssignRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskAssignRule(_ request: UpdateTaskAssignRuleRequest) async throws -> UpdateTaskAssignRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTaskAssignRuleWithOptions(request as! UpdateTaskAssignRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserWithOptions(_ request: UpdateUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUser",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUser(_ request: UpdateUserRequest) async throws -> UpdateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUserWithOptions(request as! UpdateUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWarningConfigWithOptions(_ request: UpdateWarningConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWarningConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWarningConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWarningConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWarningConfig(_ request: UpdateWarningConfigRequest) async throws -> UpdateWarningConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWarningConfigWithOptions(request as! UpdateWarningConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWarningStrategyConfigWithOptions(_ request: UpdateWarningStrategyConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWarningStrategyConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWarningStrategyConfig",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWarningStrategyConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWarningStrategyConfig(_ request: UpdateWarningStrategyConfigRequest) async throws -> UpdateWarningStrategyConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWarningStrategyConfigWithOptions(request as! UpdateWarningStrategyConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadAudioDataWithOptions(_ request: UploadAudioDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadAudioDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadAudioData",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadAudioDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadAudioData(_ request: UploadAudioDataRequest) async throws -> UploadAudioDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadAudioDataWithOptions(request as! UploadAudioDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadDataWithOptions(_ request: UploadDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadData",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadData(_ request: UploadDataRequest) async throws -> UploadDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadDataWithOptions(request as! UploadDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadDataSyncWithOptions(_ request: UploadDataSyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadDataSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadDataSync",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadDataSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadDataSync(_ request: UploadDataSyncRequest) async throws -> UploadDataSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadDataSyncWithOptions(request as! UploadDataSyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadDataSyncForLLMWithOptions(_ request: UploadDataSyncForLLMRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadDataSyncForLLMResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadDataSyncForLLM",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadDataSyncForLLMResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadDataSyncForLLM(_ request: UploadDataSyncForLLMRequest) async throws -> UploadDataSyncForLLMResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadDataSyncForLLMWithOptions(request as! UploadDataSyncForLLMRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadDataV4WithOptions(_ request: UploadDataV4Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadDataV4Response {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            body["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            body["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadDataV4",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadDataV4Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadDataV4(_ request: UploadDataV4Request) async throws -> UploadDataV4Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadDataV4WithOptions(request as! UploadDataV4Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadRuleWithOptions(_ request: UploadRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadRule",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadRule(_ request: UploadRuleRequest) async throws -> UploadRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadRuleWithOptions(request as! UploadRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyFileWithOptions(_ request: VerifyFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyFile",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyFile(_ request: VerifyFileRequest) async throws -> VerifyFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyFileWithOptions(request as! VerifyFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifySentenceWithOptions(_ request: VerifySentenceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifySentenceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseMeAgentId)) {
            query["BaseMeAgentId"] = request.baseMeAgentId!;
        }
        if (!TeaUtils.Client.isUnset(request.jsonStr)) {
            query["JsonStr"] = request.jsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifySentence",
            "version": "2019-01-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifySentenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifySentence(_ request: VerifySentenceRequest) async throws -> VerifySentenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifySentenceWithOptions(request as! VerifySentenceRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
