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
        self._endpoint = try getEndpoint("sysom", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func authDiagnosisWithOptions(_ request: AuthDiagnosisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthDiagnosisResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoCreateRole)) {
            body["autoCreateRole"] = request.autoCreateRole!;
        }
        if (!TeaUtils.Client.isUnset(request.autoInstallAgent)) {
            body["autoInstallAgent"] = request.autoInstallAgent!;
        }
        if (!TeaUtils.Client.isUnset(request.instances)) {
            body["instances"] = request.instances ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthDiagnosis",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/diagnosis/auth",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthDiagnosisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authDiagnosis(_ request: AuthDiagnosisRequest) async throws -> AuthDiagnosisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await authDiagnosisWithOptions(request as! AuthDiagnosisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkInstanceSupportWithOptions(_ request: CheckInstanceSupportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckInstanceSupportResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instances)) {
            body["instances"] = request.instances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["region"] = request.region ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckInstanceSupport",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/supportInstanceList/checkInstanceSupport",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckInstanceSupportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkInstanceSupport(_ request: CheckInstanceSupportRequest) async throws -> CheckInstanceSupportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await checkInstanceSupportWithOptions(request as! CheckInstanceSupportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlertStrategyWithOptions(_ request: CreateAlertStrategyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAlertStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            body["enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.k8sLabel)) {
            body["k8sLabel"] = request.k8sLabel!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strategy)) {
            body["strategy"] = request.strategy!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAlertStrategy",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/alertPusher/alert/createStrategy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAlertStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlertStrategy(_ request: CreateAlertStrategyRequest) async throws -> CreateAlertStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAlertStrategyWithOptions(request as! CreateAlertStrategyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVmcoreDiagnosisTaskWithOptions(_ request: CreateVmcoreDiagnosisTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVmcoreDiagnosisTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.debuginfoCommonUrl)) {
            body["debuginfoCommonUrl"] = request.debuginfoCommonUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debuginfoUrl)) {
            body["debuginfoUrl"] = request.debuginfoUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dmesgUrl)) {
            body["dmesgUrl"] = request.dmesgUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["taskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vmcoreUrl)) {
            body["vmcoreUrl"] = request.vmcoreUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVmcoreDiagnosisTask",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/crashAgent/diagnosis/createDiagnosisTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVmcoreDiagnosisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVmcoreDiagnosisTask(_ request: CreateVmcoreDiagnosisTaskRequest) async throws -> CreateVmcoreDiagnosisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createVmcoreDiagnosisTaskWithOptions(request as! CreateVmcoreDiagnosisTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlertStrategyWithOptions(_ request: DeleteAlertStrategyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAlertStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAlertStrategy",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/alertPusher/alert/deleteStrategy",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAlertStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlertStrategy(_ request: DeleteAlertStrategyRequest) async throws -> DeleteAlertStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAlertStrategyWithOptions(request as! DeleteAlertStrategyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMetricListWithOptions(_ request: DescribeMetricListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMetricListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricName)) {
            query["metricName"] = request.metricName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMetricList",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/proxy/get/describeMetricList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMetricListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMetricList(_ request: DescribeMetricListRequest) async throws -> DescribeMetricListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeMetricListWithOptions(request as! DescribeMetricListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateCopilotResponseWithOptions(_ request: GenerateCopilotResponseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateCopilotResponseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.llmParamString)) {
            body["llmParamString"] = request.llmParamString ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateCopilotResponse",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/copilot/generate_copilot_response",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateCopilotResponseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateCopilotResponse(_ request: GenerateCopilotResponseRequest) async throws -> GenerateCopilotResponseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateCopilotResponseWithOptions(request as! GenerateCopilotResponseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateCopilotStreamResponseWithOptions(_ request: GenerateCopilotStreamResponseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateCopilotStreamResponseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.llmParamString)) {
            body["llmParamString"] = request.llmParamString ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateCopilotStreamResponse",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/copilot/generate_copilot_stream_response",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateCopilotStreamResponseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateCopilotStreamResponse(_ request: GenerateCopilotStreamResponseRequest) async throws -> GenerateCopilotStreamResponseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateCopilotStreamResponseWithOptions(request as! GenerateCopilotStreamResponseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAIQueryResultWithOptions(_ request: GetAIQueryResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAIQueryResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.analysisId)) {
            body["analysisId"] = request.analysisId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAIQueryResult",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/app_observ/aiAnalysis/query_result",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAIQueryResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAIQueryResult(_ request: GetAIQueryResultRequest) async throws -> GetAIQueryResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAIQueryResultWithOptions(request as! GetAIQueryResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAbnormalEventsCountWithOptions(_ request: GetAbnormalEventsCountRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAbnormalEventsCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cluster)) {
            query["cluster"] = request.cluster ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["end"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            query["level"] = request.level ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pod)) {
            query["pod"] = request.pod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showPod)) {
            query["showPod"] = request.showPod!;
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["start"] = request.start!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAbnormalEventsCount",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/cluster_health/range/abnormaly_events_count",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAbnormalEventsCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAbnormalEventsCount(_ request: GetAbnormalEventsCountRequest) async throws -> GetAbnormalEventsCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAbnormalEventsCountWithOptions(request as! GetAbnormalEventsCountRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgentWithOptions(_ request: GetAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            query["agent_id"] = request.agentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAgent",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/agent/get_agent",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgent(_ request: GetAgentRequest) async throws -> GetAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAgentWithOptions(request as! GetAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgentTaskWithOptions(_ request: GetAgentTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAgentTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["task_id"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAgentTask",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/agent/get_agent_task",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAgentTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgentTask(_ request: GetAgentTaskRequest) async throws -> GetAgentTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAgentTaskWithOptions(request as! GetAgentTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlertStrategyWithOptions(_ request: GetAlertStrategyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAlertStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAlertStrategy",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/alertPusher/alert/getStrategy",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAlertStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlertStrategy(_ request: GetAlertStrategyRequest) async throws -> GetAlertStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAlertStrategyWithOptions(request as! GetAlertStrategyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCopilotHistoryWithOptions(_ request: GetCopilotHistoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCopilotHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.count)) {
            body["count"] = request.count!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCopilotHistory",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/copilot/get_copilot_history",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCopilotHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCopilotHistory(_ request: GetCopilotHistoryRequest) async throws -> GetCopilotHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCopilotHistoryWithOptions(request as! GetCopilotHistoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiagnosisResultWithOptions(_ request: GetDiagnosisResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDiagnosisResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["task_id"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDiagnosisResult",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/diagnosis/get_diagnosis_results",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDiagnosisResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiagnosisResult(_ request: GetDiagnosisResultRequest) async throws -> GetDiagnosisResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDiagnosisResultWithOptions(request as! GetDiagnosisResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHealthPercentageWithOptions(_ request: GetHealthPercentageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHealthPercentageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cluster)) {
            query["cluster"] = request.cluster ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["end"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["start"] = request.start!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHealthPercentage",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/cluster_health/range/health_percentage",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHealthPercentageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHealthPercentage(_ request: GetHealthPercentageRequest) async throws -> GetHealthPercentageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHealthPercentageWithOptions(request as! GetHealthPercentageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHostCountWithOptions(_ request: GetHostCountRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHostCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cluster)) {
            query["cluster"] = request.cluster ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["end"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["start"] = request.start!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHostCount",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/cluster_health/range/host_count",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHostCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHostCount(_ request: GetHostCountRequest) async throws -> GetHostCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHostCountWithOptions(request as! GetHostCountRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotSpotUniqListWithOptions(_ request: GetHotSpotUniqListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHotSpotUniqListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.begEnd)) {
            body["beg_end"] = request.begEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.begStart)) {
            body["beg_start"] = request.begStart!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            body["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pid)) {
            body["pid"] = request.pid!;
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            body["table"] = request.table ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniq)) {
            body["uniq"] = request.uniq ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHotSpotUniqList",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/livetrace_proxy/hotspot_uniq_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHotSpotUniqListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotSpotUniqList(_ request: GetHotSpotUniqListRequest) async throws -> GetHotSpotUniqListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHotSpotUniqListWithOptions(request as! GetHotSpotUniqListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotspotAnalysisWithOptions(_ request: GetHotspotAnalysisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHotspotAnalysisResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["appType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.begEnd)) {
            body["beg_end"] = request.begEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.begStart)) {
            body["beg_start"] = request.begStart!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            body["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pid)) {
            body["pid"] = request.pid!;
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            body["table"] = request.table ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHotspotAnalysis",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/proxy/post/livetrace_hotspot_analysis",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHotspotAnalysisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotspotAnalysis(_ request: GetHotspotAnalysisRequest) async throws -> GetHotspotAnalysisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHotspotAnalysisWithOptions(request as! GetHotspotAnalysisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotspotCompareWithOptions(_ request: GetHotspotCompareRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHotspotCompareResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beg1End)) {
            body["beg1_end"] = request.beg1End!;
        }
        if (!TeaUtils.Client.isUnset(request.beg1Start)) {
            body["beg1_start"] = request.beg1Start!;
        }
        if (!TeaUtils.Client.isUnset(request.beg2End)) {
            body["beg2_end"] = request.beg2End!;
        }
        if (!TeaUtils.Client.isUnset(request.beg2Start)) {
            body["beg2_start"] = request.beg2Start!;
        }
        if (!TeaUtils.Client.isUnset(request.hotType)) {
            body["hot_type"] = request.hotType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instance1)) {
            body["instance1"] = request.instance1 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instance2)) {
            body["instance2"] = request.instance2 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pid1)) {
            body["pid1"] = request.pid1!;
        }
        if (!TeaUtils.Client.isUnset(request.pid2)) {
            body["pid2"] = request.pid2!;
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            body["table"] = request.table ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHotspotCompare",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/proxy/post/livetrace_hotspot_compare",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHotspotCompareResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotspotCompare(_ request: GetHotspotCompareRequest) async throws -> GetHotspotCompareResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHotspotCompareWithOptions(request as! GetHotspotCompareRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotspotInstanceListWithOptions(_ request: GetHotspotInstanceListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHotspotInstanceListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.begEnd)) {
            body["beg_end"] = request.begEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.begStart)) {
            body["beg_start"] = request.begStart!;
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            body["table"] = request.table ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHotspotInstanceList",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/proxy/post/livetrace_hotspot_instance_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHotspotInstanceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotspotInstanceList(_ request: GetHotspotInstanceListRequest) async throws -> GetHotspotInstanceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHotspotInstanceListWithOptions(request as! GetHotspotInstanceListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotspotPidListWithOptions(_ request: GetHotspotPidListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHotspotPidListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.begEnd)) {
            body["beg_end"] = request.begEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.begStart)) {
            body["beg_start"] = request.begStart!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            body["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            body["table"] = request.table ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHotspotPidList",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/proxy/post/livetrace_hotspot_pid_list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHotspotPidListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotspotPidList(_ request: GetHotspotPidListRequest) async throws -> GetHotspotPidListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHotspotPidListWithOptions(request as! GetHotspotPidListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotspotTrackingWithOptions(_ request: GetHotspotTrackingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHotspotTrackingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.begEnd)) {
            body["beg_end"] = request.begEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.begStart)) {
            body["beg_start"] = request.begStart!;
        }
        if (!TeaUtils.Client.isUnset(request.hotType)) {
            body["hot_type"] = request.hotType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            body["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pid)) {
            body["pid"] = request.pid!;
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            body["table"] = request.table ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHotspotTracking",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/proxy/post/livetrace_hotspot_tracking",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHotspotTrackingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotspotTracking(_ request: GetHotspotTrackingRequest) async throws -> GetHotspotTrackingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHotspotTrackingWithOptions(request as! GetHotspotTrackingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstantScoreWithOptions(_ request: GetInstantScoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstantScoreResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cluster)) {
            query["cluster"] = request.cluster ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstantScore",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/cluster_health/instant/score",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstantScoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstantScore(_ request: GetInstantScoreRequest) async throws -> GetInstantScoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstantScoreWithOptions(request as! GetInstantScoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getListRecordWithOptions(_ request: GetListRecordRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetListRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetListRecord",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/app_observ/aiAnalysis/list_record",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetListRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getListRecord(_ request: GetListRecordRequest) async throws -> GetListRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getListRecordWithOptions(request as! GetListRecordRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProblemPercentageWithOptions(_ request: GetProblemPercentageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProblemPercentageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cluster)) {
            query["cluster"] = request.cluster ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["end"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["start"] = request.start!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProblemPercentage",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/cluster_health/range/problem_percentage",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProblemPercentageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProblemPercentage(_ request: GetProblemPercentageRequest) async throws -> GetProblemPercentageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProblemPercentageWithOptions(request as! GetProblemPercentageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRangeScoreWithOptions(_ request: GetRangeScoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRangeScoreResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cluster)) {
            query["cluster"] = request.cluster ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["end"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["start"] = request.start!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRangeScore",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/cluster_health/range/score",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRangeScoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRangeScore(_ request: GetRangeScoreRequest) async throws -> GetRangeScoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRangeScoreWithOptions(request as! GetRangeScoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourcesWithOptions(_ request: GetResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cluster)) {
            query["cluster"] = request.cluster ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResources",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/cluster_health/instant/resource",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResources(_ request: GetResourcesRequest) async throws -> GetResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourcesWithOptions(request as! GetResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceFuncStatusWithOptions(_ tmpReq: GetServiceFuncStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceFuncStatusResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetServiceFuncStatusShrinkRequest = GetServiceFuncStatusShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.params)) {
            request.paramsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.params, "params", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramsShrink)) {
            query["params"] = request.paramsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["service_name"] = request.serviceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceFuncStatus",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/func-switch/get-service-func-status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceFuncStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceFuncStatus(_ request: GetServiceFuncStatusRequest) async throws -> GetServiceFuncStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceFuncStatusWithOptions(request as! GetServiceFuncStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVmcoreDiagnosisTaskWithOptions(_ request: GetVmcoreDiagnosisTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVmcoreDiagnosisTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVmcoreDiagnosisTask",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/crashAgent/diagnosis/queryTask",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVmcoreDiagnosisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVmcoreDiagnosisTask(_ request: GetVmcoreDiagnosisTaskRequest) async throws -> GetVmcoreDiagnosisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getVmcoreDiagnosisTaskWithOptions(request as! GetVmcoreDiagnosisTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initialSysomWithOptions(_ request: InitialSysomRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InitialSysomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkOnly)) {
            body["check_only"] = request.checkOnly!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitialSysom",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/initial",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitialSysomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initialSysom(_ request: InitialSysomRequest) async throws -> InitialSysomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await initialSysomWithOptions(request as! InitialSysomRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installAgentWithOptions(_ request: InstallAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InstallAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            body["agent_id"] = request.agentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentVersion)) {
            body["agent_version"] = request.agentVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.installType)) {
            body["install_type"] = request.installType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instances)) {
            body["instances"] = request.instances ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InstallAgent",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/agent/install_agent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InstallAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installAgent(_ request: InstallAgentRequest) async throws -> InstallAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await installAgentWithOptions(request as! InstallAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installAgentForClusterWithOptions(_ request: InstallAgentForClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InstallAgentForClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            body["agent_id"] = request.agentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentVersion)) {
            body["agent_version"] = request.agentVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configId)) {
            body["config_id"] = request.configId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grayscaleConfig)) {
            body["grayscale_config"] = request.grayscaleConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InstallAgentForCluster",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/agent/install_agent_by_cluster",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InstallAgentForClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installAgentForCluster(_ request: InstallAgentForClusterRequest) async throws -> InstallAgentForClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await installAgentForClusterWithOptions(request as! InstallAgentForClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeAnomalyDiagnosisWithOptions(_ request: InvokeAnomalyDiagnosisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InvokeAnomalyDiagnosisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvokeAnomalyDiagnosis",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/cluster_health/diagnosis/invoke_anomaly_diagnose",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvokeAnomalyDiagnosisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeAnomalyDiagnosis(_ request: InvokeAnomalyDiagnosisRequest) async throws -> InvokeAnomalyDiagnosisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await invokeAnomalyDiagnosisWithOptions(request as! InvokeAnomalyDiagnosisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeDiagnosisWithOptions(_ request: InvokeDiagnosisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InvokeDiagnosisResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            body["service_name"] = request.serviceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvokeDiagnosis",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/diagnosis/invoke_diagnosis",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvokeDiagnosisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeDiagnosis(_ request: InvokeDiagnosisRequest) async throws -> InvokeDiagnosisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await invokeDiagnosisWithOptions(request as! InvokeDiagnosisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAbnormalyEventsWithOptions(_ request: ListAbnormalyEventsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAbnormalyEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cluster)) {
            query["cluster"] = request.cluster ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["end"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.event)) {
            query["event"] = request.event ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            query["level"] = request.level ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pod)) {
            query["pod"] = request.pod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showPod)) {
            query["showPod"] = request.showPod!;
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["start"] = request.start!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAbnormalyEvents",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/cluster_health/range/abnormaly_events",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAbnormalyEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAbnormalyEvents(_ request: ListAbnormalyEventsRequest) async throws -> ListAbnormalyEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAbnormalyEventsWithOptions(request as! ListAbnormalyEventsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAgentInstallRecordsWithOptions(_ request: ListAgentInstallRecordsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAgentInstallRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["instance_id"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["plugin_id"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginVersion)) {
            query["plugin_version"] = request.pluginVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAgentInstallRecords",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/agent/list_agent_install_list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAgentInstallRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAgentInstallRecords(_ request: ListAgentInstallRecordsRequest) async throws -> ListAgentInstallRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAgentInstallRecordsWithOptions(request as! ListAgentInstallRecordsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAgentsWithOptions(_ request: ListAgentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAgentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAgents",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/agent/list_agents",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAgentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAgents(_ request: ListAgentsRequest) async throws -> ListAgentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAgentsWithOptions(request as! ListAgentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertItemsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlertItemsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlertItems",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/alertPusher/alert/listItems",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlertItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertItems() async throws -> ListAlertItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAlertItemsWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertStrategiesWithOptions(_ request: ListAlertStrategiesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlertStrategiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
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
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlertStrategies",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/alertPusher/alert/listStrategies",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlertStrategiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertStrategies(_ request: ListAlertStrategiesRequest) async throws -> ListAlertStrategiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAlertStrategiesWithOptions(request as! ListAlertStrategiesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAllInstancesWithOptions(_ request: ListAllInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAllInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filters)) {
            query["filters"] = request.filters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["instanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.managedType)) {
            query["managedType"] = request.managedType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["pluginId"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAllInstances",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/instance/listAllInstances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAllInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAllInstances(_ request: ListAllInstancesRequest) async throws -> ListAllInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAllInstancesWithOptions(request as! ListAllInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterAgentInstallRecordsWithOptions(_ request: ListClusterAgentInstallRecordsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClusterAgentInstallRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentConfigId)) {
            query["agent_config_id"] = request.agentConfigId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["plugin_id"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginVersion)) {
            query["plugin_version"] = request.pluginVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClusterAgentInstallRecords",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/agent/list_cluster_agent_install_list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClusterAgentInstallRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusterAgentInstallRecords(_ request: ListClusterAgentInstallRecordsRequest) async throws -> ListClusterAgentInstallRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listClusterAgentInstallRecordsWithOptions(request as! ListClusterAgentInstallRecordsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClustersWithOptions(_ request: ListClustersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClustersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterStatus)) {
            query["cluster_status"] = request.clusterStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["cluster_type"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClusters",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/cluster/list_clusters",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClusters(_ request: ListClustersRequest) async throws -> ListClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listClustersWithOptions(request as! ListClustersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDiagnosisWithOptions(_ request: ListDiagnosisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDiagnosisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["service_name"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDiagnosis",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/diagnosis/list_diagnosis",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDiagnosisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDiagnosis(_ request: ListDiagnosisRequest) async throws -> ListDiagnosisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDiagnosisWithOptions(request as! ListDiagnosisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceHealthWithOptions(_ request: ListInstanceHealthRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceHealthResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cluster)) {
            query["cluster"] = request.cluster ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["end"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["start"] = request.start!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstanceHealth",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/cluster_health/range/instance_health_list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceHealthResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceHealth(_ request: ListInstanceHealthRequest) async throws -> ListInstanceHealthResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstanceHealthWithOptions(request as! ListInstanceHealthRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceStatusWithOptions(_ request: ListInstanceStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstanceStatus",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/instance/list_instance_status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceStatus(_ request: ListInstanceStatusRequest) async throws -> ListInstanceStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstanceStatusWithOptions(request as! ListInstanceStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesWithOptions(_ request: ListInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstances",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/instance/list_instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstances(_ request: ListInstancesRequest) async throws -> ListInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstancesWithOptions(request as! ListInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesEcsInfoListWithOptions(_ request: ListInstancesEcsInfoListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesEcsInfoListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.infoType)) {
            query["info_type"] = request.infoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["instance_id"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.managedType)) {
            query["managed_type"] = request.managedType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["plugin_id"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstancesEcsInfoList",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/instance/listInstancesEcsInfoList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstancesEcsInfoListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesEcsInfoList(_ request: ListInstancesEcsInfoListRequest) async throws -> ListInstancesEcsInfoListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstancesEcsInfoListWithOptions(request as! ListInstancesEcsInfoListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesWithEcsInfoWithOptions(_ tmpReq: ListInstancesWithEcsInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesWithEcsInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListInstancesWithEcsInfoShrinkRequest = ListInstancesWithEcsInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceTag)) {
            request.instanceTagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceTag, "instance_tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.healthStatus)) {
            query["health_status"] = request.healthStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["instance_id"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdName)) {
            query["instance_id_name"] = request.instanceIdName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["instance_name"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceTagShrink)) {
            query["instance_tag"] = request.instanceTagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isManaged)) {
            query["is_managed"] = request.isManaged!;
        }
        if (!TeaUtils.Client.isUnset(request.osName)) {
            query["os_name"] = request.osName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.privateIp)) {
            query["private_ip"] = request.privateIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicIp)) {
            query["public_ip"] = request.publicIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resource_group_id"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIdName)) {
            query["resource_group_id_name"] = request.resourceGroupIdName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            query["resource_group_name"] = request.resourceGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstancesWithEcsInfo",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/instance/listInstancesWithEcsInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstancesWithEcsInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesWithEcsInfo(_ request: ListInstancesWithEcsInfoRequest) async throws -> ListInstancesWithEcsInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstancesWithEcsInfoWithOptions(request as! ListInstancesWithEcsInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPluginsInstancesWithOptions(_ request: ListPluginsInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPluginsInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdName)) {
            query["instance_id_name"] = request.instanceIdName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceTag)) {
            query["instance_tag"] = request.instanceTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            query["operation_type"] = request.operationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["plugin_id"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPluginsInstances",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/agent/listPluginsInstances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPluginsInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPluginsInstances(_ request: ListPluginsInstancesRequest) async throws -> ListPluginsInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPluginsInstancesWithOptions(request as! ListPluginsInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPodsOfInstanceWithOptions(_ request: ListPodsOfInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPodsOfInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["cluster_id"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPodsOfInstance",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/instance/list_pod_of_instance",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPodsOfInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPodsOfInstance(_ request: ListPodsOfInstanceRequest) async throws -> ListPodsOfInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPodsOfInstanceWithOptions(request as! ListPodsOfInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegionsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRegions",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/instance/list_regions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegions() async throws -> ListRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRegionsWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVmcoreDiagnosisTaskWithOptions(_ request: ListVmcoreDiagnosisTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVmcoreDiagnosisTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.days)) {
            query["days"] = request.days!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVmcoreDiagnosisTask",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/crashAgent/diagnosis/queryTaskList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVmcoreDiagnosisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVmcoreDiagnosisTask(_ request: ListVmcoreDiagnosisTaskRequest) async throws -> ListVmcoreDiagnosisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listVmcoreDiagnosisTaskWithOptions(request as! ListVmcoreDiagnosisTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAIAnalysisWithOptions(_ request: StartAIAnalysisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartAIAnalysisResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.analysisTool)) {
            body["analysisTool"] = request.analysisTool ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.analysisParams)) {
            body["analysis_params"] = request.analysisParams ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comms)) {
            body["comms"] = request.comms ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdBy)) {
            body["created_by"] = request.createdBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            body["instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["instance_type"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iterationFunc)) {
            body["iteration_func"] = request.iterationFunc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iterationMod)) {
            body["iteration_mod"] = request.iterationMod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iterationRange)) {
            body["iteration_range"] = request.iterationRange ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.pids)) {
            body["pids"] = request.pids ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            body["timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            body["uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartAIAnalysis",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/proxy/post/start_ai_analysis",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartAIAnalysisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAIAnalysis(_ request: StartAIAnalysisRequest) async throws -> StartAIAnalysisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startAIAnalysisWithOptions(request as! StartAIAnalysisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAIDiffAnalysisWithOptions(_ request: StartAIDiffAnalysisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartAIDiffAnalysisResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.task1)) {
            body["task1"] = request.task1!;
        }
        if (!TeaUtils.Client.isUnset(request.task2)) {
            body["task2"] = request.task2!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartAIDiffAnalysis",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/appObserv/aiAnalysis/diffAnalysis",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartAIDiffAnalysisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAIDiffAnalysis(_ request: StartAIDiffAnalysisRequest) async throws -> StartAIDiffAnalysisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startAIDiffAnalysisWithOptions(request as! StartAIDiffAnalysisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uninstallAgentWithOptions(_ request: UninstallAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UninstallAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            body["agent_id"] = request.agentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentVersion)) {
            body["agent_version"] = request.agentVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instances)) {
            body["instances"] = request.instances ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UninstallAgent",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/agent/uninstall_agent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UninstallAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uninstallAgent(_ request: UninstallAgentRequest) async throws -> UninstallAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await uninstallAgentWithOptions(request as! UninstallAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uninstallAgentForClusterWithOptions(_ request: UninstallAgentForClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UninstallAgentForClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            body["agent_id"] = request.agentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentVersion)) {
            body["agent_version"] = request.agentVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["cluster_id"] = request.clusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UninstallAgentForCluster",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/agent/uninstall_agent_by_cluster",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UninstallAgentForClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uninstallAgentForCluster(_ request: UninstallAgentForClusterRequest) async throws -> UninstallAgentForClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await uninstallAgentForClusterWithOptions(request as! UninstallAgentForClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlertEnabledWithOptions(_ request: UpdateAlertEnabledRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAlertEnabledResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            body["enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAlertEnabled",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/alertPusher/alert/updateEnabled",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAlertEnabledResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlertEnabled(_ request: UpdateAlertEnabledRequest) async throws -> UpdateAlertEnabledResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAlertEnabledWithOptions(request as! UpdateAlertEnabledRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlertStrategyWithOptions(_ request: UpdateAlertStrategyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAlertStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            body["enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.k8sLabel)) {
            body["k8sLabel"] = request.k8sLabel!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strategy)) {
            body["strategy"] = request.strategy!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAlertStrategy",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/alertPusher/alert/updateStrategy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAlertStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlertStrategy(_ request: UpdateAlertStrategyRequest) async throws -> UpdateAlertStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAlertStrategyWithOptions(request as! UpdateAlertStrategyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventsAttentionWithOptions(_ request: UpdateEventsAttentionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEventsAttentionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["mode"] = request.mode!;
        }
        if (!TeaUtils.Client.isUnset(request.range)) {
            body["range"] = request.range ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEventsAttention",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/openapi/proxy/post/cluster_update_events_attention",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEventsAttentionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventsAttention(_ request: UpdateEventsAttentionRequest) async throws -> UpdateEventsAttentionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateEventsAttentionWithOptions(request as! UpdateEventsAttentionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFuncSwitchRecordWithOptions(_ tmpReq: UpdateFuncSwitchRecordRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFuncSwitchRecordResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateFuncSwitchRecordShrinkRequest = UpdateFuncSwitchRecordShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.params)) {
            request.paramsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.params, "params", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramsShrink)) {
            query["params"] = request.paramsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["service_name"] = request.serviceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFuncSwitchRecord",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/func-switch/update-service-func-switch",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFuncSwitchRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFuncSwitchRecord(_ request: UpdateFuncSwitchRecordRequest) async throws -> UpdateFuncSwitchRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFuncSwitchRecordWithOptions(request as! UpdateFuncSwitchRecordRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeAgentWithOptions(_ request: UpgradeAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            body["agent_id"] = request.agentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentVersion)) {
            body["agent_version"] = request.agentVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instances)) {
            body["instances"] = request.instances ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeAgent",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/agent/upgrade_agent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeAgent(_ request: UpgradeAgentRequest) async throws -> UpgradeAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await upgradeAgentWithOptions(request as! UpgradeAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeAgentForClusterWithOptions(_ request: UpgradeAgentForClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeAgentForClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            body["agent_id"] = request.agentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentVersion)) {
            body["agent_version"] = request.agentVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["cluster_id"] = request.clusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeAgentForCluster",
            "version": "2023-12-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/am/agent/upgrade_agent_by_cluster",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeAgentForClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeAgentForCluster(_ request: UpgradeAgentForClusterRequest) async throws -> UpgradeAgentForClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await upgradeAgentForClusterWithOptions(request as! UpgradeAgentForClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
