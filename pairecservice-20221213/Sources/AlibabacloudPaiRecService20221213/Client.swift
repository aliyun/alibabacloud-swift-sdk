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
        self._endpoint = try getEndpoint("pairecservice", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func applyEngineConfigWithOptions(_ EngineConfigId: String, _ request: ApplyEngineConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyEngineConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyEngineConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/engineconfigs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(EngineConfigId)) + "/action/apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyEngineConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyEngineConfig(_ EngineConfigId: String, _ request: ApplyEngineConfigRequest) async throws -> ApplyEngineConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await applyEngineConfigWithOptions(EngineConfigId as! String, request as! ApplyEngineConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func backflowFeatureConsistencyCheckJobDataWithOptions(_ request: BackflowFeatureConsistencyCheckJobDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BackflowFeatureConsistencyCheckJobDataResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.featureConsistencyCheckJobConfigId)) {
            body["FeatureConsistencyCheckJobConfigId"] = request.featureConsistencyCheckJobConfigId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemFeatures)) {
            body["ItemFeatures"] = request.itemFeatures ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logItemId)) {
            body["LogItemId"] = request.logItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRequestId)) {
            body["LogRequestId"] = request.logRequestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRequestTime)) {
            body["LogRequestTime"] = request.logRequestTime!;
        }
        if (!TeaUtils.Client.isUnset(request.logUserId)) {
            body["LogUserId"] = request.logUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            body["SceneName"] = request.sceneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scores)) {
            body["Scores"] = request.scores ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            body["ServiceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userFeatures)) {
            body["UserFeatures"] = request.userFeatures ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BackflowFeatureConsistencyCheckJobData",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobs/action/backflowdata",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BackflowFeatureConsistencyCheckJobDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func backflowFeatureConsistencyCheckJobData(_ request: BackflowFeatureConsistencyCheckJobDataRequest) async throws -> BackflowFeatureConsistencyCheckJobDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await backflowFeatureConsistencyCheckJobDataWithOptions(request as! BackflowFeatureConsistencyCheckJobDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeRecallManagementServiceVersionWithOptions(_ RecallManagementServiceId: String, _ request: ChangeRecallManagementServiceVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeRecallManagementServiceVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recallManagementServiceVersionId)) {
            body["RecallManagementServiceVersionId"] = request.recallManagementServiceVersionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeRecallManagementServiceVersion",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)) + "/action/changeversion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeRecallManagementServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeRecallManagementServiceVersion(_ RecallManagementServiceId: String, _ request: ChangeRecallManagementServiceVersionRequest) async throws -> ChangeRecallManagementServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await changeRecallManagementServiceVersionWithOptions(RecallManagementServiceId as! String, request as! ChangeRecallManagementServiceVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkInstanceResourcesWithOptions(_ InstanceId: String, _ request: CheckInstanceResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckInstanceResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uri)) {
            body["Uri"] = request.uri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckInstanceResources",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId)) + "/action/checkresources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckInstanceResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkInstanceResources(_ InstanceId: String, _ request: CheckInstanceResourcesRequest) async throws -> CheckInstanceResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await checkInstanceResourcesWithOptions(InstanceId as! String, request as! CheckInstanceResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkTrafficControlTaskExpressionWithOptions(_ request: CheckTrafficControlTaskExpressionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckTrafficControlTaskExpressionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expression)) {
            query["Expression"] = request.expression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableMetaId)) {
            query["TableMetaId"] = request.tableMetaId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckTrafficControlTaskExpression",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks/action/checkexpression",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckTrafficControlTaskExpressionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkTrafficControlTaskExpression(_ request: CheckTrafficControlTaskExpressionRequest) async throws -> CheckTrafficControlTaskExpressionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await checkTrafficControlTaskExpressionWithOptions(request as! CheckTrafficControlTaskExpressionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneEngineConfigWithOptions(_ EngineConfigId: String, _ request: CloneEngineConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CloneEngineConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configValue)) {
            body["ConfigValue"] = request.configValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloneEngineConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/engineconfigs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(EngineConfigId)) + "/action/clone",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloneEngineConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneEngineConfig(_ EngineConfigId: String, _ request: CloneEngineConfigRequest) async throws -> CloneEngineConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cloneEngineConfigWithOptions(EngineConfigId as! String, request as! CloneEngineConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneExperimentWithOptions(_ ExperimentId: String, _ request: CloneExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CloneExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloneExperiment",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/action/clone",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloneExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneExperiment(_ ExperimentId: String, _ request: CloneExperimentRequest) async throws -> CloneExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cloneExperimentWithOptions(ExperimentId as! String, request as! CloneExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneExperimentGroupWithOptions(_ ExperimentGroupId: String, _ request: CloneExperimentGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CloneExperimentGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.layerId)) {
            body["LayerId"] = request.layerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloneExperimentGroup",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentgroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentGroupId)) + "/action/clone",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloneExperimentGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneExperimentGroup(_ ExperimentGroupId: String, _ request: CloneExperimentGroupRequest) async throws -> CloneExperimentGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cloneExperimentGroupWithOptions(ExperimentGroupId as! String, request as! CloneExperimentGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneFeatureConsistencyCheckJobConfigWithOptions(_ SourceFeatureConsistencyCheckJobConfigId: String, _ request: CloneFeatureConsistencyCheckJobConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CloneFeatureConsistencyCheckJobConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloneFeatureConsistencyCheckJobConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobconfigs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SourceFeatureConsistencyCheckJobConfigId)) + "/action/clone",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloneFeatureConsistencyCheckJobConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneFeatureConsistencyCheckJobConfig(_ SourceFeatureConsistencyCheckJobConfigId: String, _ request: CloneFeatureConsistencyCheckJobConfigRequest) async throws -> CloneFeatureConsistencyCheckJobConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cloneFeatureConsistencyCheckJobConfigWithOptions(SourceFeatureConsistencyCheckJobConfigId as! String, request as! CloneFeatureConsistencyCheckJobConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneLaboratoryWithOptions(_ LaboratoryId: String, _ request: CloneLaboratoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CloneLaboratoryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cloneExperimentGroup)) {
            body["CloneExperimentGroup"] = request.cloneExperimentGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloneLaboratory",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/laboratories/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(LaboratoryId)) + "/action/clone",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloneLaboratoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneLaboratory(_ LaboratoryId: String, _ request: CloneLaboratoryRequest) async throws -> CloneLaboratoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cloneLaboratoryWithOptions(LaboratoryId as! String, request as! CloneLaboratoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneTrafficControlTaskWithOptions(_ TrafficControlTaskId: String, _ request: CloneTrafficControlTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CloneTrafficControlTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloneTrafficControlTask",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTaskId)) + "/action/clone",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloneTrafficControlTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloneTrafficControlTask(_ TrafficControlTaskId: String, _ request: CloneTrafficControlTaskRequest) async throws -> CloneTrafficControlTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cloneTrafficControlTaskWithOptions(TrafficControlTaskId as! String, request as! CloneTrafficControlTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func compareSampleConsistencyJobWithOptions(_ SampleConsistencyJobId: String, _ request: CompareSampleConsistencyJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CompareSampleConsistencyJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CompareSampleConsistencyJob",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/sampleconsistencyjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SampleConsistencyJobId)) + "/action/compare",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CompareSampleConsistencyJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func compareSampleConsistencyJob(_ SampleConsistencyJobId: String, _ request: CompareSampleConsistencyJobRequest) async throws -> CompareSampleConsistencyJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await compareSampleConsistencyJobWithOptions(SampleConsistencyJobId as! String, request as! CompareSampleConsistencyJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createABMetricWithOptions(_ request: CreateABMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateABMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.definition)) {
            body["Definition"] = request.definition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.leftMetricId)) {
            body["LeftMetricId"] = request.leftMetricId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operator_)) {
            body["Operator"] = request.operator_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realtime)) {
            body["Realtime"] = request.realtime!;
        }
        if (!TeaUtils.Client.isUnset(request.resultResourceId)) {
            body["ResultResourceId"] = request.resultResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rightMetricId)) {
            body["RightMetricId"] = request.rightMetricId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisticsCycle)) {
            body["StatisticsCycle"] = request.statisticsCycle!;
        }
        if (!TeaUtils.Client.isUnset(request.tableMetaId)) {
            body["TableMetaId"] = request.tableMetaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateABMetric",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/abmetrics",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateABMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createABMetric(_ request: CreateABMetricRequest) async throws -> CreateABMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createABMetricWithOptions(request as! CreateABMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createABMetricGroupWithOptions(_ request: CreateABMetricGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateABMetricGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ABMetricIds)) {
            body["ABMetricIds"] = request.ABMetricIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realtime)) {
            body["Realtime"] = request.realtime!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateABMetricGroup",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/abmetricgroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateABMetricGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createABMetricGroup(_ request: CreateABMetricGroupRequest) async throws -> CreateABMetricGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createABMetricGroupWithOptions(request as! CreateABMetricGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCalculationJobsWithOptions(_ request: CreateCalculationJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCalculationJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ABMetricIds)) {
            body["ABMetricIds"] = request.ABMetricIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["StartDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCalculationJobs",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/batch/calculationjobs/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCalculationJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCalculationJobs(_ request: CreateCalculationJobsRequest) async throws -> CreateCalculationJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createCalculationJobsWithOptions(request as! CreateCalculationJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCrowdWithOptions(_ request: CreateCrowdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCrowdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            body["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.users)) {
            body["Users"] = request.users ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCrowd",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/crowds",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCrowdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCrowd(_ request: CreateCrowdRequest) async throws -> CreateCrowdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createCrowdWithOptions(request as! CreateCrowdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEngineConfigWithOptions(_ request: CreateEngineConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEngineConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configValue)) {
            body["ConfigValue"] = request.configValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEngineConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/engineconfigs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEngineConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEngineConfig(_ request: CreateEngineConfigRequest) async throws -> CreateEngineConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createEngineConfigWithOptions(request as! CreateEngineConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExperimentWithOptions(_ request: CreateExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugCrowdId)) {
            body["DebugCrowdId"] = request.debugCrowdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugUsers)) {
            body["DebugUsers"] = request.debugUsers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.experimentGroupId)) {
            body["ExperimentGroupId"] = request.experimentGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowPercent)) {
            body["FlowPercent"] = request.flowPercent!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateExperiment",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExperiment(_ request: CreateExperimentRequest) async throws -> CreateExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createExperimentWithOptions(request as! CreateExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExperimentGroupWithOptions(_ request: CreateExperimentGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateExperimentGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crowdId)) {
            body["CrowdId"] = request.crowdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crowdTargetType)) {
            body["CrowdTargetType"] = request.crowdTargetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugCrowdId)) {
            body["DebugCrowdId"] = request.debugCrowdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugUsers)) {
            body["DebugUsers"] = request.debugUsers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionTimeDuration)) {
            body["DistributionTimeDuration"] = request.distributionTimeDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.distributionType)) {
            body["DistributionType"] = request.distributionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            body["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.layerId)) {
            body["LayerId"] = request.layerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needAA)) {
            body["NeedAA"] = request.needAA!;
        }
        if (!TeaUtils.Client.isUnset(request.randomFlow)) {
            body["RandomFlow"] = request.randomFlow!;
        }
        if (!TeaUtils.Client.isUnset(request.reservedBuckets)) {
            body["ReservedBuckets"] = request.reservedBuckets ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateExperimentGroup",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentgroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateExperimentGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExperimentGroup(_ request: CreateExperimentGroupRequest) async throws -> CreateExperimentGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createExperimentGroupWithOptions(request as! CreateExperimentGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFeatureConsistencyCheckJobWithOptions(_ request: CreateFeatureConsistencyCheckJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFeatureConsistencyCheckJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureConsistencyCheckJobConfigId)) {
            body["FeatureConsistencyCheckJobConfigId"] = request.featureConsistencyCheckJobConfigId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.samplingDuration)) {
            body["SamplingDuration"] = request.samplingDuration!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFeatureConsistencyCheckJob",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFeatureConsistencyCheckJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFeatureConsistencyCheckJob(_ request: CreateFeatureConsistencyCheckJobRequest) async throws -> CreateFeatureConsistencyCheckJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFeatureConsistencyCheckJobWithOptions(request as! CreateFeatureConsistencyCheckJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFeatureConsistencyCheckJobConfigWithOptions(_ request: CreateFeatureConsistencyCheckJobConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFeatureConsistencyCheckJobConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compareFeature)) {
            body["CompareFeature"] = request.compareFeature!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            body["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetMountPath)) {
            body["DatasetMountPath"] = request.datasetMountPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            body["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetType)) {
            body["DatasetType"] = request.datasetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetUri)) {
            body["DatasetUri"] = request.datasetUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultRoute)) {
            body["DefaultRoute"] = request.defaultRoute ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.easServiceName)) {
            body["EasServiceName"] = request.easServiceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.easyRecPackagePath)) {
            body["EasyRecPackagePath"] = request.easyRecPackagePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.easyRecVersion)) {
            body["EasyRecVersion"] = request.easyRecVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureDisplayExclude)) {
            body["FeatureDisplayExclude"] = request.featureDisplayExclude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureLandingResourceId)) {
            body["FeatureLandingResourceId"] = request.featureLandingResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featurePriority)) {
            body["FeaturePriority"] = request.featurePriority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureStoreItemId)) {
            body["FeatureStoreItemId"] = request.featureStoreItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureStoreModelId)) {
            body["FeatureStoreModelId"] = request.featureStoreModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureStoreProjectId)) {
            body["FeatureStoreProjectId"] = request.featureStoreProjectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureStoreProjectName)) {
            body["FeatureStoreProjectName"] = request.featureStoreProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureStoreSeqFeatureView)) {
            body["FeatureStoreSeqFeatureView"] = request.featureStoreSeqFeatureView ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureStoreUserId)) {
            body["FeatureStoreUserId"] = request.featureStoreUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fgJarVersion)) {
            body["FgJarVersion"] = request.fgJarVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fgJsonFileName)) {
            body["FgJsonFileName"] = request.fgJsonFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generateZip)) {
            body["GenerateZip"] = request.generateZip!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemIdField)) {
            body["ItemIdField"] = request.itemIdField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemTable)) {
            body["ItemTable"] = request.itemTable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemTablePartitionField)) {
            body["ItemTablePartitionField"] = request.itemTablePartitionField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemTablePartitionFieldFormat)) {
            body["ItemTablePartitionFieldFormat"] = request.itemTablePartitionFieldFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossResourceId)) {
            body["OssResourceId"] = request.ossResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.predictWorkerCount)) {
            body["PredictWorkerCount"] = request.predictWorkerCount!;
        }
        if (!TeaUtils.Client.isUnset(request.predictWorkerCpu)) {
            body["PredictWorkerCpu"] = request.predictWorkerCpu!;
        }
        if (!TeaUtils.Client.isUnset(request.predictWorkerMemory)) {
            body["PredictWorkerMemory"] = request.predictWorkerMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceConfig)) {
            body["ResourceConfig"] = request.resourceConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sampleRate)) {
            body["SampleRate"] = request.sampleRate!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            body["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchId)) {
            body["SwitchId"] = request.switchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useFeatureStore)) {
            body["UseFeatureStore"] = request.useFeatureStore!;
        }
        if (!TeaUtils.Client.isUnset(request.userIdField)) {
            body["UserIdField"] = request.userIdField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userTable)) {
            body["UserTable"] = request.userTable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userTablePartitionField)) {
            body["UserTablePartitionField"] = request.userTablePartitionField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userTablePartitionFieldFormat)) {
            body["UserTablePartitionFieldFormat"] = request.userTablePartitionFieldFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowName)) {
            body["WorkflowName"] = request.workflowName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFeatureConsistencyCheckJobConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobconfigs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFeatureConsistencyCheckJobConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFeatureConsistencyCheckJobConfig(_ request: CreateFeatureConsistencyCheckJobConfigRequest) async throws -> CreateFeatureConsistencyCheckJobConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFeatureConsistencyCheckJobConfigWithOptions(request as! CreateFeatureConsistencyCheckJobConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceResourceWithOptions(_ InstanceId: String, _ request: CreateInstanceResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            body["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.group)) {
            body["Group"] = request.group ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uri)) {
            body["Uri"] = request.uri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstanceResource",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId)) + "/resources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceResource(_ InstanceId: String, _ request: CreateInstanceResourceRequest) async throws -> CreateInstanceResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createInstanceResourceWithOptions(InstanceId as! String, request as! CreateInstanceResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLaboratoryWithOptions(_ request: CreateLaboratoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLaboratoryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketCount)) {
            body["BucketCount"] = request.bucketCount!;
        }
        if (!TeaUtils.Client.isUnset(request.bucketType)) {
            body["BucketType"] = request.bucketType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buckets)) {
            body["Buckets"] = request.buckets ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugCrowdId)) {
            body["DebugCrowdId"] = request.debugCrowdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugUsers)) {
            body["DebugUsers"] = request.debugUsers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            body["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLaboratory",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/laboratories",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLaboratoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLaboratory(_ request: CreateLaboratoryRequest) async throws -> CreateLaboratoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createLaboratoryWithOptions(request as! CreateLaboratoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLayerWithOptions(_ request: CreateLayerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLayerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.laboratoryId)) {
            body["LaboratoryId"] = request.laboratoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLayer",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/layers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLayerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLayer(_ request: CreateLayerRequest) async throws -> CreateLayerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createLayerWithOptions(request as! CreateLayerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createParamWithOptions(_ request: CreateParamRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateParamResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            body["Value"] = request.value ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateParam",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/params",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateParamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createParam(_ request: CreateParamRequest) async throws -> CreateParamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createParamWithOptions(request as! CreateParamRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecallManagementConfigWithOptions(_ request: CreateRecallManagementConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRecallManagementConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkConfigs)) {
            body["NetworkConfigs"] = request.networkConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRecallManagementConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementconfigs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRecallManagementConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecallManagementConfig(_ request: CreateRecallManagementConfigRequest) async throws -> CreateRecallManagementConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRecallManagementConfigWithOptions(request as! CreateRecallManagementConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecallManagementServiceWithOptions(_ request: CreateRecallManagementServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRecallManagementServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRecallManagementService",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRecallManagementServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecallManagementService(_ request: CreateRecallManagementServiceRequest) async throws -> CreateRecallManagementServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRecallManagementServiceWithOptions(request as! CreateRecallManagementServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecallManagementServiceVersionWithOptions(_ RecallManagementServiceId: String, _ request: CreateRecallManagementServiceVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRecallManagementServiceVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configs)) {
            body["Configs"] = request.configs!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceRecallManagementServiceVersionId)) {
            body["SourceRecallManagementServiceVersionId"] = request.sourceRecallManagementServiceVersionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRecallManagementServiceVersion",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)) + "/versions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRecallManagementServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecallManagementServiceVersion(_ RecallManagementServiceId: String, _ request: CreateRecallManagementServiceVersionRequest) async throws -> CreateRecallManagementServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRecallManagementServiceVersionWithOptions(RecallManagementServiceId as! String, request as! CreateRecallManagementServiceVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecallManagementServiceVersionConfigWithOptions(_ RecallManagementServiceId: String, _ RecallManagementServiceVersionId: String, _ request: CreateRecallManagementServiceVersionConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRecallManagementServiceVersionConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configType)) {
            body["ConfigType"] = request.configType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mergeConfig)) {
            body["MergeConfig"] = request.mergeConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.recallConfig)) {
            body["RecallConfig"] = request.recallConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRecallManagementServiceVersionConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceVersionId)) + "/configs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRecallManagementServiceVersionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecallManagementServiceVersionConfig(_ RecallManagementServiceId: String, _ RecallManagementServiceVersionId: String, _ request: CreateRecallManagementServiceVersionConfigRequest) async throws -> CreateRecallManagementServiceVersionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRecallManagementServiceVersionConfigWithOptions(RecallManagementServiceId as! String, RecallManagementServiceVersionId as! String, request as! CreateRecallManagementServiceVersionConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecallManagementTableWithOptions(_ request: CreateRecallManagementTableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRecallManagementTableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSource)) {
            body["DataSource"] = request.dataSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableDataSizeFluctuationThreshold)) {
            body["EnableDataSizeFluctuationThreshold"] = request.enableDataSizeFluctuationThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.enableRowCountFluctuationThreshold)) {
            body["EnableRowCountFluctuationThreshold"] = request.enableRowCountFluctuationThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.fields)) {
            body["Fields"] = request.fields ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxDataSizeFluctuationThreshold)) {
            body["MaxDataSizeFluctuationThreshold"] = request.maxDataSizeFluctuationThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.maxRowCountFluctuationThreshold)) {
            body["MaxRowCountFluctuationThreshold"] = request.maxRowCountFluctuationThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.maxcomputeProjectName)) {
            body["MaxcomputeProjectName"] = request.maxcomputeProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxcomputeSchema)) {
            body["MaxcomputeSchema"] = request.maxcomputeSchema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxcomputeTableName)) {
            body["MaxcomputeTableName"] = request.maxcomputeTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minDataSizeFluctuationThreshold)) {
            body["MinDataSizeFluctuationThreshold"] = request.minDataSizeFluctuationThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.minRowCountFluctuationThreshold)) {
            body["MinRowCountFluctuationThreshold"] = request.minRowCountFluctuationThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recallType)) {
            body["RecallType"] = request.recallType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRecallManagementTable",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementtables",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRecallManagementTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecallManagementTable(_ request: CreateRecallManagementTableRequest) async throws -> CreateRecallManagementTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRecallManagementTableWithOptions(request as! CreateRecallManagementTableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceRuleWithOptions(_ request: CreateResourceRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateResourceRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricOperationType)) {
            body["MetricOperationType"] = request.metricOperationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricPullInfo)) {
            body["MetricPullInfo"] = request.metricPullInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricPullPeriod)) {
            body["MetricPullPeriod"] = request.metricPullPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleComputingDefinition)) {
            body["RuleComputingDefinition"] = request.ruleComputingDefinition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleItems)) {
            body["RuleItems"] = request.ruleItems ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateResourceRule",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resourcerules",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateResourceRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceRule(_ request: CreateResourceRuleRequest) async throws -> CreateResourceRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createResourceRuleWithOptions(request as! CreateResourceRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceRuleItemWithOptions(_ ResourceRuleId: String, _ request: CreateResourceRuleItemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateResourceRuleItemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxValue)) {
            body["MaxValue"] = request.maxValue!;
        }
        if (!TeaUtils.Client.isUnset(request.minValue)) {
            body["MinValue"] = request.minValue!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            body["Value"] = request.value!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateResourceRuleItem",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resourcerules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceRuleId)) + "/items",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateResourceRuleItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceRuleItem(_ ResourceRuleId: String, _ request: CreateResourceRuleItemRequest) async throws -> CreateResourceRuleItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createResourceRuleItemWithOptions(ResourceRuleId as! String, request as! CreateResourceRuleItemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSampleConsistencyJobWithOptions(_ request: CreateSampleConsistencyJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSampleConsistencyJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["Duration"] = request.duration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.easModelServiceName)) {
            body["EasModelServiceName"] = request.easModelServiceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureSaveResourceId)) {
            body["FeatureSaveResourceId"] = request.featureSaveResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemIdField)) {
            body["ItemIdField"] = request.itemIdField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionField)) {
            body["PartitionField"] = request.partitionField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionFieldFormat)) {
            body["PartitionFieldFormat"] = request.partitionFieldFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestIdField)) {
            body["RequestIdField"] = request.requestIdField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sampleRate)) {
            body["SampleRate"] = request.sampleRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sampleTableName)) {
            body["SampleTableName"] = request.sampleTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdField)) {
            body["UserIdField"] = request.userIdField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSampleConsistencyJob",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/sampleconsistencyjobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSampleConsistencyJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSampleConsistencyJob(_ request: CreateSampleConsistencyJobRequest) async throws -> CreateSampleConsistencyJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSampleConsistencyJobWithOptions(request as! CreateSampleConsistencyJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSceneWithOptions(_ request: CreateSceneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flows)) {
            body["Flows"] = request.flows ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScene",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/scenes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScene(_ request: CreateSceneRequest) async throws -> CreateSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSceneWithOptions(request as! CreateSceneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubCrowdWithOptions(_ CrowdId: String, _ request: CreateSubCrowdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSubCrowdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.users)) {
            body["Users"] = request.users ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSubCrowd",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/crowds/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CrowdId)) + "/subcrowds",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSubCrowdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubCrowd(_ CrowdId: String, _ request: CreateSubCrowdRequest) async throws -> CreateSubCrowdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSubCrowdWithOptions(CrowdId as! String, request as! CreateSubCrowdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTableMetaWithOptions(_ request: CreateTableMetaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTableMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fields)) {
            body["Fields"] = request.fields ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.module)) {
            body["Module"] = request.module ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTableMeta",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tablemetas",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTableMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTableMeta(_ request: CreateTableMetaRequest) async throws -> CreateTableMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTableMetaWithOptions(request as! CreateTableMetaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrafficControlTargetWithOptions(_ request: CreateTrafficControlTargetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTrafficControlTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.event)) {
            body["Event"] = request.event ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemConditionArray)) {
            body["ItemConditionArray"] = request.itemConditionArray ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemConditionExpress)) {
            body["ItemConditionExpress"] = request.itemConditionExpress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemConditionType)) {
            body["ItemConditionType"] = request.itemConditionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newProductRegulation)) {
            body["NewProductRegulation"] = request.newProductRegulation!;
        }
        if (!TeaUtils.Client.isUnset(request.recallName)) {
            body["RecallName"] = request.recallName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisPeriod)) {
            body["StatisPeriod"] = request.statisPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toleranceValue)) {
            body["ToleranceValue"] = request.toleranceValue!;
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlTaskId)) {
            body["TrafficControlTaskId"] = request.trafficControlTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            body["Value"] = request.value!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTrafficControlTarget",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltargets",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTrafficControlTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrafficControlTarget(_ request: CreateTrafficControlTargetRequest) async throws -> CreateTrafficControlTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTrafficControlTargetWithOptions(request as! CreateTrafficControlTargetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrafficControlTaskWithOptions(_ request: CreateTrafficControlTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTrafficControlTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.behaviorTableMetaId)) {
            body["BehaviorTableMetaId"] = request.behaviorTableMetaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.controlGranularity)) {
            body["ControlGranularity"] = request.controlGranularity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.controlLogic)) {
            body["ControlLogic"] = request.controlLogic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.controlType)) {
            body["ControlType"] = request.controlType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectiveSceneIds)) {
            body["EffectiveSceneIds"] = request.effectiveSceneIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionTime)) {
            body["ExecutionTime"] = request.executionTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flinkResourceId)) {
            body["FlinkResourceId"] = request.flinkResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemConditionArray)) {
            body["ItemConditionArray"] = request.itemConditionArray ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemConditionExpress)) {
            body["ItemConditionExpress"] = request.itemConditionExpress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemConditionType)) {
            body["ItemConditionType"] = request.itemConditionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemTableMetaId)) {
            body["ItemTableMetaId"] = request.itemTableMetaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preExperimentIds)) {
            body["PreExperimentIds"] = request.preExperimentIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prodExperimentIds)) {
            body["ProdExperimentIds"] = request.prodExperimentIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceIds)) {
            body["ServiceIds"] = request.serviceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisBehaviorConditionArray)) {
            body["StatisBehaviorConditionArray"] = request.statisBehaviorConditionArray ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisBehaviorConditionExpress)) {
            body["StatisBehaviorConditionExpress"] = request.statisBehaviorConditionExpress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisBehaviorConditionType)) {
            body["StatisBehaviorConditionType"] = request.statisBehaviorConditionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlTargets)) {
            body["TrafficControlTargets"] = request.trafficControlTargets ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userConditionArray)) {
            body["UserConditionArray"] = request.userConditionArray ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userConditionExpress)) {
            body["UserConditionExpress"] = request.userConditionExpress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userConditionType)) {
            body["UserConditionType"] = request.userConditionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userTableMetaId)) {
            body["UserTableMetaId"] = request.userTableMetaId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTrafficControlTask",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTrafficControlTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrafficControlTask(_ request: CreateTrafficControlTaskRequest) async throws -> CreateTrafficControlTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTrafficControlTaskWithOptions(request as! CreateTrafficControlTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func debugResourceRuleWithOptions(_ ResourceRuleId: String, _ tmpReq: DebugResourceRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DebugResourceRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DebugResourceRuleShrinkRequest = DebugResourceRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.metricInfo)) {
            request.metricInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.metricInfo, "MetricInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricInfoShrink)) {
            query["MetricInfo"] = request.metricInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DebugResourceRule",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resourcerules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceRuleId)) + "/action/debug",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DebugResourceRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func debugResourceRule(_ ResourceRuleId: String, _ request: DebugResourceRuleRequest) async throws -> DebugResourceRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await debugResourceRuleWithOptions(ResourceRuleId as! String, request as! DebugResourceRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteABMetricWithOptions(_ ABMetricId: String, _ request: DeleteABMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteABMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteABMetric",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/abmetrics/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ABMetricId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteABMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteABMetric(_ ABMetricId: String, _ request: DeleteABMetricRequest) async throws -> DeleteABMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteABMetricWithOptions(ABMetricId as! String, request as! DeleteABMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteABMetricGroupWithOptions(_ ABMetricGroupId: String, _ request: DeleteABMetricGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteABMetricGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteABMetricGroup",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/abmetricgroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ABMetricGroupId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteABMetricGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteABMetricGroup(_ ABMetricGroupId: String, _ request: DeleteABMetricGroupRequest) async throws -> DeleteABMetricGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteABMetricGroupWithOptions(ABMetricGroupId as! String, request as! DeleteABMetricGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCrowdWithOptions(_ CrowdId: String, _ request: DeleteCrowdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCrowdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCrowd",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/crowds/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CrowdId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCrowdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCrowd(_ CrowdId: String, _ request: DeleteCrowdRequest) async throws -> DeleteCrowdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteCrowdWithOptions(CrowdId as! String, request as! DeleteCrowdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEngineConfigWithOptions(_ EngineConfigId: String, _ request: DeleteEngineConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEngineConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEngineConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/engineconfigs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(EngineConfigId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEngineConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEngineConfig(_ EngineConfigId: String, _ request: DeleteEngineConfigRequest) async throws -> DeleteEngineConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEngineConfigWithOptions(EngineConfigId as! String, request as! DeleteEngineConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExperimentWithOptions(_ ExperimentId: String, _ request: DeleteExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteExperiment",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExperiment(_ ExperimentId: String, _ request: DeleteExperimentRequest) async throws -> DeleteExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteExperimentWithOptions(ExperimentId as! String, request as! DeleteExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExperimentGroupWithOptions(_ ExperimentGroupId: String, _ request: DeleteExperimentGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteExperimentGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteExperimentGroup",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentgroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentGroupId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteExperimentGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExperimentGroup(_ ExperimentGroupId: String, _ request: DeleteExperimentGroupRequest) async throws -> DeleteExperimentGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteExperimentGroupWithOptions(ExperimentGroupId as! String, request as! DeleteExperimentGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceResourceWithOptions(_ InstanceId: String, _ ResourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstanceResourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInstanceResource",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId)) + "/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstanceResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceResource(_ InstanceId: String, _ ResourceId: String) async throws -> DeleteInstanceResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteInstanceResourceWithOptions(InstanceId as! String, ResourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLaboratoryWithOptions(_ LaboratoryId: String, _ request: DeleteLaboratoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLaboratoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLaboratory",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/laboratories/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(LaboratoryId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLaboratoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLaboratory(_ LaboratoryId: String, _ request: DeleteLaboratoryRequest) async throws -> DeleteLaboratoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteLaboratoryWithOptions(LaboratoryId as! String, request as! DeleteLaboratoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLayerWithOptions(_ LayerId: String, _ request: DeleteLayerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLayerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLayer",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/layers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(LayerId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLayerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLayer(_ LayerId: String, _ request: DeleteLayerRequest) async throws -> DeleteLayerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteLayerWithOptions(LayerId as! String, request as! DeleteLayerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteParamWithOptions(_ ParamId: String, _ request: DeleteParamRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteParamResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteParam",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/params/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ParamId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteParamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteParam(_ ParamId: String, _ request: DeleteParamRequest) async throws -> DeleteParamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteParamWithOptions(ParamId as! String, request as! DeleteParamRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecallManagementServiceWithOptions(_ RecallManagementServiceId: String, _ request: DeleteRecallManagementServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRecallManagementServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRecallManagementService",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRecallManagementServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecallManagementService(_ RecallManagementServiceId: String, _ request: DeleteRecallManagementServiceRequest) async throws -> DeleteRecallManagementServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRecallManagementServiceWithOptions(RecallManagementServiceId as! String, request as! DeleteRecallManagementServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecallManagementServiceVersionWithOptions(_ RecallManagementServiceId: String, _ RecallManagementServiceVersionId: String, _ request: DeleteRecallManagementServiceVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRecallManagementServiceVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRecallManagementServiceVersion",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceVersionId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRecallManagementServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecallManagementServiceVersion(_ RecallManagementServiceId: String, _ RecallManagementServiceVersionId: String, _ request: DeleteRecallManagementServiceVersionRequest) async throws -> DeleteRecallManagementServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRecallManagementServiceVersionWithOptions(RecallManagementServiceId as! String, RecallManagementServiceVersionId as! String, request as! DeleteRecallManagementServiceVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecallManagementServiceVersionConfigWithOptions(_ RecallManagementServiceId: String, _ RecallManagementServiceVersionId: String, _ RecallManagementServiceVersionConfigId: String, _ request: DeleteRecallManagementServiceVersionConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRecallManagementServiceVersionConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRecallManagementServiceVersionConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceVersionId)) + "/configs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceVersionConfigId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRecallManagementServiceVersionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecallManagementServiceVersionConfig(_ RecallManagementServiceId: String, _ RecallManagementServiceVersionId: String, _ RecallManagementServiceVersionConfigId: String, _ request: DeleteRecallManagementServiceVersionConfigRequest) async throws -> DeleteRecallManagementServiceVersionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRecallManagementServiceVersionConfigWithOptions(RecallManagementServiceId as! String, RecallManagementServiceVersionId as! String, RecallManagementServiceVersionConfigId as! String, request as! DeleteRecallManagementServiceVersionConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecallManagementTableWithOptions(_ RecallManagementTableId: String, _ request: DeleteRecallManagementTableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRecallManagementTableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRecallManagementTable",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementtables/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementTableId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRecallManagementTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecallManagementTable(_ RecallManagementTableId: String, _ request: DeleteRecallManagementTableRequest) async throws -> DeleteRecallManagementTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRecallManagementTableWithOptions(RecallManagementTableId as! String, request as! DeleteRecallManagementTableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceRuleWithOptions(_ ResourceRuleId: String, _ request: DeleteResourceRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteResourceRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteResourceRule",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resourcerules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceRuleId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteResourceRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceRule(_ ResourceRuleId: String, _ request: DeleteResourceRuleRequest) async throws -> DeleteResourceRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteResourceRuleWithOptions(ResourceRuleId as! String, request as! DeleteResourceRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceRuleItemWithOptions(_ ResourceRuleId: String, _ ResourceRuleItemId: String, _ request: DeleteResourceRuleItemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteResourceRuleItemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteResourceRuleItem",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resourcerules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceRuleId)) + "/items/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceRuleItemId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteResourceRuleItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceRuleItem(_ ResourceRuleId: String, _ ResourceRuleItemId: String, _ request: DeleteResourceRuleItemRequest) async throws -> DeleteResourceRuleItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteResourceRuleItemWithOptions(ResourceRuleId as! String, ResourceRuleItemId as! String, request as! DeleteResourceRuleItemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSampleConsistencyJobWithOptions(_ SampleConsistencyJobId: String, _ request: DeleteSampleConsistencyJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSampleConsistencyJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSampleConsistencyJob",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/sampleconsistencyjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SampleConsistencyJobId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSampleConsistencyJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSampleConsistencyJob(_ SampleConsistencyJobId: String, _ request: DeleteSampleConsistencyJobRequest) async throws -> DeleteSampleConsistencyJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSampleConsistencyJobWithOptions(SampleConsistencyJobId as! String, request as! DeleteSampleConsistencyJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSceneWithOptions(_ SceneId: String, _ request: DeleteSceneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteScene",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/scenes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SceneId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScene(_ SceneId: String, _ request: DeleteSceneRequest) async throws -> DeleteSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSceneWithOptions(SceneId as! String, request as! DeleteSceneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSubCrowdWithOptions(_ CrowdId: String, _ SubCrowdId: String, _ request: DeleteSubCrowdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSubCrowdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSubCrowd",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/crowds/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CrowdId)) + "/subcrowds/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SubCrowdId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSubCrowdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSubCrowd(_ CrowdId: String, _ SubCrowdId: String, _ request: DeleteSubCrowdRequest) async throws -> DeleteSubCrowdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSubCrowdWithOptions(CrowdId as! String, SubCrowdId as! String, request as! DeleteSubCrowdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTableMetaWithOptions(_ TableMetaId: String, _ request: DeleteTableMetaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTableMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTableMeta",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tablemetas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TableMetaId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTableMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTableMeta(_ TableMetaId: String, _ request: DeleteTableMetaRequest) async throws -> DeleteTableMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTableMetaWithOptions(TableMetaId as! String, request as! DeleteTableMetaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrafficControlTargetWithOptions(_ TrafficControlTargetId: String, _ request: DeleteTrafficControlTargetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTrafficControlTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTrafficControlTarget",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltargets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTargetId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTrafficControlTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrafficControlTarget(_ TrafficControlTargetId: String, _ request: DeleteTrafficControlTargetRequest) async throws -> DeleteTrafficControlTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTrafficControlTargetWithOptions(TrafficControlTargetId as! String, request as! DeleteTrafficControlTargetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrafficControlTaskWithOptions(_ TrafficControlTaskId: String, _ request: DeleteTrafficControlTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTrafficControlTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTrafficControlTask",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTaskId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTrafficControlTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrafficControlTask(_ TrafficControlTaskId: String, _ request: DeleteTrafficControlTaskRequest) async throws -> DeleteTrafficControlTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTrafficControlTaskWithOptions(TrafficControlTaskId as! String, request as! DeleteTrafficControlTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateAlgorithmCustomizationScriptWithOptions(_ AlgorithmCustomizationId: String, _ request: GenerateAlgorithmCustomizationScriptRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateAlgorithmCustomizationScriptResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deployMode)) {
            body["DeployMode"] = request.deployMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleFieldTypes)) {
            body["ModuleFieldTypes"] = request.moduleFieldTypes ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateAlgorithmCustomizationScript",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/algorithmcustomizations/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmCustomizationId)) + "/action/generatescript",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateAlgorithmCustomizationScriptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateAlgorithmCustomizationScript(_ AlgorithmCustomizationId: String, _ request: GenerateAlgorithmCustomizationScriptRequest) async throws -> GenerateAlgorithmCustomizationScriptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateAlgorithmCustomizationScriptWithOptions(AlgorithmCustomizationId as! String, request as! GenerateAlgorithmCustomizationScriptRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateTrafficControlTaskCodeWithOptions(_ TrafficControlTaskId: String, _ request: GenerateTrafficControlTaskCodeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateTrafficControlTaskCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateTrafficControlTaskCode",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTaskId)) + "/action/generatecode",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateTrafficControlTaskCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateTrafficControlTaskCode(_ TrafficControlTaskId: String, _ request: GenerateTrafficControlTaskCodeRequest) async throws -> GenerateTrafficControlTaskCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateTrafficControlTaskCodeWithOptions(TrafficControlTaskId as! String, request as! GenerateTrafficControlTaskCodeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateTrafficControlTaskConfigWithOptions(_ TrafficControlTaskId: String, _ request: GenerateTrafficControlTaskConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateTrafficControlTaskConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateTrafficControlTaskConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTaskId)) + "/action/generateconfig",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateTrafficControlTaskConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateTrafficControlTaskConfig(_ TrafficControlTaskId: String, _ request: GenerateTrafficControlTaskConfigRequest) async throws -> GenerateTrafficControlTaskConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateTrafficControlTaskConfigWithOptions(TrafficControlTaskId as! String, request as! GenerateTrafficControlTaskConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getABMetricWithOptions(_ ABMetricId: String, _ request: GetABMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetABMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetABMetric",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/abmetrics/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ABMetricId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetABMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getABMetric(_ ABMetricId: String, _ request: GetABMetricRequest) async throws -> GetABMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getABMetricWithOptions(ABMetricId as! String, request as! GetABMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getABMetricGroupWithOptions(_ ABMetricGroupId: String, _ request: GetABMetricGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetABMetricGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetABMetricGroup",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/abmetricgroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ABMetricGroupId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetABMetricGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getABMetricGroup(_ ABMetricGroupId: String, _ request: GetABMetricGroupRequest) async throws -> GetABMetricGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getABMetricGroupWithOptions(ABMetricGroupId as! String, request as! GetABMetricGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCalculationJobWithOptions(_ CalculationJobId: String, _ request: GetCalculationJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCalculationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCalculationJob",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/calculationjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CalculationJobId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCalculationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCalculationJob(_ CalculationJobId: String, _ request: GetCalculationJobRequest) async throws -> GetCalculationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCalculationJobWithOptions(CalculationJobId as! String, request as! GetCalculationJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEngineConfigWithOptions(_ EngineConfigId: String, _ request: GetEngineConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEngineConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEngineConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/engineconfigs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(EngineConfigId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEngineConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEngineConfig(_ EngineConfigId: String, _ request: GetEngineConfigRequest) async throws -> GetEngineConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEngineConfigWithOptions(EngineConfigId as! String, request as! GetEngineConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExperimentWithOptions(_ ExperimentId: String, _ request: GetExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetExperiment",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExperiment(_ ExperimentId: String, _ request: GetExperimentRequest) async throws -> GetExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getExperimentWithOptions(ExperimentId as! String, request as! GetExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExperimentGroupWithOptions(_ ExperimentGroupId: String, _ request: GetExperimentGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetExperimentGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetExperimentGroup",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentgroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentGroupId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetExperimentGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExperimentGroup(_ ExperimentGroupId: String, _ request: GetExperimentGroupRequest) async throws -> GetExperimentGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getExperimentGroupWithOptions(ExperimentGroupId as! String, request as! GetExperimentGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFeatureConsistencyCheckJobWithOptions(_ FeatureConsistencyCheckJobId: String, _ request: GetFeatureConsistencyCheckJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFeatureConsistencyCheckJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFeatureConsistencyCheckJob",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(FeatureConsistencyCheckJobId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFeatureConsistencyCheckJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFeatureConsistencyCheckJob(_ FeatureConsistencyCheckJobId: String, _ request: GetFeatureConsistencyCheckJobRequest) async throws -> GetFeatureConsistencyCheckJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFeatureConsistencyCheckJobWithOptions(FeatureConsistencyCheckJobId as! String, request as! GetFeatureConsistencyCheckJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFeatureConsistencyCheckJobConfigWithOptions(_ FeatureConsistencyCheckJobConfigId: String, _ request: GetFeatureConsistencyCheckJobConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFeatureConsistencyCheckJobConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFeatureConsistencyCheckJobConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobconfigs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(FeatureConsistencyCheckJobConfigId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFeatureConsistencyCheckJobConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFeatureConsistencyCheckJobConfig(_ FeatureConsistencyCheckJobConfigId: String, _ request: GetFeatureConsistencyCheckJobConfigRequest) async throws -> GetFeatureConsistencyCheckJobConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFeatureConsistencyCheckJobConfigWithOptions(FeatureConsistencyCheckJobConfigId as! String, request as! GetFeatureConsistencyCheckJobConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceWithOptions(_ InstanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstance",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstance(_ InstanceId: String) async throws -> GetInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceWithOptions(InstanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceResourceWithOptions(_ InstanceId: String, _ ResourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceResourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceResource",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId)) + "/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceResource(_ InstanceId: String, _ ResourceId: String) async throws -> GetInstanceResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceResourceWithOptions(InstanceId as! String, ResourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceResourceTableWithOptions(_ InstanceId: String, _ ResourceId: String, _ TableName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceResourceTableResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceResourceTable",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId)) + "/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId)) + "/tables/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TableName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceResourceTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceResourceTable(_ InstanceId: String, _ ResourceId: String, _ TableName: String) async throws -> GetInstanceResourceTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceResourceTableWithOptions(InstanceId as! String, ResourceId as! String, TableName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLaboratoryWithOptions(_ LaboratoryId: String, _ request: GetLaboratoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLaboratoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLaboratory",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/laboratories/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(LaboratoryId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLaboratoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLaboratory(_ LaboratoryId: String, _ request: GetLaboratoryRequest) async throws -> GetLaboratoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLaboratoryWithOptions(LaboratoryId as! String, request as! GetLaboratoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLayerWithOptions(_ LayerId: String, _ request: GetLayerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLayerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLayer",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/layers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(LayerId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLayerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLayer(_ LayerId: String, _ request: GetLayerRequest) async throws -> GetLayerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLayerWithOptions(LayerId as! String, request as! GetLayerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecallManagementConfigWithOptions(_ request: GetRecallManagementConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRecallManagementConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRecallManagementConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementconfigs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRecallManagementConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecallManagementConfig(_ request: GetRecallManagementConfigRequest) async throws -> GetRecallManagementConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRecallManagementConfigWithOptions(request as! GetRecallManagementConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecallManagementJobWithOptions(_ RecallManagementJobId: String, _ request: GetRecallManagementJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRecallManagementJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRecallManagementJob",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementJobId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRecallManagementJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecallManagementJob(_ RecallManagementJobId: String, _ request: GetRecallManagementJobRequest) async throws -> GetRecallManagementJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRecallManagementJobWithOptions(RecallManagementJobId as! String, request as! GetRecallManagementJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecallManagementServiceWithOptions(_ RecallManagementServiceId: String, _ request: GetRecallManagementServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRecallManagementServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRecallManagementService",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRecallManagementServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecallManagementService(_ RecallManagementServiceId: String, _ request: GetRecallManagementServiceRequest) async throws -> GetRecallManagementServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRecallManagementServiceWithOptions(RecallManagementServiceId as! String, request as! GetRecallManagementServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecallManagementServiceVersionWithOptions(_ RecallManagementServiceId: String, _ RecallManagementServiceVersionId: String, _ request: GetRecallManagementServiceVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRecallManagementServiceVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRecallManagementServiceVersion",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceVersionId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRecallManagementServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecallManagementServiceVersion(_ RecallManagementServiceId: String, _ RecallManagementServiceVersionId: String, _ request: GetRecallManagementServiceVersionRequest) async throws -> GetRecallManagementServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRecallManagementServiceVersionWithOptions(RecallManagementServiceId as! String, RecallManagementServiceVersionId as! String, request as! GetRecallManagementServiceVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecallManagementServiceVersionConfigWithOptions(_ RecallManagementServiceId: String, _ RecallManagementServiceVersionId: String, _ RecallManagementServiceVersionConfigId: String, _ request: GetRecallManagementServiceVersionConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRecallManagementServiceVersionConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRecallManagementServiceVersionConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceVersionId)) + "/configs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceVersionConfigId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRecallManagementServiceVersionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecallManagementServiceVersionConfig(_ RecallManagementServiceId: String, _ RecallManagementServiceVersionId: String, _ RecallManagementServiceVersionConfigId: String, _ request: GetRecallManagementServiceVersionConfigRequest) async throws -> GetRecallManagementServiceVersionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRecallManagementServiceVersionConfigWithOptions(RecallManagementServiceId as! String, RecallManagementServiceVersionId as! String, RecallManagementServiceVersionConfigId as! String, request as! GetRecallManagementServiceVersionConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecallManagementTableWithOptions(_ RecallManagementTableId: String, _ request: GetRecallManagementTableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRecallManagementTableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRecallManagementTable",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementtables/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementTableId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRecallManagementTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRecallManagementTable(_ RecallManagementTableId: String, _ request: GetRecallManagementTableRequest) async throws -> GetRecallManagementTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRecallManagementTableWithOptions(RecallManagementTableId as! String, request as! GetRecallManagementTableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceRuleWithOptions(_ ResourceRuleId: String, _ request: GetResourceRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceRule",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resourcerules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceRuleId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceRule(_ ResourceRuleId: String, _ request: GetResourceRuleRequest) async throws -> GetResourceRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceRuleWithOptions(ResourceRuleId as! String, request as! GetResourceRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSampleConsistencyJobWithOptions(_ SampleConsistencyJobId: String, _ request: GetSampleConsistencyJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSampleConsistencyJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSampleConsistencyJob",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/sampleconsistencyjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SampleConsistencyJobId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSampleConsistencyJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSampleConsistencyJob(_ SampleConsistencyJobId: String, _ request: GetSampleConsistencyJobRequest) async throws -> GetSampleConsistencyJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSampleConsistencyJobWithOptions(SampleConsistencyJobId as! String, request as! GetSampleConsistencyJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSceneWithOptions(_ SceneId: String, _ request: GetSceneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetScene",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/scenes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SceneId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScene(_ SceneId: String, _ request: GetSceneRequest) async throws -> GetSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSceneWithOptions(SceneId as! String, request as! GetSceneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceWithOptions(_ ServiceId: String, _ request: GetServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetService",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/services/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getService(_ ServiceId: String, _ request: GetServiceRequest) async throws -> GetServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceWithOptions(ServiceId as! String, request as! GetServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubCrowdWithOptions(_ CrowdId: String, _ SubCrowdId: String, _ request: GetSubCrowdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSubCrowdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSubCrowd",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/crowds/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CrowdId)) + "/subcrowds/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SubCrowdId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSubCrowdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubCrowd(_ CrowdId: String, _ SubCrowdId: String, _ request: GetSubCrowdRequest) async throws -> GetSubCrowdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSubCrowdWithOptions(CrowdId as! String, SubCrowdId as! String, request as! GetSubCrowdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableMetaWithOptions(_ TableMetaId: String, _ request: GetTableMetaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableMeta",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tablemetas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TableMetaId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableMeta(_ TableMetaId: String, _ request: GetTableMetaRequest) async throws -> GetTableMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTableMetaWithOptions(TableMetaId as! String, request as! GetTableMetaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrafficControlTargetWithOptions(_ TrafficControlTargetId: String, _ request: GetTrafficControlTargetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTrafficControlTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrafficControlTarget",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltargets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTargetId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTrafficControlTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrafficControlTarget(_ TrafficControlTargetId: String, _ request: GetTrafficControlTargetRequest) async throws -> GetTrafficControlTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTrafficControlTargetWithOptions(TrafficControlTargetId as! String, request as! GetTrafficControlTargetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrafficControlTaskWithOptions(_ TrafficControlTaskId: String, _ request: GetTrafficControlTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTrafficControlTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.controlTargetFilter)) {
            query["ControlTargetFilter"] = request.controlTargetFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environment)) {
            query["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["Version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrafficControlTask",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTaskId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTrafficControlTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrafficControlTask(_ TrafficControlTaskId: String, _ request: GetTrafficControlTaskRequest) async throws -> GetTrafficControlTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTrafficControlTaskWithOptions(TrafficControlTaskId as! String, request as! GetTrafficControlTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrafficControlTaskTrafficWithOptions(_ TrafficControlTaskId: String, _ request: GetTrafficControlTaskTrafficRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTrafficControlTaskTrafficResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            query["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrafficControlTaskTraffic",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTaskId)) + "/trafficinfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTrafficControlTaskTrafficResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrafficControlTaskTraffic(_ TrafficControlTaskId: String, _ request: GetTrafficControlTaskTrafficRequest) async throws -> GetTrafficControlTaskTrafficResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTrafficControlTaskTrafficWithOptions(TrafficControlTaskId as! String, request as! GetTrafficControlTaskTrafficRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listABMetricGroupsWithOptions(_ request: ListABMetricGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListABMetricGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.realtime)) {
            query["Realtime"] = request.realtime!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListABMetricGroups",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/abmetricgroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListABMetricGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listABMetricGroups(_ request: ListABMetricGroupsRequest) async throws -> ListABMetricGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listABMetricGroupsWithOptions(request as! ListABMetricGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listABMetricsWithOptions(_ request: ListABMetricsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListABMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.realtime)) {
            query["Realtime"] = request.realtime!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableMetaId)) {
            query["TableMetaId"] = request.tableMetaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListABMetrics",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/abmetrics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListABMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listABMetrics(_ request: ListABMetricsRequest) async throws -> ListABMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listABMetricsWithOptions(request as! ListABMetricsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCalculationJobsWithOptions(_ request: ListCalculationJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCalculationJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCalculationJobs",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/calculationjobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCalculationJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCalculationJobs(_ request: ListCalculationJobsRequest) async throws -> ListCalculationJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listCalculationJobsWithOptions(request as! ListCalculationJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCrowdUsersWithOptions(_ CrowdId: String, _ request: ListCrowdUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCrowdUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCrowdUsers",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/crowds/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CrowdId)) + "/users",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCrowdUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCrowdUsers(_ CrowdId: String, _ request: ListCrowdUsersRequest) async throws -> ListCrowdUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listCrowdUsersWithOptions(CrowdId as! String, request as! ListCrowdUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCrowdsWithOptions(_ request: ListCrowdsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCrowdsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCrowds",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/crowds",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCrowdsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCrowds(_ request: ListCrowdsRequest) async throws -> ListCrowdsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listCrowdsWithOptions(request as! ListCrowdsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEngineConfigsWithOptions(_ request: ListEngineConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEngineConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            query["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["Version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEngineConfigs",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/engineconfigs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEngineConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEngineConfigs(_ request: ListEngineConfigsRequest) async throws -> ListEngineConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEngineConfigsWithOptions(request as! ListEngineConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExperimentGroupsWithOptions(_ request: ListExperimentGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListExperimentGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.layerId)) {
            query["LayerId"] = request.layerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeRangeEnd)) {
            query["TimeRangeEnd"] = request.timeRangeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeRangeStart)) {
            query["TimeRangeStart"] = request.timeRangeStart ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListExperimentGroups",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentgroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListExperimentGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExperimentGroups(_ request: ListExperimentGroupsRequest) async throws -> ListExperimentGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listExperimentGroupsWithOptions(request as! ListExperimentGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExperimentsWithOptions(_ request: ListExperimentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListExperimentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.experimentGroupId)) {
            query["ExperimentGroupId"] = request.experimentGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListExperiments",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListExperimentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExperiments(_ request: ListExperimentsRequest) async throws -> ListExperimentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listExperimentsWithOptions(request as! ListExperimentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFeatureConsistencyCheckJobConfigsWithOptions(_ request: ListFeatureConsistencyCheckJobConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFeatureConsistencyCheckJobConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFeatureConsistencyCheckJobConfigs",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobconfigs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFeatureConsistencyCheckJobConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFeatureConsistencyCheckJobConfigs(_ request: ListFeatureConsistencyCheckJobConfigsRequest) async throws -> ListFeatureConsistencyCheckJobConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFeatureConsistencyCheckJobConfigsWithOptions(request as! ListFeatureConsistencyCheckJobConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFeatureConsistencyCheckJobFeatureReportsWithOptions(_ FeatureConsistencyCheckJobId: String, _ request: ListFeatureConsistencyCheckJobFeatureReportsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFeatureConsistencyCheckJobFeatureReportsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logItemId)) {
            query["LogItemId"] = request.logItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRequestId)) {
            query["LogRequestId"] = request.logRequestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserId)) {
            query["LogUserId"] = request.logUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFeatureConsistencyCheckJobFeatureReports",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(FeatureConsistencyCheckJobId)) + "/featurereports",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFeatureConsistencyCheckJobFeatureReportsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFeatureConsistencyCheckJobFeatureReports(_ FeatureConsistencyCheckJobId: String, _ request: ListFeatureConsistencyCheckJobFeatureReportsRequest) async throws -> ListFeatureConsistencyCheckJobFeatureReportsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFeatureConsistencyCheckJobFeatureReportsWithOptions(FeatureConsistencyCheckJobId as! String, request as! ListFeatureConsistencyCheckJobFeatureReportsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFeatureConsistencyCheckJobScoreReportsWithOptions(_ FeatureConsistencyCheckJobId: String, _ tmpReq: ListFeatureConsistencyCheckJobScoreReportsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFeatureConsistencyCheckJobScoreReportsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListFeatureConsistencyCheckJobScoreReportsShrinkRequest = ListFeatureConsistencyCheckJobScoreReportsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.excludeRequestIds)) {
            request.excludeRequestIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.excludeRequestIds, "ExcludeRequestIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludeRequestIdsShrink)) {
            query["ExcludeRequestIds"] = request.excludeRequestIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFeatureConsistencyCheckJobScoreReports",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(FeatureConsistencyCheckJobId)) + "/scorereports",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFeatureConsistencyCheckJobScoreReportsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFeatureConsistencyCheckJobScoreReports(_ FeatureConsistencyCheckJobId: String, _ request: ListFeatureConsistencyCheckJobScoreReportsRequest) async throws -> ListFeatureConsistencyCheckJobScoreReportsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFeatureConsistencyCheckJobScoreReportsWithOptions(FeatureConsistencyCheckJobId as! String, request as! ListFeatureConsistencyCheckJobScoreReportsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFeatureConsistencyCheckJobsWithOptions(_ request: ListFeatureConsistencyCheckJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFeatureConsistencyCheckJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFeatureConsistencyCheckJobs",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFeatureConsistencyCheckJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFeatureConsistencyCheckJobs(_ request: ListFeatureConsistencyCheckJobsRequest) async throws -> ListFeatureConsistencyCheckJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFeatureConsistencyCheckJobsWithOptions(request as! ListFeatureConsistencyCheckJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceResourcesWithOptions(_ InstanceId: String, _ request: ListInstanceResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.group)) {
            query["Group"] = request.group ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstanceResources",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId)) + "/resources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceResources(_ InstanceId: String, _ request: ListInstanceResourcesRequest) async throws -> ListInstanceResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstanceResourcesWithOptions(InstanceId as! String, request as! ListInstanceResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesWithOptions(_ request: ListInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstances",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances",
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
    public func listLaboratoriesWithOptions(_ request: ListLaboratoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLaboratoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            query["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLaboratories",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/laboratories",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLaboratoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLaboratories(_ request: ListLaboratoriesRequest) async throws -> ListLaboratoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listLaboratoriesWithOptions(request as! ListLaboratoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLayersWithOptions(_ request: ListLayersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLayersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.laboratoryId)) {
            query["LaboratoryId"] = request.laboratoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLayers",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/layers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLayersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLayers(_ request: ListLayersRequest) async throws -> ListLayersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listLayersWithOptions(request as! ListLayersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listParamsWithOptions(_ request: ListParamsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListParamsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encrypted)) {
            query["Encrypted"] = request.encrypted!;
        }
        if (!TeaUtils.Client.isUnset(request.environment)) {
            query["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListParams",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/params",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListParamsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listParams(_ request: ListParamsRequest) async throws -> ListParamsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listParamsWithOptions(request as! ListParamsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecallManagementJobsWithOptions(_ request: ListRecallManagementJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRecallManagementJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.condition)) {
            query["Condition"] = request.condition ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRecallManagementJobs",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementjobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRecallManagementJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecallManagementJobs(_ request: ListRecallManagementJobsRequest) async throws -> ListRecallManagementJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRecallManagementJobsWithOptions(request as! ListRecallManagementJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecallManagementServiceVersionsWithOptions(_ RecallManagementServiceId: String, _ request: ListRecallManagementServiceVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRecallManagementServiceVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRecallManagementServiceVersions",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)) + "/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRecallManagementServiceVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecallManagementServiceVersions(_ RecallManagementServiceId: String, _ request: ListRecallManagementServiceVersionsRequest) async throws -> ListRecallManagementServiceVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRecallManagementServiceVersionsWithOptions(RecallManagementServiceId as! String, request as! ListRecallManagementServiceVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecallManagementServicesWithOptions(_ request: ListRecallManagementServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRecallManagementServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRecallManagementServices",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRecallManagementServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecallManagementServices(_ request: ListRecallManagementServicesRequest) async throws -> ListRecallManagementServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRecallManagementServicesWithOptions(request as! ListRecallManagementServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecallManagementTableVersionsWithOptions(_ RecallManagementTableId: String, _ request: ListRecallManagementTableVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRecallManagementTableVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRecallManagementTableVersions",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementtables/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementTableId)) + "/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRecallManagementTableVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecallManagementTableVersions(_ RecallManagementTableId: String, _ request: ListRecallManagementTableVersionsRequest) async throws -> ListRecallManagementTableVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRecallManagementTableVersionsWithOptions(RecallManagementTableId as! String, request as! ListRecallManagementTableVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecallManagementTablesWithOptions(_ request: ListRecallManagementTablesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRecallManagementTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRecallManagementTables",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementtables",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRecallManagementTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecallManagementTables(_ request: ListRecallManagementTablesRequest) async throws -> ListRecallManagementTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRecallManagementTablesWithOptions(request as! ListRecallManagementTablesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceRulesWithOptions(_ request: ListResourceRulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceRuleId)) {
            query["ResourceRuleId"] = request.resourceRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceRuleName)) {
            query["ResourceRuleName"] = request.resourceRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceRules",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resourcerules",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceRules(_ request: ListResourceRulesRequest) async throws -> ListResourceRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceRulesWithOptions(request as! ListResourceRulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSampleConsistencyJobsWithOptions(_ request: ListSampleConsistencyJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSampleConsistencyJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSampleConsistencyJobs",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/sampleconsistencyjobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSampleConsistencyJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSampleConsistencyJobs(_ request: ListSampleConsistencyJobsRequest) async throws -> ListSampleConsistencyJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSampleConsistencyJobsWithOptions(request as! ListSampleConsistencyJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScenesWithOptions(_ request: ListScenesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListScenesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListScenes",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/scenes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListScenesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScenes(_ request: ListScenesRequest) async throws -> ListScenesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listScenesWithOptions(request as! ListScenesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubCrowdsWithOptions(_ CrowdId: String, _ request: ListSubCrowdsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSubCrowdsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSubCrowds",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/crowds/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CrowdId)) + "/subcrowds",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSubCrowdsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubCrowds(_ CrowdId: String, _ request: ListSubCrowdsRequest) async throws -> ListSubCrowdsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSubCrowdsWithOptions(CrowdId as! String, request as! ListSubCrowdsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTableMetasWithOptions(_ request: ListTableMetasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTableMetasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.module)) {
            query["Module"] = request.module ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTableMetas",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tablemetas",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTableMetasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTableMetas(_ request: ListTableMetasRequest) async throws -> ListTableMetasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTableMetasWithOptions(request as! ListTableMetasRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrafficControlTargetTrafficHistoryWithOptions(_ TrafficControlTargetId: String, _ request: ListTrafficControlTargetTrafficHistoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrafficControlTargetTrafficHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environment)) {
            query["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.experimentGroupId)) {
            query["ExperimentGroupId"] = request.experimentGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.experimentId)) {
            query["ExperimentId"] = request.experimentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["ItemId"] = request.itemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threshold)) {
            query["Threshold"] = request.threshold ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrafficControlTargetTrafficHistory",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltargets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTargetId)) + "/traffichistories",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrafficControlTargetTrafficHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrafficControlTargetTrafficHistory(_ TrafficControlTargetId: String, _ request: ListTrafficControlTargetTrafficHistoryRequest) async throws -> ListTrafficControlTargetTrafficHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTrafficControlTargetTrafficHistoryWithOptions(TrafficControlTargetId as! String, request as! ListTrafficControlTargetTrafficHistoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrafficControlTasksWithOptions(_ request: ListTrafficControlTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrafficControlTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.controlTargetFilter)) {
            query["ControlTargetFilter"] = request.controlTargetFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environment)) {
            query["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlTaskId)) {
            query["TrafficControlTaskId"] = request.trafficControlTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["Version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrafficControlTasks",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrafficControlTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrafficControlTasks(_ request: ListTrafficControlTasksRequest) async throws -> ListTrafficControlTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTrafficControlTasksWithOptions(request as! ListTrafficControlTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineExperimentWithOptions(_ ExperimentId: String, _ request: OfflineExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineExperiment",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/action/offline",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineExperiment(_ ExperimentId: String, _ request: OfflineExperimentRequest) async throws -> OfflineExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await offlineExperimentWithOptions(ExperimentId as! String, request as! OfflineExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineExperimentGroupWithOptions(_ ExperimentGroupId: String, _ request: OfflineExperimentGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineExperimentGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineExperimentGroup",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentgroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentGroupId)) + "/action/offline",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineExperimentGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineExperimentGroup(_ ExperimentGroupId: String, _ request: OfflineExperimentGroupRequest) async throws -> OfflineExperimentGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await offlineExperimentGroupWithOptions(ExperimentGroupId as! String, request as! OfflineExperimentGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineLaboratoryWithOptions(_ LaboratoryId: String, _ request: OfflineLaboratoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineLaboratoryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineLaboratory",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/laboratories/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(LaboratoryId)) + "/action/offline",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineLaboratoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineLaboratory(_ LaboratoryId: String, _ request: OfflineLaboratoryRequest) async throws -> OfflineLaboratoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await offlineLaboratoryWithOptions(LaboratoryId as! String, request as! OfflineLaboratoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineRecallManagementServiceWithOptions(_ RecallManagementServiceId: String, _ request: OfflineRecallManagementServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineRecallManagementServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineRecallManagementService",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)) + "/action/offline",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineRecallManagementServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineRecallManagementService(_ RecallManagementServiceId: String, _ request: OfflineRecallManagementServiceRequest) async throws -> OfflineRecallManagementServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await offlineRecallManagementServiceWithOptions(RecallManagementServiceId as! String, request as! OfflineRecallManagementServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func onlineExperimentWithOptions(_ ExperimentId: String, _ request: OnlineExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OnlineExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OnlineExperiment",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/action/online",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OnlineExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func onlineExperiment(_ ExperimentId: String, _ request: OnlineExperimentRequest) async throws -> OnlineExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await onlineExperimentWithOptions(ExperimentId as! String, request as! OnlineExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func onlineExperimentGroupWithOptions(_ ExperimentGroupId: String, _ request: OnlineExperimentGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OnlineExperimentGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OnlineExperimentGroup",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentgroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentGroupId)) + "/action/online",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OnlineExperimentGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func onlineExperimentGroup(_ ExperimentGroupId: String, _ request: OnlineExperimentGroupRequest) async throws -> OnlineExperimentGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await onlineExperimentGroupWithOptions(ExperimentGroupId as! String, request as! OnlineExperimentGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func onlineLaboratoryWithOptions(_ LaboratoryId: String, _ request: OnlineLaboratoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OnlineLaboratoryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OnlineLaboratory",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/laboratories/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(LaboratoryId)) + "/action/online",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OnlineLaboratoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func onlineLaboratory(_ LaboratoryId: String, _ request: OnlineLaboratoryRequest) async throws -> OnlineLaboratoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await onlineLaboratoryWithOptions(LaboratoryId as! String, request as! OnlineLaboratoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func onlineRecallManagementServiceWithOptions(_ RecallManagementServiceId: String, _ request: OnlineRecallManagementServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OnlineRecallManagementServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OnlineRecallManagementService",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)) + "/action/online",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OnlineRecallManagementServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func onlineRecallManagementService(_ RecallManagementServiceId: String, _ request: OnlineRecallManagementServiceRequest) async throws -> OnlineRecallManagementServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await onlineRecallManagementServiceWithOptions(RecallManagementServiceId as! String, request as! OnlineRecallManagementServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishRecallManagementTableWithOptions(_ RecallManagementTableId: String, _ request: PublishRecallManagementTableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishRecallManagementTableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partition)) {
            body["Partition"] = request.partition ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.skipThresholdCheck)) {
            body["SkipThresholdCheck"] = request.skipThresholdCheck!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishRecallManagementTable",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementtables/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementTableId)) + "/action/publish",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishRecallManagementTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishRecallManagementTable(_ RecallManagementTableId: String, _ request: PublishRecallManagementTableRequest) async throws -> PublishRecallManagementTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await publishRecallManagementTableWithOptions(RecallManagementTableId as! String, request as! PublishRecallManagementTableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushAllExperimentWithOptions(_ ExperimentId: String, _ request: PushAllExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PushAllExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushAllExperiment",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/action/pushall",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushAllExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushAllExperiment(_ ExperimentId: String, _ request: PushAllExperimentRequest) async throws -> PushAllExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await pushAllExperimentWithOptions(ExperimentId as! String, request as! PushAllExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushResourceRuleWithOptions(_ ResourceRuleId: String, _ tmpReq: PushResourceRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PushResourceRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PushResourceRuleShrinkRequest = PushResourceRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.metricInfo)) {
            request.metricInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.metricInfo, "MetricInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricInfoShrink)) {
            query["MetricInfo"] = request.metricInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushResourceRule",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resourcerules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceRuleId)) + "/action/push",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushResourceRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushResourceRule(_ ResourceRuleId: String, _ request: PushResourceRuleRequest) async throws -> PushResourceRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await pushResourceRuleWithOptions(ResourceRuleId as! String, request as! PushResourceRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySampleConsistencyJobDifferenceWithOptions(_ SampleConsistencyJobId: String, _ request: QuerySampleConsistencyJobDifferenceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySampleConsistencyJobDifferenceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.featureName)) {
            query["FeatureName"] = request.featureName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureType)) {
            query["FeatureType"] = request.featureType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySampleConsistencyJobDifference",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/sampleconsistencyjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SampleConsistencyJobId)) + "/action/querydifference",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySampleConsistencyJobDifferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySampleConsistencyJobDifference(_ SampleConsistencyJobId: String, _ request: QuerySampleConsistencyJobDifferenceRequest) async throws -> QuerySampleConsistencyJobDifferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await querySampleConsistencyJobDifferenceWithOptions(SampleConsistencyJobId as! String, request as! QuerySampleConsistencyJobDifferenceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrafficControlTargetItemReportDetailWithOptions(_ TrafficControlTargetId: String, _ request: QueryTrafficControlTargetItemReportDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTrafficControlTargetItemReportDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.date)) {
            query["Date"] = request.date ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environment)) {
            query["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTrafficControlTargetItemReportDetail",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltargets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTargetId)) + "/itemcontrolreportdetail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTrafficControlTargetItemReportDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrafficControlTargetItemReportDetail(_ TrafficControlTargetId: String, _ request: QueryTrafficControlTargetItemReportDetailRequest) async throws -> QueryTrafficControlTargetItemReportDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryTrafficControlTargetItemReportDetailWithOptions(TrafficControlTargetId as! String, request as! QueryTrafficControlTargetItemReportDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseTrafficControlTaskWithOptions(_ TrafficControlTaskId: String, _ request: ReleaseTrafficControlTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseTrafficControlTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseTrafficControlTask",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTaskId)) + "/action/release",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseTrafficControlTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseTrafficControlTask(_ TrafficControlTaskId: String, _ request: ReleaseTrafficControlTaskRequest) async throws -> ReleaseTrafficControlTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await releaseTrafficControlTaskWithOptions(TrafficControlTaskId as! String, request as! ReleaseTrafficControlTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportABMetricGroupWithOptions(_ ABMetricGroupId: String, _ request: ReportABMetricGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReportABMetricGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseExperimentId)) {
            body["BaseExperimentId"] = request.baseExperimentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dimensionFields)) {
            body["DimensionFields"] = request.dimensionFields ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.experimentGroupId)) {
            body["ExperimentGroupId"] = request.experimentGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.experimentIds)) {
            body["ExperimentIds"] = request.experimentIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reportType)) {
            body["ReportType"] = request.reportType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["StartDate"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStatisticsMethod)) {
            body["TimeStatisticsMethod"] = request.timeStatisticsMethod ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReportABMetricGroup",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/abmetricgroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ABMetricGroupId)) + "/action/report",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReportABMetricGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportABMetricGroup(_ ABMetricGroupId: String, _ request: ReportABMetricGroupRequest) async throws -> ReportABMetricGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await reportABMetricGroupWithOptions(ABMetricGroupId as! String, request as! ReportABMetricGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportSampleConsistencyJobWithOptions(_ SampleConsistencyJobId: String, _ request: ReportSampleConsistencyJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReportSampleConsistencyJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReportSampleConsistencyJob",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/sampleconsistencyjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SampleConsistencyJobId)) + "/action/report",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReportSampleConsistencyJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportSampleConsistencyJob(_ SampleConsistencyJobId: String, _ request: ReportSampleConsistencyJobRequest) async throws -> ReportSampleConsistencyJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await reportSampleConsistencyJobWithOptions(SampleConsistencyJobId as! String, request as! ReportSampleConsistencyJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func splitTrafficControlTargetWithOptions(_ TrafficControlTargetId: String, _ request: SplitTrafficControlTargetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SplitTrafficControlTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setPoints)) {
            body["SetPoints"] = request.setPoints ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.setValues)) {
            body["SetValues"] = request.setValues ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.timePoints)) {
            body["TimePoints"] = request.timePoints ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SplitTrafficControlTarget",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltargets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTargetId)) + "/action/split",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SplitTrafficControlTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func splitTrafficControlTarget(_ TrafficControlTargetId: String, _ request: SplitTrafficControlTargetRequest) async throws -> SplitTrafficControlTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await splitTrafficControlTargetWithOptions(TrafficControlTargetId as! String, request as! SplitTrafficControlTargetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startTrafficControlTargetWithOptions(_ TrafficControlTargetId: String, _ request: StartTrafficControlTargetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartTrafficControlTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartTrafficControlTarget",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltargets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTargetId)) + "/action/start",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartTrafficControlTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startTrafficControlTarget(_ TrafficControlTargetId: String, _ request: StartTrafficControlTargetRequest) async throws -> StartTrafficControlTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startTrafficControlTargetWithOptions(TrafficControlTargetId as! String, request as! StartTrafficControlTargetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startTrafficControlTaskWithOptions(_ TrafficControlTaskId: String, _ request: StartTrafficControlTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartTrafficControlTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartTrafficControlTask",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTaskId)) + "/action/start",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartTrafficControlTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startTrafficControlTask(_ TrafficControlTaskId: String, _ request: StartTrafficControlTaskRequest) async throws -> StartTrafficControlTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startTrafficControlTaskWithOptions(TrafficControlTaskId as! String, request as! StartTrafficControlTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopSampleConsistencyJobWithOptions(_ SampleConsistencyJobId: String, _ request: StopSampleConsistencyJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopSampleConsistencyJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopSampleConsistencyJob",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/sampleconsistencyjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SampleConsistencyJobId)) + "/action/stop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopSampleConsistencyJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopSampleConsistencyJob(_ SampleConsistencyJobId: String, _ request: StopSampleConsistencyJobRequest) async throws -> StopSampleConsistencyJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopSampleConsistencyJobWithOptions(SampleConsistencyJobId as! String, request as! StopSampleConsistencyJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopTrafficControlTargetWithOptions(_ TrafficControlTargetId: String, _ request: StopTrafficControlTargetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopTrafficControlTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopTrafficControlTarget",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltargets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTargetId)) + "/action/stop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopTrafficControlTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopTrafficControlTarget(_ TrafficControlTargetId: String, _ request: StopTrafficControlTargetRequest) async throws -> StopTrafficControlTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopTrafficControlTargetWithOptions(TrafficControlTargetId as! String, request as! StopTrafficControlTargetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopTrafficControlTaskWithOptions(_ TrafficControlTaskId: String, _ request: StopTrafficControlTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopTrafficControlTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopTrafficControlTask",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTaskId)) + "/action/stop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopTrafficControlTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopTrafficControlTask(_ TrafficControlTaskId: String, _ request: StopTrafficControlTaskRequest) async throws -> StopTrafficControlTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopTrafficControlTaskWithOptions(TrafficControlTaskId as! String, request as! StopTrafficControlTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncFeatureConsistencyCheckJobReplayLogWithOptions(_ request: SyncFeatureConsistencyCheckJobReplayLogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncFeatureConsistencyCheckJobReplayLogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contextFeatures)) {
            body["ContextFeatures"] = request.contextFeatures ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureConsistencyCheckJobConfigId)) {
            body["FeatureConsistencyCheckJobConfigId"] = request.featureConsistencyCheckJobConfigId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generatedFeatures)) {
            body["GeneratedFeatures"] = request.generatedFeatures ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logItemId)) {
            body["LogItemId"] = request.logItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRequestId)) {
            body["LogRequestId"] = request.logRequestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRequestTime)) {
            body["LogRequestTime"] = request.logRequestTime!;
        }
        if (!TeaUtils.Client.isUnset(request.logUserId)) {
            body["LogUserId"] = request.logUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rawFeatures)) {
            body["RawFeatures"] = request.rawFeatures ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            body["SceneName"] = request.sceneName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncFeatureConsistencyCheckJobReplayLog",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobs/action/syncreplaylog",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncFeatureConsistencyCheckJobReplayLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncFeatureConsistencyCheckJobReplayLog(_ request: SyncFeatureConsistencyCheckJobReplayLogRequest) async throws -> SyncFeatureConsistencyCheckJobReplayLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await syncFeatureConsistencyCheckJobReplayLogWithOptions(request as! SyncFeatureConsistencyCheckJobReplayLogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func terminateFeatureConsistencyCheckJobWithOptions(_ FeatureConsistencyCheckJobId: String, _ request: TerminateFeatureConsistencyCheckJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TerminateFeatureConsistencyCheckJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TerminateFeatureConsistencyCheckJob",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(FeatureConsistencyCheckJobId)) + "/action/terminate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TerminateFeatureConsistencyCheckJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func terminateFeatureConsistencyCheckJob(_ FeatureConsistencyCheckJobId: String, _ request: TerminateFeatureConsistencyCheckJobRequest) async throws -> TerminateFeatureConsistencyCheckJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await terminateFeatureConsistencyCheckJobWithOptions(FeatureConsistencyCheckJobId as! String, request as! TerminateFeatureConsistencyCheckJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateABMetricWithOptions(_ ABMetricId: String, _ request: UpdateABMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateABMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.definition)) {
            body["Definition"] = request.definition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.leftMetricId)) {
            body["LeftMetricId"] = request.leftMetricId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operator_)) {
            body["Operator"] = request.operator_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realtime)) {
            body["Realtime"] = request.realtime!;
        }
        if (!TeaUtils.Client.isUnset(request.resultResourceId)) {
            body["ResultResourceId"] = request.resultResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rightMetricId)) {
            body["RightMetricId"] = request.rightMetricId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisticsCycle)) {
            body["StatisticsCycle"] = request.statisticsCycle!;
        }
        if (!TeaUtils.Client.isUnset(request.tableMetaId)) {
            body["TableMetaId"] = request.tableMetaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateABMetric",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/abmetrics/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ABMetricId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateABMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateABMetric(_ ABMetricId: String, _ request: UpdateABMetricRequest) async throws -> UpdateABMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateABMetricWithOptions(ABMetricId as! String, request as! UpdateABMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateABMetricGroupWithOptions(_ ABMetricGroupId: String, _ request: UpdateABMetricGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateABMetricGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ABMetricIds)) {
            body["ABMetricIds"] = request.ABMetricIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realtime)) {
            body["Realtime"] = request.realtime!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateABMetricGroup",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/abmetricgroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ABMetricGroupId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateABMetricGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateABMetricGroup(_ ABMetricGroupId: String, _ request: UpdateABMetricGroupRequest) async throws -> UpdateABMetricGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateABMetricGroupWithOptions(ABMetricGroupId as! String, request as! UpdateABMetricGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCrowdWithOptions(_ CrowdId: String, _ request: UpdateCrowdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCrowdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCrowd",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/crowds/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CrowdId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCrowdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCrowd(_ CrowdId: String, _ request: UpdateCrowdRequest) async throws -> UpdateCrowdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateCrowdWithOptions(CrowdId as! String, request as! UpdateCrowdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEngineConfigWithOptions(_ EngineConfigId: String, _ request: UpdateEngineConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEngineConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configValue)) {
            body["ConfigValue"] = request.configValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEngineConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/engineconfigs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(EngineConfigId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEngineConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEngineConfig(_ EngineConfigId: String, _ request: UpdateEngineConfigRequest) async throws -> UpdateEngineConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateEngineConfigWithOptions(EngineConfigId as! String, request as! UpdateEngineConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateExperimentWithOptions(_ ExperimentId: String, _ request: UpdateExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugCrowdId)) {
            body["DebugCrowdId"] = request.debugCrowdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugUsers)) {
            body["DebugUsers"] = request.debugUsers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowPercent)) {
            body["FlowPercent"] = request.flowPercent!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateExperiment",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateExperiment(_ ExperimentId: String, _ request: UpdateExperimentRequest) async throws -> UpdateExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateExperimentWithOptions(ExperimentId as! String, request as! UpdateExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateExperimentGroupWithOptions(_ ExperimentGroupId: String, _ request: UpdateExperimentGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateExperimentGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crowdId)) {
            body["CrowdId"] = request.crowdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crowdTargetType)) {
            body["CrowdTargetType"] = request.crowdTargetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugCrowdId)) {
            body["DebugCrowdId"] = request.debugCrowdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugUsers)) {
            body["DebugUsers"] = request.debugUsers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionTimeDuration)) {
            body["DistributionTimeDuration"] = request.distributionTimeDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.distributionType)) {
            body["DistributionType"] = request.distributionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            body["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.layerId)) {
            body["LayerId"] = request.layerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needAA)) {
            body["NeedAA"] = request.needAA!;
        }
        if (!TeaUtils.Client.isUnset(request.randomFlow)) {
            body["RandomFlow"] = request.randomFlow!;
        }
        if (!TeaUtils.Client.isUnset(request.reservcedBuckets)) {
            body["ReservcedBuckets"] = request.reservcedBuckets ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateExperimentGroup",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experimentgroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentGroupId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateExperimentGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateExperimentGroup(_ ExperimentGroupId: String, _ request: UpdateExperimentGroupRequest) async throws -> UpdateExperimentGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateExperimentGroupWithOptions(ExperimentGroupId as! String, request as! UpdateExperimentGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFeatureConsistencyCheckJobConfigWithOptions(_ FeatureConsistencyCheckJobConfigId: String, _ request: UpdateFeatureConsistencyCheckJobConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFeatureConsistencyCheckJobConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compareFeature)) {
            body["CompareFeature"] = request.compareFeature!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            body["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetMountPath)) {
            body["DatasetMountPath"] = request.datasetMountPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            body["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetType)) {
            body["DatasetType"] = request.datasetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetUri)) {
            body["DatasetUri"] = request.datasetUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultRoute)) {
            body["DefaultRoute"] = request.defaultRoute ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.easServiceName)) {
            body["EasServiceName"] = request.easServiceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.easyRecPackagePath)) {
            body["EasyRecPackagePath"] = request.easyRecPackagePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.easyRecVersion)) {
            body["EasyRecVersion"] = request.easyRecVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureDisplayExclude)) {
            body["FeatureDisplayExclude"] = request.featureDisplayExclude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureLandingResourceId)) {
            body["FeatureLandingResourceId"] = request.featureLandingResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featurePriority)) {
            body["FeaturePriority"] = request.featurePriority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureStoreItemId)) {
            body["FeatureStoreItemId"] = request.featureStoreItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureStoreModelId)) {
            body["FeatureStoreModelId"] = request.featureStoreModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureStoreProjectId)) {
            body["FeatureStoreProjectId"] = request.featureStoreProjectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureStoreProjectName)) {
            body["FeatureStoreProjectName"] = request.featureStoreProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureStoreSeqFeatureView)) {
            body["FeatureStoreSeqFeatureView"] = request.featureStoreSeqFeatureView ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureStoreUserId)) {
            body["FeatureStoreUserId"] = request.featureStoreUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fgJarVersion)) {
            body["FgJarVersion"] = request.fgJarVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fgJsonFileName)) {
            body["FgJsonFileName"] = request.fgJsonFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generateZip)) {
            body["GenerateZip"] = request.generateZip!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isUseFeatureStore)) {
            body["IsUseFeatureStore"] = request.isUseFeatureStore!;
        }
        if (!TeaUtils.Client.isUnset(request.itemIdField)) {
            body["ItemIdField"] = request.itemIdField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemTable)) {
            body["ItemTable"] = request.itemTable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemTablePartitionField)) {
            body["ItemTablePartitionField"] = request.itemTablePartitionField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemTablePartitionFieldFormat)) {
            body["ItemTablePartitionFieldFormat"] = request.itemTablePartitionFieldFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossResourceId)) {
            body["OssResourceId"] = request.ossResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.predictWorkerCount)) {
            body["PredictWorkerCount"] = request.predictWorkerCount!;
        }
        if (!TeaUtils.Client.isUnset(request.predictWorkerCpu)) {
            body["PredictWorkerCpu"] = request.predictWorkerCpu!;
        }
        if (!TeaUtils.Client.isUnset(request.predictWorkerMemory)) {
            body["PredictWorkerMemory"] = request.predictWorkerMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceConfig)) {
            body["ResourceConfig"] = request.resourceConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sampleRate)) {
            body["SampleRate"] = request.sampleRate!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            body["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchId)) {
            body["SwitchId"] = request.switchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdField)) {
            body["UserIdField"] = request.userIdField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userTable)) {
            body["UserTable"] = request.userTable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userTablePartitionField)) {
            body["UserTablePartitionField"] = request.userTablePartitionField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userTablePartitionFieldFormat)) {
            body["UserTablePartitionFieldFormat"] = request.userTablePartitionFieldFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowName)) {
            body["WorkflowName"] = request.workflowName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFeatureConsistencyCheckJobConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/featureconsistencycheck/jobconfigs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(FeatureConsistencyCheckJobConfigId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFeatureConsistencyCheckJobConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFeatureConsistencyCheckJobConfig(_ FeatureConsistencyCheckJobConfigId: String, _ request: UpdateFeatureConsistencyCheckJobConfigRequest) async throws -> UpdateFeatureConsistencyCheckJobConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFeatureConsistencyCheckJobConfigWithOptions(FeatureConsistencyCheckJobConfigId as! String, request as! UpdateFeatureConsistencyCheckJobConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceResourceWithOptions(_ InstanceId: String, _ ResourceId: String, _ request: UpdateInstanceResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uri)) {
            body["Uri"] = request.uri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstanceResource",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId)) + "/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceResource(_ InstanceId: String, _ ResourceId: String, _ request: UpdateInstanceResourceRequest) async throws -> UpdateInstanceResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateInstanceResourceWithOptions(InstanceId as! String, ResourceId as! String, request as! UpdateInstanceResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLaboratoryWithOptions(_ LaboratoryId: String, _ request: UpdateLaboratoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLaboratoryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bucketCount)) {
            body["BucketCount"] = request.bucketCount!;
        }
        if (!TeaUtils.Client.isUnset(request.bucketType)) {
            body["BucketType"] = request.bucketType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buckets)) {
            body["Buckets"] = request.buckets ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugCrowdId)) {
            body["DebugCrowdId"] = request.debugCrowdId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugUsers)) {
            body["DebugUsers"] = request.debugUsers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            body["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLaboratory",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/laboratories/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(LaboratoryId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLaboratoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLaboratory(_ LaboratoryId: String, _ request: UpdateLaboratoryRequest) async throws -> UpdateLaboratoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateLaboratoryWithOptions(LaboratoryId as! String, request as! UpdateLaboratoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLayerWithOptions(_ LayerId: String, _ request: UpdateLayerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLayerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLayer",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/layers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(LayerId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLayerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLayer(_ LayerId: String, _ request: UpdateLayerRequest) async throws -> UpdateLayerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateLayerWithOptions(LayerId as! String, request as! UpdateLayerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateParamWithOptions(_ ParamId: String, _ request: UpdateParamRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateParamResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            body["Value"] = request.value ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateParam",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/params/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ParamId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateParamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateParam(_ ParamId: String, _ request: UpdateParamRequest) async throws -> UpdateParamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateParamWithOptions(ParamId as! String, request as! UpdateParamRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRecallManagementConfigWithOptions(_ request: UpdateRecallManagementConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRecallManagementConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkConfigs)) {
            body["NetworkConfigs"] = request.networkConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["Password"] = request.password ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRecallManagementConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementconfigs",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRecallManagementConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRecallManagementConfig(_ request: UpdateRecallManagementConfigRequest) async throws -> UpdateRecallManagementConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRecallManagementConfigWithOptions(request as! UpdateRecallManagementConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRecallManagementServiceWithOptions(_ RecallManagementServiceId: String, _ request: UpdateRecallManagementServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRecallManagementServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRecallManagementService",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRecallManagementServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRecallManagementService(_ RecallManagementServiceId: String, _ request: UpdateRecallManagementServiceRequest) async throws -> UpdateRecallManagementServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRecallManagementServiceWithOptions(RecallManagementServiceId as! String, request as! UpdateRecallManagementServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRecallManagementServiceVersionConfigWithOptions(_ RecallManagementServiceId: String, _ RecallManagementServiceVersionId: String, _ RecallManagementServiceVersionConfigId: String, _ request: UpdateRecallManagementServiceVersionConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRecallManagementServiceVersionConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configType)) {
            body["ConfigType"] = request.configType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mergeConfig)) {
            body["MergeConfig"] = request.mergeConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.recallConfig)) {
            body["RecallConfig"] = request.recallConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRecallManagementServiceVersionConfig",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementservices/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceVersionId)) + "/configs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementServiceVersionConfigId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRecallManagementServiceVersionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRecallManagementServiceVersionConfig(_ RecallManagementServiceId: String, _ RecallManagementServiceVersionId: String, _ RecallManagementServiceVersionConfigId: String, _ request: UpdateRecallManagementServiceVersionConfigRequest) async throws -> UpdateRecallManagementServiceVersionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRecallManagementServiceVersionConfigWithOptions(RecallManagementServiceId as! String, RecallManagementServiceVersionId as! String, RecallManagementServiceVersionConfigId as! String, request as! UpdateRecallManagementServiceVersionConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRecallManagementTableWithOptions(_ RecallManagementTableId: String, _ request: UpdateRecallManagementTableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRecallManagementTableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableDataSizeFluctuationThreshold)) {
            body["EnableDataSizeFluctuationThreshold"] = request.enableDataSizeFluctuationThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.enableRowCountFluctuationThreshold)) {
            body["EnableRowCountFluctuationThreshold"] = request.enableRowCountFluctuationThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.indexVersionId)) {
            body["IndexVersionId"] = request.indexVersionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxDataSizeFluctuationThreshold)) {
            body["MaxDataSizeFluctuationThreshold"] = request.maxDataSizeFluctuationThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.maxRowCountFluctuationThreshold)) {
            body["MaxRowCountFluctuationThreshold"] = request.maxRowCountFluctuationThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.minDataSizeFluctuationThreshold)) {
            body["MinDataSizeFluctuationThreshold"] = request.minDataSizeFluctuationThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.minRowCountFluctuationThreshold)) {
            body["MinRowCountFluctuationThreshold"] = request.minRowCountFluctuationThreshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRecallManagementTable",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recallmanagementtables/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RecallManagementTableId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRecallManagementTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRecallManagementTable(_ RecallManagementTableId: String, _ request: UpdateRecallManagementTableRequest) async throws -> UpdateRecallManagementTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRecallManagementTableWithOptions(RecallManagementTableId as! String, request as! UpdateRecallManagementTableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceRuleWithOptions(_ ResourceRuleId: String, _ request: UpdateResourceRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateResourceRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricOperationType)) {
            body["MetricOperationType"] = request.metricOperationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricPullInfo)) {
            body["MetricPullInfo"] = request.metricPullInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricPullPeriod)) {
            body["MetricPullPeriod"] = request.metricPullPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleComputingDefinition)) {
            body["RuleComputingDefinition"] = request.ruleComputingDefinition ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateResourceRule",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resourcerules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceRuleId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateResourceRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceRule(_ ResourceRuleId: String, _ request: UpdateResourceRuleRequest) async throws -> UpdateResourceRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateResourceRuleWithOptions(ResourceRuleId as! String, request as! UpdateResourceRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceRuleItemWithOptions(_ ResourceRuleId: String, _ ResourceRuleItemId: String, _ request: UpdateResourceRuleItemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateResourceRuleItemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxValue)) {
            body["MaxValue"] = request.maxValue!;
        }
        if (!TeaUtils.Client.isUnset(request.minValue)) {
            body["MinValue"] = request.minValue!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            body["Value"] = request.value!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateResourceRuleItem",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resourcerules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceRuleId)) + "/items/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceRuleItemId)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateResourceRuleItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceRuleItem(_ ResourceRuleId: String, _ ResourceRuleItemId: String, _ request: UpdateResourceRuleItemRequest) async throws -> UpdateResourceRuleItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateResourceRuleItemWithOptions(ResourceRuleId as! String, ResourceRuleItemId as! String, request as! UpdateResourceRuleItemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSceneWithOptions(_ SceneId: String, _ request: UpdateSceneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flows)) {
            body["Flows"] = request.flows ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateScene",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/scenes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SceneId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScene(_ SceneId: String, _ request: UpdateSceneRequest) async throws -> UpdateSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSceneWithOptions(SceneId as! String, request as! UpdateSceneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTableMetaWithOptions(_ TableMetaId: String, _ request: UpdateTableMetaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTableMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fields)) {
            body["Fields"] = request.fields ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.module)) {
            body["Module"] = request.module ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTableMeta",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tablemetas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TableMetaId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTableMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTableMeta(_ TableMetaId: String, _ request: UpdateTableMetaRequest) async throws -> UpdateTableMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTableMetaWithOptions(TableMetaId as! String, request as! UpdateTableMetaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrafficControlTargetWithOptions(_ TrafficControlTargetId: String, _ request: UpdateTrafficControlTargetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTrafficControlTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newParam3)) {
            query["new-param-3"] = request.newParam3 ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.event)) {
            body["Event"] = request.event ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemConditionArray)) {
            body["ItemConditionArray"] = request.itemConditionArray ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemConditionExpress)) {
            body["ItemConditionExpress"] = request.itemConditionExpress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemConditionType)) {
            body["ItemConditionType"] = request.itemConditionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newProductRegulation)) {
            body["NewProductRegulation"] = request.newProductRegulation!;
        }
        if (!TeaUtils.Client.isUnset(request.recallName)) {
            body["RecallName"] = request.recallName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisPeriod)) {
            body["StatisPeriod"] = request.statisPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toleranceValue)) {
            body["ToleranceValue"] = request.toleranceValue!;
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            body["Value"] = request.value!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTrafficControlTarget",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltargets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTargetId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTrafficControlTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrafficControlTarget(_ TrafficControlTargetId: String, _ request: UpdateTrafficControlTargetRequest) async throws -> UpdateTrafficControlTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTrafficControlTargetWithOptions(TrafficControlTargetId as! String, request as! UpdateTrafficControlTargetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrafficControlTaskWithOptions(_ TrafficControlTaskId: String, _ request: UpdateTrafficControlTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTrafficControlTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.behaviorTableMetaId)) {
            body["BehaviorTableMetaId"] = request.behaviorTableMetaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.controlGranularity)) {
            body["ControlGranularity"] = request.controlGranularity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.controlLogic)) {
            body["ControlLogic"] = request.controlLogic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.controlType)) {
            body["ControlType"] = request.controlType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectiveSceneIds)) {
            body["EffectiveSceneIds"] = request.effectiveSceneIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionTime)) {
            body["ExecutionTime"] = request.executionTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flinkResourceId)) {
            body["FlinkResourceId"] = request.flinkResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemConditionArray)) {
            body["ItemConditionArray"] = request.itemConditionArray ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemConditionExpress)) {
            body["ItemConditionExpress"] = request.itemConditionExpress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemConditionType)) {
            body["ItemConditionType"] = request.itemConditionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemTableMetaId)) {
            body["ItemTableMetaId"] = request.itemTableMetaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preExperimentIds)) {
            body["PreExperimentIds"] = request.preExperimentIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prodExperimentIds)) {
            body["ProdExperimentIds"] = request.prodExperimentIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceIds)) {
            body["ServiceIds"] = request.serviceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisBaeaviorConditionArray)) {
            body["StatisBaeaviorConditionArray"] = request.statisBaeaviorConditionArray ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisBehaviorConditionArray)) {
            body["StatisBehaviorConditionArray"] = request.statisBehaviorConditionArray ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisBehaviorConditionExpress)) {
            body["StatisBehaviorConditionExpress"] = request.statisBehaviorConditionExpress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisBehaviorConditionType)) {
            body["StatisBehaviorConditionType"] = request.statisBehaviorConditionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlTargets)) {
            body["TrafficControlTargets"] = request.trafficControlTargets ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userConditionArray)) {
            body["UserConditionArray"] = request.userConditionArray ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userConditionExpress)) {
            body["UserConditionExpress"] = request.userConditionExpress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userConditionType)) {
            body["UserConditionType"] = request.userConditionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userTableMetaId)) {
            body["UserTableMetaId"] = request.userTableMetaId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTrafficControlTask",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTaskId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTrafficControlTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrafficControlTask(_ TrafficControlTaskId: String, _ request: UpdateTrafficControlTaskRequest) async throws -> UpdateTrafficControlTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTrafficControlTaskWithOptions(TrafficControlTaskId as! String, request as! UpdateTrafficControlTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrafficControlTaskTrafficWithOptions(_ TrafficControlTaskId: String, _ request: UpdateTrafficControlTaskTrafficRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTrafficControlTaskTrafficResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newParam3)) {
            query["new-param-3"] = request.newParam3 ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            body["Environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traffics)) {
            body["Traffics"] = request.traffics ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTrafficControlTaskTraffic",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trafficcontroltasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrafficControlTaskId)) + "/action/traffic",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTrafficControlTaskTrafficResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrafficControlTaskTraffic(_ TrafficControlTaskId: String, _ request: UpdateTrafficControlTaskTrafficRequest) async throws -> UpdateTrafficControlTaskTrafficResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTrafficControlTaskTrafficWithOptions(TrafficControlTaskId as! String, request as! UpdateTrafficControlTaskTrafficRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadRecommendationDataWithOptions(_ request: UploadRecommendationDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadRecommendationDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            body["DataType"] = request.dataType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadRecommendationData",
            "version": "2022-12-13",
            "protocol": "HTTPS",
            "pathname": "/api/v1/recommendationdata/action/upload",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadRecommendationDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadRecommendationData(_ request: UploadRecommendationDataRequest) async throws -> UploadRecommendationDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await uploadRecommendationDataWithOptions(request as! UploadRecommendationDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
