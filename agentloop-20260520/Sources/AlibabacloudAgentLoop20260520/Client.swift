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
            "cn-zhangjiakou": "agentloop.cn-zhangjiakou.aliyuncs.com",
            "cn-shenzhen": "agentloop.cn-shenzhen.aliyuncs.com",
            "cn-shanghai": "agentloop.cn-shanghai.aliyuncs.com",
            "cn-hongkong": "agentloop.cn-hongkong.aliyuncs.com",
            "cn-hangzhou": "agentloop.cn-hangzhou.aliyuncs.com",
            "cn-guangzhou": "agentloop.cn-guangzhou.aliyuncs.com",
            "cn-chengdu": "agentloop.cn-chengdu.aliyuncs.com",
            "cn-beijing": "agentloop.cn-beijing.aliyuncs.com",
            "ap-southeast-1": "agentloop.ap-southeast-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("agentloop", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addDatasetDataWithOptions(_ agentSpace: String, _ datasetName: String, _ request: AddDatasetDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDatasetDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataArray)) {
            body["dataArray"] = request.dataArray ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDatasetData",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/dataset/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(datasetName)) + "/rows",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDatasetDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDatasetData(_ agentSpace: String, _ datasetName: String, _ request: AddDatasetDataRequest) async throws -> AddDatasetDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addDatasetDataWithOptions(agentSpace as! String, datasetName as! String, request as! AddDatasetDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelPipelineRunWithOptions(_ agentSpace: String, _ pipelineName: String, _ runId: String, _ request: CancelPipelineRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelPipelineRunResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelPipelineRun",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineName)) + "/runs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(runId)) + "/cancel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelPipelineRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelPipelineRun(_ agentSpace: String, _ pipelineName: String, _ runId: String, _ request: CancelPipelineRunRequest) async throws -> CancelPipelineRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelPipelineRunWithOptions(agentSpace as! String, pipelineName as! String, runId as! String, request as! CancelPipelineRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAgentSpaceWithOptions(_ request: CreateAgentSpaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAgentSpaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            body["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cmsWorkspace)) {
            body["cmsWorkspace"] = request.cmsWorkspace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trajectoryStoreEnabled)) {
            body["trajectoryStoreEnabled"] = request.trajectoryStoreEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAgentSpace",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAgentSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAgentSpace(_ request: CreateAgentSpaceRequest) async throws -> CreateAgentSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAgentSpaceWithOptions(request as! CreateAgentSpaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createContextStoreWithOptions(_ agentSpace: String, _ request: CreateContextStoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateContextStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config!;
        }
        if (!TeaUtils.Client.isUnset(request.contextStoreName)) {
            body["contextStoreName"] = request.contextStoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contextType)) {
            body["contextType"] = request.contextType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateContextStore",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/contextstore",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateContextStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createContextStore(_ agentSpace: String, _ request: CreateContextStoreRequest) async throws -> CreateContextStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createContextStoreWithOptions(agentSpace as! String, request as! CreateContextStoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createContextStoreAPIKeyWithOptions(_ agentSpace: String, _ contextStoreName: String, _ request: CreateContextStoreAPIKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateContextStoreAPIKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateContextStoreAPIKey",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/contextstore/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(contextStoreName)) + "/apikey",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateContextStoreAPIKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createContextStoreAPIKey(_ agentSpace: String, _ contextStoreName: String, _ request: CreateContextStoreAPIKeyRequest) async throws -> CreateContextStoreAPIKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createContextStoreAPIKeyWithOptions(agentSpace as! String, contextStoreName as! String, request as! CreateContextStoreAPIKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetWithOptions(_ agentSpace: String, _ request: CreateDatasetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            body["datasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            body["schema"] = request.schema ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataset",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/dataset",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataset(_ agentSpace: String, _ request: CreateDatasetRequest) async throws -> CreateDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDatasetWithOptions(agentSpace as! String, request as! CreateDatasetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEvaluationTaskWithOptions(_ agentSpace: String, _ request: CreateEvaluationTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEvaluationTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.dataFilter)) {
            body["dataFilter"] = request.dataFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            body["dataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.evaluators)) {
            body["evaluators"] = request.evaluators ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.runStrategies)) {
            body["runStrategies"] = request.runStrategies!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.taskMode)) {
            body["taskMode"] = request.taskMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["taskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEvaluationTask",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluation-task/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEvaluationTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEvaluationTask(_ agentSpace: String, _ request: CreateEvaluationTaskRequest) async throws -> CreateEvaluationTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createEvaluationTaskWithOptions(agentSpace as! String, request as! CreateEvaluationTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEvaluatorWithOptions(_ agentSpace: String, _ request: CreateEvaluatorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEvaluatorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.annotations)) {
            body["annotations"] = request.annotations ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricName)) {
            body["metricName"] = request.metricName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.properties)) {
            body["properties"] = request.properties ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionDescription)) {
            body["versionDescription"] = request.versionDescription ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEvaluator",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluators/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEvaluatorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEvaluator(_ agentSpace: String, _ request: CreateEvaluatorRequest) async throws -> CreateEvaluatorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createEvaluatorWithOptions(agentSpace as! String, request as! CreateEvaluatorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEvaluatorSkillWithOptions(_ name: String, _ request: CreateEvaluatorSkillRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEvaluatorSkillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enable)) {
            body["enable"] = request.enable!;
        }
        if (!TeaUtils.Client.isUnset(request.files)) {
            body["files"] = request.files ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            body["skillName"] = request.skillName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEvaluatorSkill",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluator/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)) + "/skill",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEvaluatorSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEvaluatorSkill(_ name: String, _ request: CreateEvaluatorSkillRequest) async throws -> CreateEvaluatorSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createEvaluatorSkillWithOptions(name as! String, request as! CreateEvaluatorSkillRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExperimentPlanWithOptions(_ agentSpace: String, _ request: CreateExperimentPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateExperimentPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            body["datasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.evaluators)) {
            body["evaluators"] = request.evaluators ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.experimentType)) {
            body["experimentType"] = request.experimentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.experiments)) {
            body["experiments"] = request.experiments ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["input"] = request.input ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.planName)) {
            body["planName"] = request.planName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.querySql)) {
            body["querySql"] = request.querySql ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selectedItemIds)) {
            body["selectedItemIds"] = request.selectedItemIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateExperimentPlan",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/plans",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateExperimentPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExperimentPlan(_ agentSpace: String, _ request: CreateExperimentPlanRequest) async throws -> CreateExperimentPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createExperimentPlanWithOptions(agentSpace as! String, request as! CreateExperimentPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExperimentRunWithOptions(_ agentSpace: String, _ request: CreateExperimentRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateExperimentRunResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.completedAt)) {
            body["completedAt"] = request.completedAt!;
        }
        if (!TeaUtils.Client.isUnset(request.completedTasks)) {
            body["completedTasks"] = request.completedTasks!;
        }
        if (!TeaUtils.Client.isUnset(request.executedAt)) {
            body["executedAt"] = request.executedAt!;
        }
        if (!TeaUtils.Client.isUnset(request.experimentPlanId)) {
            body["experimentPlanId"] = request.experimentPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.failedTasks)) {
            body["failedTasks"] = request.failedTasks!;
        }
        if (!TeaUtils.Client.isUnset(request.offlineExperiments)) {
            body["offlineExperiments"] = request.offlineExperiments ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.recordName)) {
            body["recordName"] = request.recordName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalTasks)) {
            body["totalTasks"] = request.totalTasks!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateExperimentRun",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentruns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/execute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateExperimentRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExperimentRun(_ agentSpace: String, _ request: CreateExperimentRunRequest) async throws -> CreateExperimentRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createExperimentRunWithOptions(agentSpace as! String, request as! CreateExperimentRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPipelineWithOptions(_ agentSpace: String, _ request: CreatePipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executePolicy)) {
            body["executePolicy"] = request.executePolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.pipeline)) {
            body["pipeline"] = request.pipeline!;
        }
        if (!TeaUtils.Client.isUnset(request.pipelineName)) {
            body["pipelineName"] = request.pipelineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sink)) {
            body["sink"] = request.sink!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["source"] = request.source!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePipeline",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPipeline(_ agentSpace: String, _ request: CreatePipelineRequest) async throws -> CreatePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPipelineWithOptions(agentSpace as! String, request as! CreatePipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAgentSpaceWithOptions(_ agentSpace: String, _ request: DeleteAgentSpaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAgentSpaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteCmsWorkspace)) {
            query["deleteCmsWorkspace"] = request.deleteCmsWorkspace!;
        }
        if (!TeaUtils.Client.isUnset(request.deleteMseNamespace)) {
            query["deleteMseNamespace"] = request.deleteMseNamespace!;
        }
        if (!TeaUtils.Client.isUnset(request.deleteSlsProject)) {
            query["deleteSlsProject"] = request.deleteSlsProject!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAgentSpace",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAgentSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAgentSpace(_ agentSpace: String, _ request: DeleteAgentSpaceRequest) async throws -> DeleteAgentSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAgentSpaceWithOptions(agentSpace as! String, request as! DeleteAgentSpaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteContextStoreWithOptions(_ agentSpace: String, _ contextStoreName: String, _ request: DeleteContextStoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteContextStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteContextStore",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/contextstore/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(contextStoreName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteContextStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteContextStore(_ agentSpace: String, _ contextStoreName: String, _ request: DeleteContextStoreRequest) async throws -> DeleteContextStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteContextStoreWithOptions(agentSpace as! String, contextStoreName as! String, request as! DeleteContextStoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteContextStoreAPIKeyWithOptions(_ agentSpace: String, _ contextStoreName: String, _ name: String, _ request: DeleteContextStoreAPIKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteContextStoreAPIKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteContextStoreAPIKey",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/contextstore/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(contextStoreName)) + "/apikey/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteContextStoreAPIKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteContextStoreAPIKey(_ agentSpace: String, _ contextStoreName: String, _ name: String, _ request: DeleteContextStoreAPIKeyRequest) async throws -> DeleteContextStoreAPIKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteContextStoreAPIKeyWithOptions(agentSpace as! String, contextStoreName as! String, name as! String, request as! DeleteContextStoreAPIKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetWithOptions(_ agentSpace: String, _ datasetName: String, _ request: DeleteDatasetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataset",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/dataset/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(datasetName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataset(_ agentSpace: String, _ datasetName: String, _ request: DeleteDatasetRequest) async throws -> DeleteDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDatasetWithOptions(agentSpace as! String, datasetName as! String, request as! DeleteDatasetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEvaluationRunWithOptions(_ agentSpace: String, _ taskId: String, _ runId: String, _ request: DeleteEvaluationRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEvaluationRunResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEvaluationRun",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluation-task/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)) + "/run/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(runId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEvaluationRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEvaluationRun(_ agentSpace: String, _ taskId: String, _ runId: String, _ request: DeleteEvaluationRunRequest) async throws -> DeleteEvaluationRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEvaluationRunWithOptions(agentSpace as! String, taskId as! String, runId as! String, request as! DeleteEvaluationRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEvaluationTaskWithOptions(_ agentSpace: String, _ taskId: String, _ request: DeleteEvaluationTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEvaluationTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEvaluationTask",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluation-task/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEvaluationTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEvaluationTask(_ agentSpace: String, _ taskId: String, _ request: DeleteEvaluationTaskRequest) async throws -> DeleteEvaluationTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEvaluationTaskWithOptions(agentSpace as! String, taskId as! String, request as! DeleteEvaluationTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEvaluatorWithOptions(_ agentSpace: String, _ name: String, _ request: DeleteEvaluatorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEvaluatorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEvaluator",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluators/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEvaluatorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEvaluator(_ agentSpace: String, _ name: String, _ request: DeleteEvaluatorRequest) async throws -> DeleteEvaluatorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEvaluatorWithOptions(agentSpace as! String, name as! String, request as! DeleteEvaluatorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEvaluatorSkillWithOptions(_ name: String, _ skillName: String, _ request: DeleteEvaluatorSkillRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEvaluatorSkillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEvaluatorSkill",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluator/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)) + "/skill/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(skillName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEvaluatorSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEvaluatorSkill(_ name: String, _ skillName: String, _ request: DeleteEvaluatorSkillRequest) async throws -> DeleteEvaluatorSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEvaluatorSkillWithOptions(name as! String, skillName as! String, request as! DeleteEvaluatorSkillRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExperimentPlanWithOptions(_ agentSpace: String, _ planId: String, _ request: DeleteExperimentPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteExperimentPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteExperimentPlan",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/plans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(planId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteExperimentPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExperimentPlan(_ agentSpace: String, _ planId: String, _ request: DeleteExperimentPlanRequest) async throws -> DeleteExperimentPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteExperimentPlanWithOptions(agentSpace as! String, planId as! String, request as! DeleteExperimentPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExperimentRunWithOptions(_ agentSpace: String, _ recordId: String, _ request: DeleteExperimentRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteExperimentRunResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteExperimentRun",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentruns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/records/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(recordId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteExperimentRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExperimentRun(_ agentSpace: String, _ recordId: String, _ request: DeleteExperimentRunRequest) async throws -> DeleteExperimentRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteExperimentRunWithOptions(agentSpace as! String, recordId as! String, request as! DeleteExperimentRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePipelineWithOptions(_ agentSpace: String, _ pipelineName: String, _ request: DeletePipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePipeline",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePipeline(_ agentSpace: String, _ pipelineName: String, _ request: DeletePipelineRequest) async throws -> DeletePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePipelineWithOptions(agentSpace as! String, pipelineName as! String, request as! DeletePipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/regions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegions(_ request: DescribeRegionsRequest) async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeRegionsWithOptions(request as! DescribeRegionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeQueryWithOptions(_ agentSpace: String, _ datasetName: String, _ request: ExecuteQueryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.from)) {
            body["from"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.length)) {
            body["length"] = request.length!;
        }
        if (!TeaUtils.Client.isUnset(request.maxOutputLength)) {
            body["maxOutputLength"] = request.maxOutputLength!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            body["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            body["to"] = request.to!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteQuery",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/dataset/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(datasetName)) + "/query",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeQuery(_ agentSpace: String, _ datasetName: String, _ request: ExecuteQueryRequest) async throws -> ExecuteQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeQueryWithOptions(agentSpace as! String, datasetName as! String, request as! ExecuteQueryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgentSpaceWithOptions(_ agentSpace: String, _ request: GetAgentSpaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAgentSpaceResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAgentSpace",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAgentSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgentSpace(_ agentSpace: String, _ request: GetAgentSpaceRequest) async throws -> GetAgentSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAgentSpaceWithOptions(agentSpace as! String, request as! GetAgentSpaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getContextStoreWithOptions(_ agentSpace: String, _ contextStoreName: String, _ request: GetContextStoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetContextStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetContextStore",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/contextstore/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(contextStoreName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetContextStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getContextStore(_ agentSpace: String, _ contextStoreName: String, _ request: GetContextStoreRequest) async throws -> GetContextStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getContextStoreWithOptions(agentSpace as! String, contextStoreName as! String, request as! GetContextStoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getContextStoreAPIKeyWithOptions(_ agentSpace: String, _ contextStoreName: String, _ name: String, _ request: GetContextStoreAPIKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetContextStoreAPIKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetContextStoreAPIKey",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/contextstore/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(contextStoreName)) + "/apikey/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetContextStoreAPIKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getContextStoreAPIKey(_ agentSpace: String, _ contextStoreName: String, _ name: String, _ request: GetContextStoreAPIKeyRequest) async throws -> GetContextStoreAPIKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getContextStoreAPIKeyWithOptions(agentSpace as! String, contextStoreName as! String, name as! String, request as! GetContextStoreAPIKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetWithOptions(_ agentSpace: String, _ datasetName: String, _ request: GetDatasetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataset",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/dataset/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(datasetName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataset(_ agentSpace: String, _ datasetName: String, _ request: GetDatasetRequest) async throws -> GetDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDatasetWithOptions(agentSpace as! String, datasetName as! String, request as! GetDatasetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEvaluationRunWithOptions(_ agentSpace: String, _ taskId: String, _ runId: String, _ request: GetEvaluationRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEvaluationRunResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEvaluationRun",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluation-task/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)) + "/run/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(runId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEvaluationRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEvaluationRun(_ agentSpace: String, _ taskId: String, _ runId: String, _ request: GetEvaluationRunRequest) async throws -> GetEvaluationRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEvaluationRunWithOptions(agentSpace as! String, taskId as! String, runId as! String, request as! GetEvaluationRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEvaluationTaskWithOptions(_ agentSpace: String, _ taskId: String, _ request: GetEvaluationTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEvaluationTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEvaluationTask",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluation-task/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEvaluationTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEvaluationTask(_ agentSpace: String, _ taskId: String, _ request: GetEvaluationTaskRequest) async throws -> GetEvaluationTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEvaluationTaskWithOptions(agentSpace as! String, taskId as! String, request as! GetEvaluationTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEvaluatorWithOptions(_ agentSpace: String, _ name: String, _ request: GetEvaluatorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEvaluatorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEvaluator",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluators/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEvaluatorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEvaluator(_ agentSpace: String, _ name: String, _ request: GetEvaluatorRequest) async throws -> GetEvaluatorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEvaluatorWithOptions(agentSpace as! String, name as! String, request as! GetEvaluatorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEvaluatorSkillWithOptions(_ name: String, _ skillName: String, _ request: GetEvaluatorSkillRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEvaluatorSkillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEvaluatorSkill",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluator/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)) + "/skill/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(skillName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEvaluatorSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEvaluatorSkill(_ name: String, _ skillName: String, _ request: GetEvaluatorSkillRequest) async throws -> GetEvaluatorSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEvaluatorSkillWithOptions(name as! String, skillName as! String, request as! GetEvaluatorSkillRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExperimentPlanWithOptions(_ agentSpace: String, _ planId: String, _ request: GetExperimentPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetExperimentPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetExperimentPlan",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/plans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(planId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetExperimentPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExperimentPlan(_ agentSpace: String, _ planId: String, _ request: GetExperimentPlanRequest) async throws -> GetExperimentPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getExperimentPlanWithOptions(agentSpace as! String, planId as! String, request as! GetExperimentPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExperimentRunWithOptions(_ agentSpace: String, _ recordId: String, _ request: GetExperimentRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetExperimentRunResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetExperimentRun",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentruns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/records/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(recordId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetExperimentRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExperimentRun(_ agentSpace: String, _ recordId: String, _ request: GetExperimentRunRequest) async throws -> GetExperimentRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getExperimentRunWithOptions(agentSpace as! String, recordId as! String, request as! GetExperimentRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineWithOptions(_ agentSpace: String, _ pipelineName: String, _ request: GetPipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPipeline",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipeline(_ agentSpace: String, _ pipelineName: String, _ request: GetPipelineRequest) async throws -> GetPipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPipelineWithOptions(agentSpace as! String, pipelineName as! String, request as! GetPipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineRunWithOptions(_ agentSpace: String, _ pipelineName: String, _ runId: String, _ request: GetPipelineRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPipelineRunResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPipelineRun",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineName)) + "/runs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(runId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPipelineRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineRun(_ agentSpace: String, _ pipelineName: String, _ runId: String, _ request: GetPipelineRunRequest) async throws -> GetPipelineRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPipelineRunWithOptions(agentSpace as! String, pipelineName as! String, runId as! String, request as! GetPipelineRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineStatsWithOptions(_ agentSpace: String, _ pipelineName: String, _ request: GetPipelineStatsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPipelineStatsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.granularity)) {
            query["granularity"] = request.granularity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPipelineStats",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineName)) + "/stats",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPipelineStatsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineStats(_ agentSpace: String, _ pipelineName: String, _ request: GetPipelineStatsRequest) async throws -> GetPipelineStatsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPipelineStatsWithOptions(agentSpace as! String, pipelineName as! String, request as! GetPipelineStatsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAgentSpacesWithOptions(_ request: ListAgentSpacesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAgentSpacesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAgentSpaces",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAgentSpacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAgentSpaces(_ request: ListAgentSpacesRequest) async throws -> ListAgentSpacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAgentSpacesWithOptions(request as! ListAgentSpacesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listContextStoreAPIKeysWithOptions(_ agentSpace: String, _ contextStoreName: String, _ request: ListContextStoreAPIKeysRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListContextStoreAPIKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListContextStoreAPIKeys",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/contextstore/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(contextStoreName)) + "/apikey",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListContextStoreAPIKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listContextStoreAPIKeys(_ agentSpace: String, _ contextStoreName: String, _ request: ListContextStoreAPIKeysRequest) async throws -> ListContextStoreAPIKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listContextStoreAPIKeysWithOptions(agentSpace as! String, contextStoreName as! String, request as! ListContextStoreAPIKeysRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listContextStoresWithOptions(_ agentSpace: String, _ request: ListContextStoresRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListContextStoresResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contextStoreName)) {
            query["contextStoreName"] = request.contextStoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contextType)) {
            query["contextType"] = request.contextType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListContextStores",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/contextstore",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListContextStoresResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listContextStores(_ agentSpace: String, _ request: ListContextStoresRequest) async throws -> ListContextStoresResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listContextStoresWithOptions(agentSpace as! String, request as! ListContextStoresRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasetsWithOptions(_ agentSpace: String, _ request: ListDatasetsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatasetsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["datasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatasets",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/dataset",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatasetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasets(_ agentSpace: String, _ request: ListDatasetsRequest) async throws -> ListDatasetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDatasetsWithOptions(agentSpace as! String, request as! ListDatasetsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEvaluationRunsWithOptions(_ agentSpace: String, _ taskId: String, _ request: ListEvaluationRunsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEvaluationRunsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runType)) {
            query["runType"] = request.runType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEvaluationRuns",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluation-task/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)) + "/runs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEvaluationRunsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEvaluationRuns(_ agentSpace: String, _ taskId: String, _ request: ListEvaluationRunsRequest) async throws -> ListEvaluationRunsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEvaluationRunsWithOptions(agentSpace as! String, taskId as! String, request as! ListEvaluationRunsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEvaluationTasksWithOptions(_ request: ListEvaluationTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEvaluationTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["dataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskMode)) {
            query["taskMode"] = request.taskMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["taskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEvaluationTasks",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluation-tasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEvaluationTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEvaluationTasks(_ request: ListEvaluationTasksRequest) async throws -> ListEvaluationTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEvaluationTasksWithOptions(request as! ListEvaluationTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEvaluatorSkillsWithOptions(_ name: String, _ request: ListEvaluatorSkillsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEvaluatorSkillsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEvaluatorSkills",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluator/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)) + "/skills",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEvaluatorSkillsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEvaluatorSkills(_ name: String, _ request: ListEvaluatorSkillsRequest) async throws -> ListEvaluatorSkillsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEvaluatorSkillsWithOptions(name as! String, request as! ListEvaluatorSkillsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEvaluatorsWithOptions(_ request: ListEvaluatorsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEvaluatorsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEvaluators",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluators",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEvaluatorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEvaluators(_ request: ListEvaluatorsRequest) async throws -> ListEvaluatorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEvaluatorsWithOptions(request as! ListEvaluatorsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExperimentPlansWithOptions(_ agentSpace: String, _ request: ListExperimentPlansRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListExperimentPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.planName)) {
            query["planName"] = request.planName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListExperimentPlans",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/plans",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListExperimentPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExperimentPlans(_ agentSpace: String, _ request: ListExperimentPlansRequest) async throws -> ListExperimentPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listExperimentPlansWithOptions(agentSpace as! String, request as! ListExperimentPlansRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExperimentRunsWithOptions(_ agentSpace: String, _ request: ListExperimentRunsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListExperimentRunsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["datasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.experimentName)) {
            query["experimentName"] = request.experimentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.planName)) {
            query["planName"] = request.planName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListExperimentRuns",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentruns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/records",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListExperimentRunsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExperimentRuns(_ agentSpace: String, _ request: ListExperimentRunsRequest) async throws -> ListExperimentRunsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listExperimentRunsWithOptions(agentSpace as! String, request as! ListExperimentRunsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineRunsWithOptions(_ agentSpace: String, _ pipelineName: String, _ request: ListPipelineRunsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPipelineRunsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerType)) {
            query["triggerType"] = request.triggerType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPipelineRuns",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineName)) + "/runs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPipelineRunsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineRuns(_ agentSpace: String, _ pipelineName: String, _ request: ListPipelineRunsRequest) async throws -> ListPipelineRunsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPipelineRunsWithOptions(agentSpace as! String, pipelineName as! String, request as! ListPipelineRunsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelinesWithOptions(_ agentSpace: String, _ request: ListPipelinesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPipelinesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pipelineName)) {
            query["pipelineName"] = request.pipelineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleStatus)) {
            query["scheduleStatus"] = request.scheduleStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleType)) {
            query["scheduleType"] = request.scheduleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPipelines",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPipelinesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelines(_ agentSpace: String, _ request: ListPipelinesRequest) async throws -> ListPipelinesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPipelinesWithOptions(agentSpace as! String, request as! ListPipelinesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pausePipelineWithOptions(_ agentSpace: String, _ pipelineName: String, _ request: PausePipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PausePipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["reason"] = request.reason ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PausePipeline",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineName)) + "/pause",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PausePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pausePipeline(_ agentSpace: String, _ pipelineName: String, _ request: PausePipelineRequest) async throws -> PausePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await pausePipelineWithOptions(agentSpace as! String, pipelineName as! String, request as! PausePipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func previewPipelineWithOptions(_ agentSpace: String, _ request: PreviewPipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PreviewPipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fromTime)) {
            body["fromTime"] = request.fromTime!;
        }
        if (!TeaUtils.Client.isUnset(request.pipeline)) {
            body["pipeline"] = request.pipeline!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["source"] = request.source!;
        }
        if (!TeaUtils.Client.isUnset(request.toTime)) {
            body["toTime"] = request.toTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PreviewPipeline",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline/preview",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PreviewPipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func previewPipeline(_ agentSpace: String, _ request: PreviewPipelineRequest) async throws -> PreviewPipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await previewPipelineWithOptions(agentSpace as! String, request as! PreviewPipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumePipelineWithOptions(_ agentSpace: String, _ pipelineName: String, _ request: ResumePipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumePipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumePipeline",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineName)) + "/resume",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumePipeline(_ agentSpace: String, _ pipelineName: String, _ request: ResumePipelineRequest) async throws -> ResumePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resumePipelineWithOptions(agentSpace as! String, pipelineName as! String, request as! ResumePipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runPipelineWithOptions(_ agentSpace: String, _ pipelineName: String, _ request: RunPipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunPipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fromTime)) {
            body["fromTime"] = request.fromTime!;
        }
        if (!TeaUtils.Client.isUnset(request.output)) {
            body["output"] = request.output!;
        }
        if (!TeaUtils.Client.isUnset(request.toTime)) {
            body["toTime"] = request.toTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunPipeline",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineName)) + "/run",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunPipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runPipeline(_ agentSpace: String, _ pipelineName: String, _ request: RunPipelineRequest) async throws -> RunPipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runPipelineWithOptions(agentSpace as! String, pipelineName as! String, request as! RunPipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchContextWithOptions(_ agentSpace: String, _ contextStoreName: String, _ request: SearchContextRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchContextResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filter)) {
            body["filter"] = request.filter ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.formatted)) {
            body["formatted"] = request.formatted!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retrievalOption)) {
            body["retrievalOption"] = request.retrievalOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threshold)) {
            body["threshold"] = request.threshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchContext",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/contextstore/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(contextStoreName)) + "/context/search",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchContextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchContext(_ agentSpace: String, _ contextStoreName: String, _ request: SearchContextRequest) async throws -> SearchContextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await searchContextWithOptions(agentSpace as! String, contextStoreName as! String, request as! SearchContextRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func terminatePipelineWithOptions(_ agentSpace: String, _ pipelineName: String, _ request: TerminatePipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TerminatePipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["reason"] = request.reason ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TerminatePipeline",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineName)) + "/terminate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TerminatePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func terminatePipeline(_ agentSpace: String, _ pipelineName: String, _ request: TerminatePipelineRequest) async throws -> TerminatePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await terminatePipelineWithOptions(agentSpace as! String, pipelineName as! String, request as! TerminatePipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgentSpaceWithOptions(_ agentSpace: String, _ request: UpdateAgentSpaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAgentSpaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cmsWorkspace)) {
            body["cmsWorkspace"] = request.cmsWorkspace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAgentSpace",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAgentSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgentSpace(_ agentSpace: String, _ request: UpdateAgentSpaceRequest) async throws -> UpdateAgentSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAgentSpaceWithOptions(agentSpace as! String, request as! UpdateAgentSpaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateContextStoreWithOptions(_ agentSpace: String, _ contextStoreName: String, _ request: UpdateContextStoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateContextStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config!;
        }
        if (!TeaUtils.Client.isUnset(request.contextType)) {
            body["contextType"] = request.contextType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateContextStore",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/contextstore/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(contextStoreName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateContextStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateContextStore(_ agentSpace: String, _ contextStoreName: String, _ request: UpdateContextStoreRequest) async throws -> UpdateContextStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateContextStoreWithOptions(agentSpace as! String, contextStoreName as! String, request as! UpdateContextStoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatasetWithOptions(_ agentSpace: String, _ datasetName: String, _ request: UpdateDatasetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            body["schema"] = request.schema ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataset",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/dataset/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(datasetName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataset(_ agentSpace: String, _ datasetName: String, _ request: UpdateDatasetRequest) async throws -> UpdateDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDatasetWithOptions(agentSpace as! String, datasetName as! String, request as! UpdateDatasetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEvaluationRunWithOptions(_ agentSpace: String, _ taskId: String, _ runId: String, _ request: UpdateEvaluationRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEvaluationRunResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEvaluationRun",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluation-task/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)) + "/run/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(runId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEvaluationRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEvaluationRun(_ agentSpace: String, _ taskId: String, _ runId: String, _ request: UpdateEvaluationRunRequest) async throws -> UpdateEvaluationRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateEvaluationRunWithOptions(agentSpace as! String, taskId as! String, runId as! String, request as! UpdateEvaluationRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEvaluationTaskWithOptions(_ agentSpace: String, _ taskId: String, _ request: UpdateEvaluationTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEvaluationTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.dataFilter)) {
            body["dataFilter"] = request.dataFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.evaluators)) {
            body["evaluators"] = request.evaluators ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.runStrategies)) {
            body["runStrategies"] = request.runStrategies!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEvaluationTask",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluation-task/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEvaluationTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEvaluationTask(_ agentSpace: String, _ taskId: String, _ request: UpdateEvaluationTaskRequest) async throws -> UpdateEvaluationTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateEvaluationTaskWithOptions(agentSpace as! String, taskId as! String, request as! UpdateEvaluationTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEvaluatorWithOptions(_ agentSpace: String, _ name: String, _ request: UpdateEvaluatorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEvaluatorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.annotations)) {
            body["annotations"] = request.annotations ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.properties)) {
            body["properties"] = request.properties ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionDescription)) {
            body["versionDescription"] = request.versionDescription ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEvaluator",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluators/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEvaluatorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEvaluator(_ agentSpace: String, _ name: String, _ request: UpdateEvaluatorRequest) async throws -> UpdateEvaluatorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateEvaluatorWithOptions(agentSpace as! String, name as! String, request as! UpdateEvaluatorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEvaluatorSkillWithOptions(_ name: String, _ skillName: String, _ request: UpdateEvaluatorSkillRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEvaluatorSkillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enable)) {
            body["enable"] = request.enable!;
        }
        if (!TeaUtils.Client.isUnset(request.files)) {
            body["files"] = request.files ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEvaluatorSkill",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/evaluator/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)) + "/skill/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(skillName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEvaluatorSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEvaluatorSkill(_ name: String, _ skillName: String, _ request: UpdateEvaluatorSkillRequest) async throws -> UpdateEvaluatorSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateEvaluatorSkillWithOptions(name as! String, skillName as! String, request as! UpdateEvaluatorSkillRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateExperimentPlanWithOptions(_ agentSpace: String, _ planId: String, _ request: UpdateExperimentPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateExperimentPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            body["datasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetProject)) {
            body["datasetProject"] = request.datasetProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.evaluators)) {
            body["evaluators"] = request.evaluators ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.experimentType)) {
            body["experimentType"] = request.experimentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.experiments)) {
            body["experiments"] = request.experiments ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["input"] = request.input ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.planName)) {
            body["planName"] = request.planName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.querySql)) {
            body["querySql"] = request.querySql ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selectedItemIds)) {
            body["selectedItemIds"] = request.selectedItemIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateExperimentPlan",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/plans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(planId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateExperimentPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateExperimentPlan(_ agentSpace: String, _ planId: String, _ request: UpdateExperimentPlanRequest) async throws -> UpdateExperimentPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateExperimentPlanWithOptions(agentSpace as! String, planId as! String, request as! UpdateExperimentPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateExperimentRunWithOptions(_ agentSpace: String, _ recordId: String, _ request: UpdateExperimentRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateExperimentRunResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.completedAt)) {
            body["completedAt"] = request.completedAt!;
        }
        if (!TeaUtils.Client.isUnset(request.completedTasks)) {
            body["completedTasks"] = request.completedTasks!;
        }
        if (!TeaUtils.Client.isUnset(request.executedAt)) {
            body["executedAt"] = request.executedAt!;
        }
        if (!TeaUtils.Client.isUnset(request.failedTasks)) {
            body["failedTasks"] = request.failedTasks!;
        }
        if (!TeaUtils.Client.isUnset(request.recordName)) {
            body["recordName"] = request.recordName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalTasks)) {
            body["totalTasks"] = request.totalTasks!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateExperimentRun",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentruns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/records/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(recordId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateExperimentRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateExperimentRun(_ agentSpace: String, _ recordId: String, _ request: UpdateExperimentRunRequest) async throws -> UpdateExperimentRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateExperimentRunWithOptions(agentSpace as! String, recordId as! String, request as! UpdateExperimentRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePipelineWithOptions(_ agentSpace: String, _ pipelineName: String, _ request: UpdatePipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executePolicy)) {
            body["executePolicy"] = request.executePolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.pipeline)) {
            body["pipeline"] = request.pipeline!;
        }
        if (!TeaUtils.Client.isUnset(request.sink)) {
            body["sink"] = request.sink!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["source"] = request.source!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePipeline",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/agentspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(agentSpace)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePipeline(_ agentSpace: String, _ pipelineName: String, _ request: UpdatePipelineRequest) async throws -> UpdatePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePipelineWithOptions(agentSpace as! String, pipelineName as! String, request as! UpdatePipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
